﻿$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function ServiceView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.LangId = ko.observable(0);
    self.ListService = ko.observableArray([]);
    self.Name = ko.observable("");
    self.Image = ko.observable("");
    self.Summary = ko.observable("");

    self.ShowDetail = ko.observable(false);
    self.fcName = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);

    self.changeLang = function () {
        self.Search();
    }

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': '/UploadFile/Upload',
        'buttonImg': '/Scripts/upload-icon.png',
        'cancelImg': '/Scripts/cancel-icon.png',
        'folder': '/Uploads',
        'width': '110',
        'height': '40',
        'fileExt': '*.jpg;*.png;*.gif;*.jpe',
        'fileDesc': 'File jpg *.png;*.gif;*.jpe',
        'sizeLimit': '8192000',
        'scriptData': { 'username': "viethanettsc" },
        'onComplete': function (event, queueId, fileObj, response) {
            if (response == "-10") {
                toastr.warning("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (response == "-2") {
                toastr.warning("Bạn hãy tải ảnh có định dạng .doc; .docx; .zip; .7z; .rar; .ppt; .pptx; .pdf; .xls; .xlsx!");
                return;
            }

            self.Image(response.replace(/\"/g, ""));
        },
        'multi': false,
        'auto': true
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.LangId(item.LangId);
        self.ShowDetail(true);
        self.Name(item.Name);
        self.Image(item.Image);
        self.Summary(item.Summary);
        CKEDITOR.instances.Content.setData(item.Content);
        self.IsAdd(false);
        self.fcName(true);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Name("");
        self.Image("");
        self.Summary("");
        self.LangId(0);
        CKEDITOR.instances.Content.setData("");
        self.IsAdd(true);
        self.fcName(true);
    }

    self.Delete = function (item) {
        swal({
            title: "Xác nhận xóa",
            text: "Bạn có chắc chắn muốn xóa không?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: "Xóa",
            cancelButtonText: "Hủy",
            closeOnConfirm: true,
            animation: false,
        }, function (isConfirm) {
            if (isConfirm) {
                Service.Delete(item.ID, function (data) {
                    if (data == -2) {
                        toastr.warning("Dịch vụ \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    if (data > 0) {
                        debugger;
                        toastr.success("Đã xóa thành công");
                        self.ListService.remove(item);
                        return;
                    }
                });
            }
        });
    }

    self.Search = function () {
        Service.Get(self.LangId(), function (data) {
            console.log(data);
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                return;
            }

            self.ListService(data);
        });
    }

    self.Update = function () {

        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên sản phẩm không được để trống");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn ảnh sản phẩm");
            return;
        }

        if ($.trim(self.Summary()) == "") {
            toastr.warning("Miêu tả tóm tắt sản phẩm không được để trống");
            self.fcName(true);
            return;
        }

        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Chi tiết về sản phẩm không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            Service.AddService(self.Name(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), self.LangId(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Dịch vụ \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.Search(1);
            });
        }
        else {
            Service.Update(self.ID(), self.Name(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), self.LangId(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Dịch vụ \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.Search(1);
            });
        }
    }

    self.Search();
}

var modelView = new ServiceView();

ko.applyBindings(modelView)