$(document).on('focusin', function (e) {
    e.stopImmediatePropagation();
});

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function CateNewView() {
    var self = this;
    self.Keyword = ko.observable("");
    self.ID = ko.observable(-1);
    self.Name = ko.observable("");
    self.EnglishName = ko.observable("");
    self.OrderNo = ko.observable(1);
    self.LangId = ko.observable(0);
    self.ListCateNews = ko.observableArray([]);
    self.ShowDetail = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);

    self.changeLang = function () {
        self.Search(1);
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        $.get("/cms/SearchCateNews", { langId: self.LangId(), type: 0, key: self.Keyword(), pageIndex: CurrentPage, recordPerPage: RecordPerPage }, function (data) {
            if (data === -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/catenews";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListCateNews(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' bản ghi)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.ShowAddForm = function () {
        self.ShowDetail(true);
        self.ID(-1);
        self.Name("");
        self.EnglishName("");
        self.OrderNo(1);
        self.LangId(0);
    }

    self.SetUpdate = function (item) {
        self.ShowDetail(true);
        self.ID(item.ID);
        self.Name(item.Name);
        self.EnglishName(item.EnglishName);
        self.OrderNo(item.OrderNo);
        self.IsAdd(false);
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
                $.post('/CMS/DeletCateNews', { id: item.ID }, function (data) {
                    if (data == -1) {
                        toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                        window.location.href = "/dang-nhap?u=/cms/nhom-du-an";
                        return;
                    }

                    if (data == -2) {
                        toastr.warning("Bản ghi đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");
                    self.ListCateNews.remove(item);
                });
            }
        });
    }

    self.Update = function () {
        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên không được để trống");
            self.fcName(true);
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            $.post('/CMS/AddCateNews', { Name: self.Name(), EnglishName: self.Name(), OrderNo: self.OrderNo(), LangId: self.LangId(), Type: 0 }, function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Bản ghi đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.ShowDetail(false);
                self.Search(1);
            });
        }
        else {
            $.post('/CMS/UpdateCateNews', { ID: self.ID(), Name: self.Name(), EnglishName: self.Name(), OrderNo: self.OrderNo(), LangId: self.LangId(), Type: 0 },
                function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Bản ghi đã bị xóa hoặc không tồn tại");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");
                    self.ShowDetail(false);
                    self.Search(CurrentPage);
                });
        }
    }

    self.Search(1);
}

var modelView = new CateNewView();
ko.applyBindings(modelView);