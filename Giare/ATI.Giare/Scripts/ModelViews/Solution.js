$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');

    $("#txtPostTime").datepicker({
        changeMonth: true,
        changeYear: true
        //:' + new Date().getFullYear()
    });
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function NewsView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListNews = ko.observableArray([]);

    self.Keyword = ko.observable("");
    self.Customer = ko.observable("");
    self.Title = ko.observable("");
    self.Author = ko.observable("");
    self.Image = ko.observable("");
    self.Summary = ko.observable("");
    self.Status = ko.observable(1);
    self.OrderNo = ko.observable(1);
    self.CateId = ko.observable(1);
    self.IsHot = ko.observable(0);

    self.ShowDetail = ko.observable(false);
    self.fcTitle = ko.observable(false);
    self.fcCustomer = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.LangId = ko.observable(0);

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': '/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/ATI',
        'width': '110',
        'height': '40',
        'fileExt': '*.jpg;*.png;*.gif;*.jpe',
        'fileDesc': 'File jpg *.png;*.gif;*.jpe',
        'sizeLimit': '8192000',
        'scriptData': { 'username': "ATI" },
        'onComplete': function (event, queueId, fileObj, response) {
            if (response == "-10") {
                toastr.warning("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (response == "-2") {
                toastr.warning("Bạn hãy tải ảnh có định dạng .doc; .docx; .zip; .7z; .rar; .ppt; .pptx; .pdf; .xls; .xlsx!");
                return;
            }

            self.Image(response.replace(/\"/g, ""));
        },
        'multi': false,
        'auto': true
    });

    $('#EmbbedImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': '/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/ATI',
        'width': '110',
        'height': '40',
        'fileExt': '*.jpg;*.png;*.gif;*.jpe',
        'fileDesc': 'File jpg *.png;*.gif;*.jpe',
        'sizeLimit': '8192000',
        'scriptData': { 'username': "ATI" },
        'onComplete': function (event, queueId, fileObj, response) {
            if (response == "-10") {
                toastr.warning("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (response == "-2") {
                toastr.warning("Bạn hãy tải ảnh có định dạng .doc; .docx; .zip; .7z; .rar; .ppt; .pptx; .pdf; .xls; .xlsx!");
                return;
            }

            CKEDITOR.instances.Content.insertHtml("<img class='img-responsive img-tab-space' src='" + response.replace(/\"/g, "") + "'/>");
        },
        'multi': false,
        'auto': true
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.ShowDetail(true);
        self.Title(item.Title);
        self.Author(item.Author);
        self.Image(item.Image);
        $("#txtPostTime").val(item.PostTime == null ? "" : moment(item.PostTime).format("DD-MM-YYYY"));
        self.Summary(item.Summary);
        CKEDITOR.instances.Content.setData(item.Content);
        self.Status(item.Status);
        self.IsAdd(false);
        self.fcTitle(true);
        self.CateId(item.CateId);
        self.IsHot(item.IsHot);
        self.LangId(item.LangId);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Title("");
        self.Author("");
        self.Image("");
        self.Summary("");
        $("#txtPostTime").val(moment(item.PostTime).format("DD-MM-YYYY"));
        CKEDITOR.instances.Content.setData("");
        self.Status(1);
        self.IsAdd(true);
        self.fcTitle(true);
        self.CateId(1);
        self.IsHot(0);
        self.LangId(0);
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
                News.Delete(item.ID, function (data) {
                    if (data == -2) {
                        toastr.warning("Bài viết \"" + item.Title + "\" đã bị xóa hoặc không tồn tại");
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

        News.Get(self.LangId(), self.Keyword(), 1, currentPage, RecordPerPage, function (data) {
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
        debugger;
        if ($.trim(self.Title()) == "") {
            toastr.warning("Tiêu đề bài viết không được để trống");
            self.fcTitle(true);
            return;
        }

        var postTime = moment(new Date()).format("DD-MM-YYYY");

        //var postTime = $("#txtPostTime").val().replace(/-/g, '/');

        //if (postTime == "") {
        //    $("#txtPostTime").val(moment(item.PostTime).format("DD-MM-YYYY"));
        //    return;
        //}

        //if (postTime != "" && !moment(postTime, "DD/MM/YYYY").isValid()) {
        //    toastr.warning("Thời gian thực hiện bài viết không đúng định dạng ngày/tháng/năm");
        //    return;
        //}

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn ảnh đại diện cho bài viết");
            return;
        }

        if ($.trim(self.Summary()) == "") {
            toastr.warning("Miêu tả tóm tắt bài viết không được để trống");
            self.fcName(true);
            return;
        }

        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Nội dung bài viết không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            News.AddNews(self.Title(), self.Title(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), moment(postTime, "DD/MM/YYYY").format("YYYY-MM-DD"),
                self.Status(), self.CateId(), self.Author(), self.IsHot(), self.LangId(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Bài viết \"" + self.Title() + "\" đã có trong cơ sở dữ liệu");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search(1);
                    self.ShowDetail(false);
                });
        }
        else {
            News.Update(self.ID(), self.Title(), self.Title(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), moment(postTime, "DD/MM/YYYY").format("YYYY-MM-DD"),
                self.Status(), self.CateId(), self.Author(), self.IsHot(), self.LangId(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Bài viết \"" + self.Title() + "\" đã bị xóa hoặc không tồn tại");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search(1);
                    self.ShowDetail(false);
                });
        }
    }

    self.Search(1);
}


var modelView = new NewsView();

ko.applyBindings(modelView)