$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

function CommonInfoView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.Name = ko.observable("");
    self.EnglishName = ko.observable("");
    self.ShortName = ko.observable("");
    self.Email = ko.observable("");
    self.Address = ko.observable("");
    self.Mobile = ko.observable("");
    self.Phone = ko.observable("");
    self.Fax = ko.observable("");
    self.Summary = ko.observable("");
    self.Facebook = ko.observable("");
    self.Skype = ko.observable("");
    self.Yahoo = ko.observable("");
    self.Logo = ko.observable("");
    self.LogoFooter = ko.observable("");
    self.LangId = ko.observable(0);
    self.fcName = ko.observable(false);
    self.fcPhone = ko.observable(false);
    self.fcAddress = ko.observable(false);
    self.fcSummary = ko.observable(false);
    self.isUploading = ko.observable(false);
    self.isUploadingFooter = ko.observable(false);
    self.Sending = ko.observable(false);
    self.Long = ko.observable(null);
    self.Lat = ko.observable(null);

    self.changeLang = function () {
        self.GetInfo();
    }

    self.GetInfo = function () {
        CommonInfo.Get(self.LangId(), function (data) {

            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                return;
            }

            self.Name(data.Name);
            self.EnglishName(data.EnglishName);
            self.ShortName(data.ShortName);
            self.Email(data.Email);
            self.Mobile(data.Mobile);
            self.Phone(data.Phone);
            self.Fax(data.Fax);
            self.Summary(data.Summary);
            self.Facebook(data.Facebook);
            self.Yahoo(data.Yahoo);
            self.Skype(data.Skype);
            self.Address(data.HeadOffice);
            self.Logo(data.Logo);
            self.LogoFooter(data.Logo2);
            self.Long(data.Long);
            self.Lat(data.Lang);
        });
    }

    self.Update = function () {
        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên công ty không được để trống");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Phone()) == "") {
            toastr.warning("Số điện thoại của công ty không được để trống");
            self.fcPhone(true);
            return;
        }

        if ($.trim(self.Address()) == "") {
            toastr.warning("Địa chỉ công ty không được để trống");
            self.fcAddress(true);
            return;
        }

        if ($.trim(self.Summary()) == "") {
            toastr.warning("Thông tin giới thiệu tổng quan về công ty không được để trống");
            self.fcSummary(true);
            return;
        }

        self.Sending(true);

        CommonInfo.Update($.trim(self.Name()), $.trim(self.EnglishName()), $.trim(self.Email()), $.trim(self.Phone()), $.trim(self.Mobile()), $.trim(self.Fax()),
            $.trim(self.Address()), $.trim(self.Address()), $.trim(self.Address()), $.trim(self.Address()), $.trim(self.Facebook()),
            $.trim(self.Skype()), $.trim(self.Summary()), $.trim(self.Summary()), $.trim(self.ShortName()), self.LangId(), self.Logo(), self.LogoFooter(), self.Long(), self.Lat(), function (data) {

                self.Sending(false);

                if (data == -1) {
                    toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                    window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
            });
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
            self.Logo(data.result);
        }
    });

    $("#FileUploadImageFooter").fileupload({
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
                self.isUploadingFooter(true);
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

            self.isUploadingFooter(false);
            self.LogoFooter(data.result);
        }
    });
}

var modelView = new CommonInfoView();

ko.applyBindings(modelView)