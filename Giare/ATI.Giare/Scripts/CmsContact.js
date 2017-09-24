var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function CMSModel() {
    var self = this;

    self.IsSubscribe = ko.observable(7);
    self.FullName = ko.observable("");
    self.Email = ko.observable("");
    self.Company = ko.observable("");
    self.Message = ko.observable("");
    self.Status = ko.observable(7);
    self.Mobile = ko.observable("");
    self.IP = ko.observable("");
    self.Country = ko.observable("");
    self.City = ko.observable("");
    self.Contacts = ko.observableArray([]);
    self.Contact = ko.observableArray([]);

    self.BasicSearch = function () {
        self.IsSubscribe(7);
        self.Message("");
        self.Status(7);
        self.IP("");
        self.Country("");
        self.City("");
        self.Mobile("");

        self.Search(1);
    };

    self.Search = function (currentPage) {
        debugger;
        CurrentPage = currentPage;
        $('#myModal').modal("hide");
        $("#loading").show();
        $.getJSON("/CMS/SearchContact", {
            isSubscribe: self.IsSubscribe(), email: self.Email(), mobile: self.Mobile(), company: self.Company(), name: self.FullName(), message: self.Message(),
            status: self.Status(), iP: self.IP(), oS: "", browser: "", session: "", country: self.Country(), city: self.City(), pageIndex: currentPage, recordPerPage: RecordPerPage
        }, function (data) {
            $("#loading").hide();
            
            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi xem thông tin");
                window.location.href = "/dang-nhap";
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.Contacts(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' khách hàng liên hệ)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    };

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.UpdateStatus = function (id, status) {
        if (status == 1) {
            return;
        }

        $("#loading").show();
        $.getJSON("/CMS/UpdateContactStatus", { id: id, status: 1 }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi đánh dấu liên hệ cũ");
                window.location.href = "/dang-nhap";
            }

            alert("Đã sửa trạng thái liên hệ thành liên hệ cũ");
            self.Search(CurrentPage);
        });
    };

    self.AdvanceSearch = function () {
        $('#myModal').modal("show");
    };

    self.ShowDetail = function (item) {
        self.Contact(item);
        $('#Contact').modal("show");
    };

    self.BasicSearch();
}

ko.applyBindings(new CMSModel());