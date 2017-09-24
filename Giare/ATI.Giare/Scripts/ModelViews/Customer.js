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
var RecordPerPage = 15;

function CustomerView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListCustomer = ko.observableArray([]);
    self.Name = ko.observable("");
    self.Image = ko.observable("");
    self.OrderNo = ko.observable(1);
    self.Title = ko.observable("");
    self.Status = ko.observable(1);
    self.Password = ko.observable("");
    self.ShowDetail = ko.observable(false);
    self.fcName = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/ATI',
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

            self.Image('http://cdn.quancafe.vn/z_144x144' + response.replace(/\"/g, ""));
        },
        'multi': false,
        'auto': true
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.ShowDetail(true);

        self.Name(item.Name);
        self.Image(item.Image);
        self.OrderNo(item.OrderNo);
        self.Status(item.Status);

        self.IsAdd(false);
        self.fcName(true);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);

        self.Name("");
        self.Image("");
        self.OrderNo(1);
        self.Status(1);

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
                User.Delete(item.ID, item.Name, function (data) {
                    if (data == -2) {
                        toastr.warning("Khách hàng \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListCustomer.remove(item);
                });
            }
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        User.Get(currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/khach-hang-tieu-bieu";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListCustomer(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' khách hàng)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {

        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên khách hàng không được để trống");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn logo của khách hàng");

            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {

            User.AddCustomer(self.Name(), self.Image(), self.Status() == 1, self.OrderNo(), "", function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Khách hàng \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
                self.ShowDetail(false);
                self.Search(1);
            });
        }
        else {
            User.Update(self.ID(), self.Name(), self.Image(), self.Status() == 1, self.OrderNo(), "", function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Khách hàng \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
                self.ShowDetail(false);
                self.Search(1);
            });
        }
    }

    self.Search(1);
}

var modelView = new CustomerView();

ko.applyBindings(modelView)