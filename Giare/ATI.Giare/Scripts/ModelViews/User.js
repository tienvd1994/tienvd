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

function UserView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListUser = ko.observableArray([]);
    self.FullName = ko.observable("");
    self.Image = ko.observable("");
    self.UserName = ko.observable("");
    self.Title = ko.observable("");
    self.Status = ko.observable(1);
    self.Password = ko.observable("");
    self.ShowDetail = ko.observable(false);
    self.fcFullName = ko.observable(false);
    self.fcUserName = ko.observable(false);
    self.fcPassword = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.isUploading = ko.observable(false);
    self.Keyword = ko.observable("");

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
            //toastr.success(resources.salesCall.customer.message.uploadFileSucc);
        }
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.ShowDetail(true);
        self.FullName(item.FullName);
        self.Image(item.Image);
        self.Title(item.Title);
        self.Status(item.Status);
        self.UserName(item.UserName);

        self.IsAdd(false);
        self.fcFullName(true);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.FullName("");
        self.Image("");
        self.Title("");
        self.Status(1);
        self.Password("");
        self.IsAdd(true);
        self.fcFullName(true);
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
                User.Delete(item.ID, item.FullName, function (data) {
                    if (data == -2) {
                        toastr.warning("User \"" + item.FullName + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListUser.remove(item);
                });
            }
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        User.Get(self.Keyword(), currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/du-an";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListUser(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' người dùng)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {
        if ($.trim(self.FullName()) == "") {
            toastr.warning("Họ và tên người dùng không được để trống");
            self.fcFullName(true);
            return;
        }

        if ($.trim(self.UserName()) == "") {
            toastr.warning("Tên đăng nhập không được để trống");
            self.fcUserName(true);
            return;
        }



        if (self.IsAdd()) {

            if ($.trim(self.Password()) == "") {
                toastr.warning("Mật khẩu đăng nhập không được để trống");
                self.fcPassword(true);
                return;
            }

            if ($.trim(self.Password()).length < 6) {
                toastr.warning("Mật khẩu đăng không được dưới 6 ký tự");
                self.fcPassword(true);
                return;
            }

            self.Sending(true);
            User.AddUser(self.FullName(), self.UserName(), self.Title(), hex_md5(hex_md5(self.Password())), self.Image(), self.Status(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Tên đăng nhập \"" + self.UserName() + "\" đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
                self.ShowDetail(false);
                self.Search(1);
            });
        }
        else {
            self.Sending(true);

            User.Update(self.ID(), self.FullName(), self.UserName(), self.Title(), hex_md5(hex_md5(self.Password())), self.Image(), self.Status(), function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Tên đăng nhập \"" + self.UserName() + "\" đã bị xóa hoặc không tồn tại");

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

var modelView = new UserView();

ko.applyBindings(modelView)