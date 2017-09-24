var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function UserView() {
    var self = this;

    self.ListUser = ko.observableArray([]);
    self.UserName = ko.observable(userName);
    self.Password = ko.observable("");

    self.fcUserName = ko.observable(false);
    self.fcPassword = ko.observable(false);
    self.Sending = ko.observable(false);

    self.Update = function () {

        if ($.trim(self.UserName()) == "") {
            toastr.warning("Tên đăng nhập không được để trống");
            self.fcUserName(true);
            return;
        }


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
        User.ChangePassword(self.UserName(), hex_md5(hex_md5(self.Password())), function (data) {

            self.Sending(false);

            if (data == -2) {
                toastr.warning("Tên đăng nhập \"" + self.UserName() + "\" không có trong cơ sở dữ liệu");

                return;
            }

            toastr.success("Đã đổi mật khẩu thành công");
        });
    }
}

var modelView = new UserView();

ko.applyBindings(modelView)