$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

function CateProductModelView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListCateProduct = ko.observableArray([]);
    self.Name = ko.observable("");
    self.ParrentCate = ko.observable(-1);
    self.OrderNo = ko.observable(1);

    self.LangId = ko.observable(0);
    self.fcName = ko.observable(false);
    self.Keyword = ko.observable("");

    self.Sending = ko.observable(false);
    self.ShowDetail = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.isUploading = ko.observable(false);
    self.IsShowHomePage = ko.observable(false);

    self.changeLangSearch = function () {
        self.Search();
    }

    self.changeLang = function () {
        self.Search();
    }

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.LangId(item.LangId);
        self.ShowDetail(true);
        self.Name(item.Name);
        self.ParrentCate(item.ParrentCateId);
        self.OrderNo(item.OrderNo);
        self.IsShowHomePage(item.IsShowHomePage);
        self.IsAdd(false);
        self.fcName(true);
        CKEDITOR.instances.Content.setData(item.Description);
    }

    self.ShowAddForm = function () {
        self.ID(-1);
        self.ShowDetail(true);
        self.Name("");
        self.ParrentCate(null);
        self.OrderNo(1);
        CKEDITOR.instances.Content.setData("");
        self.LangId(0);
        self.IsAdd(true);
        self.fcName(true);
        self.IsShowHomePage(false);
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
                CateProduct.Delete(item.ID, function (data) {
                    if (data == -1) {
                        toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                        window.location.href = "/dang-nhap?u=/cms/nhom-du-an";
                        return;
                    }

                    if (data == -2) {
                        toastr.warning("Nhóm \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListCateProduct.remove(item);
                });
            }
        });
    }

    self.Search = function () {
        CateProduct.Get(self.LangId(), self.Keyword(), 0, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/nhom-du-an";
                return;
            }

            self.ListCateProduct(data);

            $("#sumarypager").html('tổng ' + data.length + ' nhóm');
        });
    }

    self.Update = function () {

        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên nhóm sản phẩm không được để trống");
            self.fcName(true);
            return;
        }

        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Nội dung giới thiệu về nhóm sản phẩm không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        self.Sending(true);

        if (self.IsAdd()) {
            CateProduct.Add(self.Name(), self.Name(), CKEDITOR.instances.Content.getData(), self.OrderNo(), self.ParrentCate(), self.ParrentCate() == -1 ? "" : $("#drParrentCate option:selected").text(), self.LangId(), self.IsShowHomePage(),
                function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Lỗi, Nhóm \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");
                        self.fcCode(true);

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search();
                    self.ShowDetail(false);
                });
        }
        else {
            CateProduct.Update(self.ID(), self.Name(), self.Name(), CKEDITOR.instances.Content.getData(), self.OrderNo(), self.ParrentCate(), self.ParrentCate() == -1 ? "" : $("#drParrentCate option:selected").text(), self.LangId(), self.IsShowHomePage(), function (data) {
                self.Sending(false);

                if (data == -2) {
                    toastr.warning("Nhóm \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                    return;
                }

                toastr.success("Đã lưu thông tin thành công");

                self.Search();
                self.ShowDetail(false);
            });
        }
    }

    self.Search();
}

var modelView = new CateProductModelView();

ko.applyBindings(modelView)