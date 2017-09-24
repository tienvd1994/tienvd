$(document).on('focusin', function (e) {
    e.stopImmediatePropagation();
});

function Option(value1, label1) {
    var value = value1;
    var label = label1;
}

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;
function BlogModel() {
    var self = this;

    self.TitleSearch = ko.observable("");
    self.Title = ko.observable("");
    self.UnsignTitle = ko.observable("");
    self.Summary = ko.observable("");
    self.Author = ko.observable("ATI KPI");
    self.Tags = ko.observable("ATI KPI");
    self.IsHot = ko.observable(0);
    self.Status = ko.observable(1);
    self.News = ko.observableArray([]);
    self.Image = ko.observable("/images/thao-luan.jpg");
    self.ModalText = ko.observable("Viết bài");
    self.fcTitle = ko.observable(true);
    self.fcSummary = ko.observable(false);

    self.items = ko.observableArray([]);
    self.multiSelectInitOptions = { includeSelectAllOption: true, enableFiltering: true };
    self.selectedTags = ko.observableArray([]);
    //self.items = ko.observableArray([]);

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        $("#loading").show();
        $.getJSON("/CMS/SearchNews", { title: self.TitleSearch(), pageIndex: currentPage, recordPerPage: RecordPerPage }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi xem thông tin");
                window.location.href = "/dang-nhap";
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.News(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' bài viết)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    };

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Post = function () {
        if ($.trim(self.Image()) == "/images/thao-luan.jpg" || $.trim(self.Image()) == "") {
            alert("Hãy upload ảnh đại diện cho bài viết");
            self.fcTitle(true);
            return;
        }

        if ($.trim(self.Title()) == "") {
            alert("Tiêu đề không được để trống");
            self.fcTitle(true);
            return;
        }

        if ($.trim(self.Summary()) == "") {
            alert("Nội dung tóm tắt không được để trống");
            self.fcSummary(true);
            return;
        }

        if ($.trim(CKEDITOR.instances.Content.getData()) == "") {
            alert("Nội dung không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        if (self.ModalText() != "Viết bài") {
            self.Update();
            return;
        }

        var tags = "";

        $.each(self.selectedTags(), function (index, item) {
            tags += tags == "" ? item : ";" + item;
        });

        $("#loading").show();
        $.post("/CMS/PostNew", {
            title: self.Title(), author: self.Author(), summary: self.Summary(), content: CKEDITOR.instances.Content.getData(),
            image: self.Image(), isHot: self.IsHot() == 1, status: self.Status(), tags: tags
        }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi thêm bài viết");
                window.location.href = "/dang-nhap";
            }

            if (data == -2) {
                alert("Rất tiếc bài viết \"" + self.Title() + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            if (data < 0) {
                alert("Rất tiếc bài viết \"" + self.Title() + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            self.News.push(data);

            alert("Đã thêm mới thành công 1 bài viết");
            self.Title("");
            self.Summary("");
            self.Author("ATI KPI");
            self.Tags("ATI KPI");
            self.IsHot(0);
            self.Status = ko.observable(1);
            self.Image("/images/thao-luan.jpg");
            self.selectedTags.removeAll();
            CKEDITOR.instances.Content.setData("");
        });
    };

    self.ShowAdd = function () {
        self.ModalText = ko.observable("Viết bài");
        self.Title("");
        self.Summary("");
        self.Author("ATI KPI");
        self.Tags("ATI KPI");
        self.IsHot(0);
        self.Status = ko.observable(1);
        self.Image("/images/thao-luan.jpg");
        CKEDITOR.instances.Content.setData("");
        self.selectedTags.removeAll();
        $('#myModal').modal("show");
        self.fcTitle(true);
    };

    self.ShowUpdate = function (item) {
        try {
            if (CKEDITOR.instances.Content == null) {
                var content = CKEDITOR.replace("Content");

                content.on('instanceReady', function (event, editor, data) {
                    CKEDITOR.instances.Content.setData(item.Content);
                });
            }
            CKEDITOR.instances.Content.setData(item.Content);
        } catch (e) {
        }

        self.Title(item.Title);
        self.ModalText("Sửa bài viết: " + item.Title);
        self.Image(item.Image);
        self.Summary(item.Summary);
        self.Author(item.Author);
        self.IsHot(item.IsHot ? 1 : 0);
        self.Status(item.Status);
        self.UnsignTitle(item.SeoLink);
        var tags = item.Tags.split(';');

        self.selectedTags([]);
        $.each(tags, function (index, tag) {
            self.selectedTags.push(tag);
        });

        $('#myModal').modal("show");
    };

    self.Update = function () {
        if (!confirm("Bạn có chắc chắn muốn sửa bài viết này không?")) {
            return;
        }

        var tags = "";

        $.each(self.selectedTags(), function (index, item) {
            tags += tags == "" ? item : ";" + item;
        });

        $("#loading").show();
        $.post("/CMS/UpdateNew", {
            oldTitle: self.UnsignTitle(), title: self.Title(), author: self.Author(), summary: self.Summary(), content: CKEDITOR.instances.Content.getData(),
            image: self.Image(), isHot: self.IsHot() == 1, status: self.Status(), tags: tags
        }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi thêm bài viết");
                window.location.href = "/dang-nhap";
            }

            if (data == -2) {
                alert("Rất tiếc bài viết \"" + self.Title() + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            if (data < 0) {
                alert("Rất tiếc bài viết \"" + self.Title() + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            alert("Đã sửa bài viết thành công");
            $('#myModal').modal("hide");
            self.Search(1);
        });
    };

    self.UpdateIsHot = function (seolink, title, isHot) {
        if (!confirm("Bạn có chắc chắn muốn sửa trạng thái bài viết \"" + title + "\" thành " + (isHot ? 'bài nổi bật' : 'bài thường') + " không?")) {
            return;
        }

        $("#loading").show();
        $.post("/CMS/UpdateIsHot", { title: seolink, isHot: isHot == 1 }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi sửa trạng thái bài viết");
                window.location.href = "/dang-nhap";
            }

            if (data == -2) {
                alert("Rất tiếc bài viết \"" + title + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            if (data < 0) {
                alert("Rất tiếc bài viết \"" + title + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            alert("Đã sửa loại bài hiển thị thành công");

            self.Search(1);
        });
    };

    self.UpdateStatus = function (seolink, title, status) {
        if (!confirm(status == 7 ? "Bạn có chắn chắn muốn xóa bài viết \"" + title + "\" không?" : "Bạn có chắc chắn muốn sửa trạng thái bài viết \"" + title + "\" " + (status == 1 ? 'cho hiển thị' : 'không cho hiển thị') + " không?")) {
            return;
        }

        $("#loading").show();
        $.post("/CMS/UpdateStatus", { title: seolink, status: status }, function (data) {
            $("#loading").hide();

            if (data == -1) {
                alert("Mời bạn đăng nhập trước khi sửa trạng thái bài viết");
                window.location.href = "/dang-nhap";
            }

            if (data == -2) {
                alert("Rất tiếc bài viết \"" + title + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            if (data < 0) {
                alert("Rất tiếc bài viết \"" + title + "\"đã có trong cơ sở dữ liệu");
                self.fcTitle(true);
                return;
            }

            alert("Đã " + (status == 7 ? 'xóa' : 'sửa trạng thái') + " bài viết thành công");

            self.Search(1);
        });
    };

    $('#fileupload').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
        //'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'buttonText': 'Browser',
        'folder': '/kpionline',
        'width': '100',
        'height': '30',
        'fileExt': '*.png;*.jpg;*.jpe;*.jpep;*.gif',
        'fileDesc': 'File Images *.png;*.jpg;*.jpe;*.jpep;*.gif',
        'sizeLimit': '81920000',
        'scriptData': { 'Folder': "kpionline" },
        'onComplete': function (event, queueId, fileObj, response) {
            if (response == "-10") {
                alert("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (response == "-2") {
                alert("Bạn hãy tải ảnh có định dạng .doc; .docx; .zip; .7z; .rar; .ppt; .pptx; .pdf; .xls; .xlsx!");
                return;
            }

            self.Image("http://cdn.quancafe.vn/z_480x270" + response.replace(/\"/g, "") + "?t=32");
        },
        'multi': false,
        'auto': true
    });

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/kpionline',
        'width': '125',
        'height': '40',
        'fileExt': '*.jpg;*.png;*.gif;*.jpe',
        'fileDesc': 'File jpg *.png;*.gif;*.jpe',
        'sizeLimit': '8192000',
        'scriptData': { 'username': "kpionline" },
        'onComplete': function (event, queueId, fileObj, response) {
            if (response == "-10") {
                alert("Có lỗi xảy ra xin vui lòng liên hệ Ban quản trị để được trợ giúp");
                return;
            }

            if (response == "-2") {
                alert("Bạn hãy tải ảnh có định dạng .doc; .docx; .zip; .7z; .rar; .ppt; .pptx; .pdf; .xls; .xlsx!");
                return;
            }

            CKEDITOR.instances.Content.insertHtml("<img src='" + "http://cdn.quancafe.vn/z_650x0" + response.replace(/\"/g, "") + "' alt='" + ($.trim($("#txtTitle").val()) == "" ? "Trường trực tuyến click2learn" : $("#txtTitle").val()) + "'/>");
        },
        'multi': false,
        'auto': true
    });

    CKEDITOR.replace("Content");

    self.Search(1);
}

ko.applyBindings(new BlogModel());