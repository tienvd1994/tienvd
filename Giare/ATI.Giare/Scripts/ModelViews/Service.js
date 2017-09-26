$(document).ready(function () {
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
    self.Keyword = ko.observable("");

    self.ShowDetail = ko.observable(false);
    self.fcName = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.isUploading = ko.observable(false);
    self.isUploadingContent = ko.observable(false);

    self.changeLang = function () {
        self.Search(1);
    }

    var maxFileLength = 5120000;

    $("#FileUploadImage").fileupload({
        url: "/UploadFile/Upload",
        sequentialUploads: false,
        dataType: "json",
        dropZone: null,
        pasteZone: null,
        add: function (e, data) {
            var file = data.files[0];
            var msg = "";
            if (maxFileLength && file.size > maxFileLength) {
                if (msg.length > 0) {
                    msg += "<br/>";
                }
                msg += "Kích thước tệp lớn hơn kích thước cho phép";
            }

            if (msg !== "") {
                toastr.error(msg);
            } else {
                data.submit();
                self.isUploading(true);
            }
        },
        done: function (e, data) {
            if (data.result == "-10") {
                toastr.warning("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (data.result == "-2") {
                toastr.warning("Bạn hãy tải ảnh có định dạng .jpg; .png, .gif, .jpeg!");
                return;
            }


            self.isUploading(false);
            self.Image(data.result);
        }
    });

    $("#EmbbedImages").fileupload({
        url: "/UploadFile/Upload",
        sequentialUploads: false,
        dataType: "json",
        dropZone: null,
        pasteZone: null,
        add: function (e, data) {
            var file = data.files[0];
            var msg = "";
            if (maxFileLength && file.size > maxFileLength) {
                if (msg.length > 0) {
                    msg += "<br/>";
                }
                msg += "Kích thước tệp lớn hơn kích thước cho phép";
            }

            if (msg !== "") {
                toastr.error(msg);
            } else {
                data.submit();
                self.isUploadingContent(true);
            }
        },
        done: function (e, data) {
            if (data.result == "-10") {
                toastr.warning("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (data.result == "-2") {
                toastr.warning("Bạn hãy tải ảnh có định dạng .jpg; .png, .gif, .jpeg!");
                return;
            }


            self.isUploadingContent(false);
            CKEDITOR.instances.Content.insertHtml("<img class='img-responsive img-tab-space' src='" + data.result + "'/>");
        }
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

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        Service.Get(self.LangId(), self.Keyword(), currentPage, RecordPerPage, function (data) {
            console.log(data);
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListService(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' sản phẩm)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

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

    self.Search(1);
}

var modelView = new ServiceView();

ko.applyBindings(modelView)