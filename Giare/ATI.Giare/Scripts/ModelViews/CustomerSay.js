$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function NewsView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListCustomerSay = ko.observableArray([]);
    self.FullName = ko.observable("");
    self.Title = ko.observable("");
    self.Company = ko.observable("");
    self.OrderNo = ko.observable(1);
    self.Image = ko.observable("");
    self.Summary = ko.observable("");

    self.ShowDetail = ko.observable(false);
    self.fcFullName = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.LangId = ko.observable(0);

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': '/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/Uploads',
        'width': '110',
        'height': '40',
        'fileExt': '*.jpg;*.png;*.gif;*.jpe',
        'fileDesc': 'File jpg *.png;*.gif;*.jpe',
        'sizeLimit': '8192000',
        'scriptData': { 'username': "ATI" },
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
        self.ShowDetail(true);
        self.FullName(item.FullName);
        self.LangId(item.LangId);
        self.Title(item.Title);
        self.Image(item.Image);
        self.Summary(item.Content);
        self.Company(item.Company);
        self.IsAdd(false);
        self.fcFullName(true);
        self.OrderNo(item.OrderNo);
        self.LangId(item.LangId);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Title("");
        self.FullName("");
        self.Image("");
        self.Summary("");
        self.LangId(0);
        self.Company("");
        self.IsAdd(true);
        self.fcFullName(true);
        self.OrderNo(1);
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
                CustomerSay.Delete(item.ID, function (data) {
                    if (data == -2) {
                        toastr.warning("Nhận xét của \"" + item.FullName + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListCustomerSay.remove(item);
                });
            }
        });
    }

    self.changeLangId = function () {
        self.Search(1);
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        CustomerSay.Get(self.LangId(), currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/customer";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListCustomerSay(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' bài viết)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {

        if ($.trim(self.FullName()) == "") {
            toastr.warning("Họ và tên khách hàng không được để trống");
            return;
        }

        //if ($.trim(self.Summary()) == "") {
        //    toastr.warning("Nội dung nhận xét không được để trống");
        //    return;
        //}

        self.Sending(true);

        if (self.IsAdd()) {
            CustomerSay.AddNews(self.FullName(), self.Title(), self.Company(), self.Summary(), self.OrderNo(), self.Image(), self.LangId(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Nhận xét của \"" + self.FullName() + "\" đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.Search(1);
                self.ShowDetail(false);
            });
        }
        else {
            CustomerSay.Update(self.ID(), self.FullName(), self.Title(), self.Company(), self.Summary(), self.OrderNo(), self.Image(), self.LangId(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Nhận xét của \"" + self.FullName() + "\" đã bị xóa hoặc không tồn tại");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.Search(1);
                self.ShowDetail(false);
            });
        }
    }

    self.Search(1);
}

var modelView = new NewsView();

ko.applyBindings(modelView)