var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function NewsView() {
    var self = this;
    self.IsSmartPhone450 = ko.observable(true);
    self.Id = ko.observable(-1);
    self.Name = ko.observable("");
    self.Name_En = ko.observable("");
    self.Image = ko.observable("");
    self.Url = ko.observable("");
    self.Status = ko.observable("");
    self.LangId = ko.observable(0);
    self.Keyword = ko.observable("");
    self.isUploading = ko.observable(false);
    self.ListNews = ko.observableArray([]);
    self.ShowDetail = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.Sending = ko.observable(false);
    self.Title = ko.observable("");
    self.Summary = ko.observable("");

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
        self.ShowDetail(true);
        self.IsAdd(false);
        self.Id(item.Id);
        self.Name(item.Name);
        self.Name_En(item.Name_En);
        self.Image(item.Image);
        self.Url(item.Url);
        self.Status(item.Status);
        self.LangId(item.LangId);
        self.Title(item.Title);
        self.Summary(item.Summary);
    }

    self.ShowAddForm = function (item) {
        self.ShowDetail(true);
        self.IsAdd(true);
        self.Id(-1);
        self.Name("");
        self.Name_En("");
        self.Image("");
        self.Url("");
        self.Status("");
        self.LangId("");
        self.Title("");
        self.Summary("");
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
                $.post("/CMS/DeleteConfigSlide", { id: item.Id }, function (data) {
                    if (data == -2) {
                        toastr.warning("Bản ghi đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListNews.remove(item);
                });
            }
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        $.get("/CMS/SearchConfigSlide", { langId: self.LangId(), keyword: self.Keyword(), pageIndex: currentPage, pageSize: RecordPerPage }, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/tin-tuc";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListNews(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' bài viết)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {
        if ($.trim(self.Url()) == "") {
            toastr.warning("Url không được để trống");
            return;
        }

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn ảnh đại diện");
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            $.post("/CMS/AddConfigSlide", { Name: self.Name(), Name_En: self.Name_En(), Image: self.Image(), Url: self.Url, Status: self.Status(), LangId: self.LangId(), Title: self.Title(), Summary: self.Summary() }, function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Bản ghi đã có trong cơ sở dữ liệu");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
                self.Search(1);
                self.ShowDetail(false);
            });
        }
        else {
            $.post("/CMS/UpdateConfigSlide", { Id: self.Id(), Name: self.Name(), Name_En: self.Name_En(), Image: self.Image(), Url: self.Url, Status: self.Status(), LangId: self.LangId(), Title: self.Title(), Summary: self.Summary() }, function (data) {

                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Bản ghi đã bị xóa hoặc không tồn tại");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");
                self.Search(1);
                self.ShowDetail(false);
            });
        }
    }

    self.changeLang = function () {
        self.Search(1);
    }

    self.Search(1);
}


var modelView = new NewsView();

ko.applyBindings(modelView)