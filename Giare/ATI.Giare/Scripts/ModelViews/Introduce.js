$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function IntroduceView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);
    self.Introduces = ko.observableArray([]);
    self.Introduce = ko.observable();
    self.Sending = ko.observable(false);
    self.ShowDetail = ko.observable(false);
    self.LangId = ko.observable(0);
    self.ID = ko.observable(-1);
    self.Keyword = ko.observable("");
    self.Title = ko.observable("");
    self.IsAdd = ko.observable(true);

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/ATI',
        'width': '125',
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

            CKEDITOR.instances.Content.insertHtml("<img class='img-responsive img-tab-space' src='" + "http://cdn.quancafe.vn/z_650x0" + response.replace(/\"/g, "") + "'/>");
        },
        'multi': false,
        'auto': true
    });

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        $.get("/CMS/SearchIntroduce", { langId: self.LangId(), key: self.Keyword(), pageIndex: CurrentPage, recordPerPage: RecordPerPage }, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/tin-tuc";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.Introduces(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' bài viết)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {
        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Nội dung không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            $.post("/CMS/AddIntroduce", { Id: self.ID(), Title: self.Title(), Content: CKEDITOR.instances.Content.getData(), ContentEn: CKEDITOR.instances.Content.getData() }, function (data) {
                self.Sending(false);

                if (data == -1) {
                    toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                    window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                    return;
                }

                if (data > 0) {
                    toastr.success("Đã lưu thông tin thành công");

                    self.ShowDetail(false);
                    self.Search(1);
                }
            });
        }
        else {
            $.post("/CMS/UpdateIntroduce", { Id: self.ID(), Title: self.Title(), Content: CKEDITOR.instances.Content.getData(), ContentEn: CKEDITOR.instances.Content.getData() }, function (data) {
                self.Sending(false);

                if (data == -1) {
                    toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                    window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                    return;
                }

                self.ShowDetail(false);
                self.Search(1);
                toastr.success("Đã lưu thông tin thành công");
            });
        }
    }

    self.ShowAddForm = function () {
        self.ShowDetail(true);
        CKEDITOR.instances.Content.setData("");
        self.ID(-1);
        self.Title("");
    }

    self.SetUpdate = function (item) {
        self.ShowDetail(true);
        self.IsAdd(false);
        self.ID(item.ID);
        CKEDITOR.instances.Content.setData(item.Content);
        self.Title(item.Title);
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
                $.post("/CMS/DeleteIntroduce", { id: item.ID }, function (data) {
                    if (data == -1) {
                        toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                        window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                        return;
                    }

                    if (data == -2) {
                        toastr.warning("Bản ghi \"" + item.Title + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");
                    self.Introduces.remove(item);
                });
            }
        });
    }

    self.Search(1);
}

var modelView = new IntroduceView();
ko.applyBindings(modelView)