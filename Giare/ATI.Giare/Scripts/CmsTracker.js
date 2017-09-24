var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 20;

function TrackerModel() {
    var self = this;

    self.Browser = ko.observable("");
    self.UrlReferrer = ko.observable("");
    self.Session = ko.observable("");
    self.PageUrl = ko.observable("");
    self.Version = ko.observable("");
    self.OS = ko.observable("");
    self.IP = ko.observable("");
    self.Country = ko.observable("");
    self.City = ko.observable("");
    self.Trackers = ko.observableArray([]);

    self.BasicSearch = function () {
        self.Browser("");
        self.PageUrl("");
        self.Version("");
        self.OS("");
        self.Country("");
        self.City("");

        self.Search(1);
    };

    self.Search = function (currentPage) {
        CurrentPage = currentPage;
        console.log(currentPage)
        $('#myModal').modal("hide");
        $("#loading").show();
        $.getJSON("/CMS/SearchTracker", {browser: self.Browser(),  session: self.Session(), version:self.Version(), oS:self.OS(), pageUrl: self.PageUrl(),
            urlReferrer:self.UrlReferrer, iP:self.IP(), country:self.Country(), city: self.City(), pageIndex: currentPage, recordPerPage: RecordPerPage
        }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi xem thông tin");
                window.location.href = "/dang-nhap";
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.Trackers(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' lượt truy cập)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    };

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.AdvanceSearch = function () {
        $('#myModal').modal("show");
    };

    self.BasicSearch();
}

ko.applyBindings(new TrackerModel());