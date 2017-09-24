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
var RecordPerPage = 20;

function NewsView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListContact = ko.observableArray([]);
    self.Type = ko.observable("");
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);

    self.UpdateStatus = function (item) {
        Contact.UpdateStatus(item.ID, function (data) {
            if (data == -2) {
                toastr.warning("Liên hệ của khách hàng \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                return;
            }

            toastr.success("Đã lưu thông tin thành công");

            self.Search(1);
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        Contact.Get(self.Type(), currentPage, RecordPerPage, function (data) {
            debugger;
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/lien-he";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListContact(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' liên hệ)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Search(1);
}

var modelView = new NewsView();

ko.applyBindings(modelView)