function LoginView() {
    var self = this;

    self.UserName = ko.observable("");
    self.Password = ko.observable("");
    self.fcPassword = ko.observable(false);
    self.fcUserName = ko.observable(true);
    self.Sending = ko.observable(false);

    self.Login = function () {
        console.log("$.trim(self.UserName())", $.trim(self.UserName()));
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
            toastr.warning("Mật khẩu đăng nhập không được nhỏ hơn 6 ký tự");
            self.fcPassword(true);

            return;
        }

        self.Sending(true);
        Login.DoLogin($.trim(self.UserName()), $.trim(self.Password()), function (data) {
            self.Sending(false);

            if (data == -1) {
                toastr.warning("Bạn vui lòng đăng nhập lại");
                window.location.reload();
                return;
            }

            if (data == -2) {
                toastr.warning("Tên đăng nhập không đúng");
                self.fcUserName(true);
                return;
            }

            if (data == -3) {
                toastr.warning("Mật khẩu đăng nhập không đúng");
                self.fcPassword(true);
                return;
            }

            if (data == -4) {
                toastr.warning("Có gì đó không đúng, bạn vui lòng liên hệ kỹ thuật để được trợ giúp");
                self.fcPassword(true);
                return;
            }

            if ($("#remember:checked").length) {
                $.cookie('_code', $.trim(self.UserName()), { expires: 30 });
                $.cookie('_emm', data, { expires: 30 });
            }
            else {
                $.cookie('_code', null);
                $.cookie('_emm', null);
            }

            toastr.success("Đã đăng nhập thành công");

            window.location.href = url == "" ? "/cms" : url;
        });
    }
}

var modelView = new LoginView();

ko.applyBindings(modelView)

function DoLogin() {
    modelView.Login();
}

function EnterPress(data, event) {
    if (event.keyCode == 13) {
        DoLogin();
    }

    return true;
};