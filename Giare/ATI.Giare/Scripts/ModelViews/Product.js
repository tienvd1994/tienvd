$(document).on('focusin', function (e) {
    e.stopImmediatePropagation();
});

var tags;
$(document).ready(function () {
    tags = $("#Tags").tags({
        tagSize: "lg",
        suggestions: [],
        tagData: []
    });

    $(".tooltip1").tooltip();
    tags.addTag("ATI");
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

function ProductView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);
    self.CateAdd = ko.observable();
    self.LangId = ko.observable(-1);
    self.CateProducts = ko.observableArray([]);
    self.ListProduct = ko.observableArray([]);
    self.Keyword = ko.observable("");
    self.CateId = ko.observable();
    self.Name = ko.observable("");
    self.Customer = ko.observable("");
    self.Image = ko.observable("");
    self.Summary = ko.observable("");
    self.Status = ko.observable(1);
    self.Tags = ko.observable("");
    self.IsHot = ko.observable(false);
    self.CreateDate = ko.observable("");
    self.ShowDetail = ko.observable(false);
    self.fcName = ko.observable(false);
    self.fcCustomer = ko.observable(false);
    self.fcCreateDate = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': '/UploadFile/Upload',
        'buttonImg': '/Content/images/upload.png',
        'cancelImg': '/Content/images/icon_closex.png',
        'folder': '/Uploads',
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
        'folder': '/Uploads',
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

            CKEDITOR.instances.Content.insertHtml("<img class='img-responsive img-tab-space' src='" + "http://cdn.quancafe.vn/z_650x0" + response.replace(/\"/g, "") + "'/>");
        },
        'multi': false,
        'auto': true
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.ShowDetail(true);
        self.Name(item.Name);
        self.LangId(item.LangId);
        self.CateAdd(item.CateId);
        self.Customer(item.Customer);
        self.Image(item.Image);
        self.Summary(item.Summary);
        self.Status(item.Status);
        CKEDITOR.instances.Content.setData(item.Content);
        self.CreateDate(item.CreateDate);
        self.IsAdd(false);
        self.fcName(true);
        $(".tags-input").css('width', '100%');
        var listTag = item.Tags.split(',');

        $.each(tags.getTags(), function (i, item) {
            tags.removeLastTag();
        });

        $.each(listTag, function (i, item) {
            tags.addTag(item);
        });
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Name("");
        self.CateAdd();
        self.Customer("");
        self.Image("");
        self.Summary("");
        self.Status(1);
        CKEDITOR.instances.Content.setData("");
        self.IsAdd(true);
        self.fcName(true);
        $.each(tags.getTags(), function (i, item) {
            tags.removeLastTag();
        });
        self.Tags("");
        self.LangId(-1);
        self.IsHot(0);
        self.CreateDate("");
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
                Product.Delete(item.ID, function (data) {
                    if (data == -2) {
                        toastr.warning("sản phẩm \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListProduct.remove(item);
                });
            }
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        Product.Get(self.CateId() == undefined ? -1 : self.CateId(), self.Keyword(), currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/thong-tin-chung";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListProduct(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' sản phẩm)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {
        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên sản phẩm không được để trống");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn ảnh sản phẩm");
            return;
        }

        if ($.trim(self.Summary()) == "") {
            toastr.warning("Miêu tả tóm tắt sản phẩm không được để trống");
            self.fcName(true);
            return;
        }

        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Chi tiết về sản phẩm không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        var temp = '';
        $.each(tags.getTags(), function (index, item) {
            temp += temp == "" ? item : "," + item;
        });

        self.Tags(temp);

        self.Sending(true);

        if (self.IsAdd()) {
            Product.AddProduct(self.Name(), 1, self.Customer(), self.Summary(), CKEDITOR.instances.Content.getData(), self.Status(), self.Image(), self.CreateDate(),
                self.Tags(), self.LangId(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("sản phẩm \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.ShowDetail(false);
                    self.Search(1);
                });
        }
        else {
            Product.Update(self.ID(), self.Name(), self.CateAdd(), self.Customer(), self.Summary(),
                CKEDITOR.instances.Content.getData(), self.Status(), self.Image(), self.CreateDate(), self.Tags(), self.LangId(),
                function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("sản phẩm \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");
                    self.ShowDetail(false);
                    self.Search(CurrentPage);
                });
        }
    }

    CateProduct.Get(0, -1, function (data) {
        self.CateProducts(data);
    });



    self.Search(1);
}

var modelView = new ProductView();

ko.applyBindings(modelView);