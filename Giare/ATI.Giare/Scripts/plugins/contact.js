
function ContactModel() {
    var self = this;

    self.FullName = ko.observable("");
    self.Email = ko.observable("");
    self.Email1 = ko.observable("");
    self.Mobile = ko.observable("");
    self.Company = ko.observable("");
    self.Message = ko.observable("");
    self.Position = ko.observable("");
    self.IsSubscribe = ko.observable(2);
    self.fcFullName = ko.observable(false);
    self.fcEmail = ko.observable(false);
    self.fcEmail1 = ko.observable(false);
    self.fcMobile = ko.observable(false);
    self.fcCompany = ko.observable(false);
    self.fcMessage = ko.observable(false);
    self.vsSend = ko.observable(true);
    self.fcPosition = ko.observable(false);

    self.RecordPerPage = 10;

    self.UserName = ko.observable("");
    self.Password = ko.observable("");
    self.fcUserName = ko.observable(true);
    self.fcPassword = ko.observable(false);

    self.SendMessage = function () {
        if ($.trim(self.FullName()) == "") {
            alert("Mời bạn nhập họ và tên người liên hệ");
            self.fcFullName(true);
            return;
        }

        if ($.trim(self.Email()) == "") {
            alert("Địa chỉ Email không được để trống");
            self.fcEmail(true);
            return;
        }


        if (!CheckEmailFormat($.trim(self.Email()))) {
            alert("Email không đúng định dạng");
            self.fcEmail(true);
            return;
        }

        if ($.trim(self.Mobile()) == "") {
            alert("Số điện thoại liên hệ không được để trống");
            self.fcMobile(true);
            return;
        }

        if ($.trim(self.Company()) == "") {
            alert("Hãy nhập tên công ty, tổ chức của bạn");
            self.fcCompany(true);
            return;
        }

        if ($.trim(self.Position()) == "") {
            alert("Hãy chức danh của bạn tại công ty, tổ chức");
            self.fcPosition(true);
            return;
        }

        if ($.trim(self.Message()) == "") {
            alert("Mời bạn nhập nội dung yêu cầu");
            self.fcMessage(true);
            return;
        }

        $("#loading").show();
        self.vsSend(false);
        $.getJSON("/Home/SendMessage", {
            fullName: $.trim(self.FullName()), email: $.trim(self.Email()), mobile: $.trim(self.Mobile()), company: $.trim(self.Company()),
            content: $.trim(self.Message()), subscribe: self.IsSubscribe(), position: $.trim(self.Position())
        }, function (data) {
            $("#loading").hide();
            self.vsSend(true);

            if (data < 0) {
                alert("Địa chỉ Email không đúng định dạng");
                self.fcEmail(true);
                return;
            }

            alert("Cảm ơn bạn đã liên hệ quan tâm Phần mềm ATI KPI™.\nChúng tôi sẽ liên lạc sớm với bạn");
            self.FullName("");
            self.Email("");
            self.Mobile("");
            self.Company("");
            self.Message("");
            self.IsSubscribe(2);
        });
    };

    self.Subscribe = function () {
        if ($.trim(self.Email1()) == "") {
            alert("Địa chỉ Email không được để trống");
            self.fcEmail1(true);
            return;
        }

        if ($.trim(self.Email1()).indexOf('@') < 0) {
            alert("Email không đúng định dạng");
            self.fcEmail1(true);
            return;
        }

        $("#loading").show();
        $.getJSON("/Home/SendMessage", { fullName: "", email: $.trim(self.Email1()), mobile: "", company: "", content: "", subscribe: 1 }, function (data) {
            $("#loading").hide();

            if (data < 0) {
                alert("Địa chỉ Email không đúng định dạng");
                self.fcEmail(true);
                return;
            }

            alert("Cảm ơn bạn đã quan tâm Phần mềm ATI KPI™.\nChúng tôi sẽ thông báo tới bạn khi có thông tin mới");
        });
    };

    self.Login = function () {

        if ($.trim(self.UserName()) == "") {
            alert("Mã đăng không được để trống");
            self.fcUserName(true);
            return;
        }

        if ($.trim(self.Password()) == "") {
            alert("Mật khẩu không được để trống");
            self.fcPassword(true);
            return;
        }

        if ($.trim(self.Password()).length < 6) {
            alert("Độ dài mật khẩu không được dưới 6 ký tự");
            self.fcPassword(true);

            return;
        }

        $("#loading").show();

        $.getJSON("/Home/DoLogin", { code: $.trim(self.UserName()), pwd: hex_md5(hex_md5(hex_md5($.trim(self.Password())) + "123456")) }, function (data) {
            if (data != null) {
                $("#loading").hide("1000");

                if (data == -2) {
                    alert("Thông tin tài khoản không đúng!");
                    self.fcUserName(true);
                    return;
                }

                if (data == -3) {
                    alert("Mật khẩu không đúng!");
                    self.fcPassword(true);
                    return;
                }

                if (data > 0) {
                    window.location.href = "/cms";
                }
            }
        });
    };

    $(".form-control").tooltip({ placement: 'top' });
}

var contact = new ContactModel();
ko.applyBindings(contact);

function TextKepress(myfield, e, dec) {
    var key;
    var keychar;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if (key == 13) {
        contact.Login();
    }

    return true;
}

function CheckEmailFormat(email) {
    var regex = new RegExp("^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");

    return regex.test($.trim(email));
};