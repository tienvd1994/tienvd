
function ContactModel() {
    var self = this;

    self.FullName = ko.observable("");
    self.Email = ko.observable("");
    self.Mobile = ko.observable("");
    self.Company = ko.observable("");
    self.Message = ko.observable("");
    self.Title = ko.observable("");
    self.Address = ko.observable("");
    self.Type = ko.observable("Mua sản phẩm");

    self.fcName = ko.observable(false);
    self.fcEmail = ko.observable(false);
    self.fcMobile = ko.observable(false);
    self.fcMessage = ko.observable(false);
    self.vsSend = ko.observable(true);
    self.fcPosition = ko.observable(false);

    self.Sending = ko.observable(false);

    self.UserName = ko.observable("");
    self.Password = ko.observable("");

    self.SendMessage = function () {
        if (!$('#contact-form').valid()) {
            return;
        }

        if ($.trim(self.FullName()) == "") {
            toastr.warning("Mời bạn nhập họ và tên người liên hệ");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Email()) == "") {
            toastr.warning("Địa chỉ Email không được để trống");
            self.fcEmail(true);
            return;
        }


        if (!CheckEmailFormat($.trim(self.Email()))) {
            toastr.warning("Email không đúng định dạng");
            self.fcEmail(true);
            return;
        }

        if ($.trim(self.Mobile()) == "") {
            toastr.warning("Số điện thoại liên hệ không được để trống");
            self.fcMobile(true);
            return;
        }

        if ($.trim(self.Message()) == "") {
            toastr.warning("Mời bạn nhập nội dung liên hệ");
            self.fcMessage(true);
            return;
        }

        self.Sending(true);
        $.getJSON("/Home/SendContact", {
            name: $.trim(self.FullName()), type: self.Type(), mobile: $.trim(self.Mobile()), email: $.trim(self.Email()), company: $.trim(self.Company()),
            message: $.trim(self.Message()), address: self.Address(), title: $.trim(self.Title())
        }, function (data) {
            debugger;
            self.Sending(false);
            toastr.success("Cảm ơn bạn đã gửi thông tin liên hệ.\nChúng tôi sẽ liên lạc sớm với bạn");
            self.FullName("");
            self.Email("");
            self.Mobile("");
            self.Company("");
            self.Message("");
        });
    };
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