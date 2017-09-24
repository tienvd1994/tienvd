$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');

    $("#txtFromDate").datepicker({
        changeMonth: true,
        changeYear: true
        //:' + new Date().getFullYear()
    });

    $("#txtToDate").datepicker({
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

function ProjectView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListProject = ko.observableArray([]);
    self.Keyword = ko.observable("");
    self.Customer = ko.observable("");
    self.Name = ko.observable("");
    self.Model = ko.observable("");
    self.Producer = ko.observable("");
    self.Image = ko.observable("");
    self.Summary = ko.observable("");
    self.Status = ko.observable(1);
    self.OrderNo = ko.observable(1);
    self.LangId = ko.observable(0);
    self.ShowDetail = ko.observable(false);
    self.fcName = ko.observable(false);
    self.fcCustomer = ko.observable(false);
    self.Sending = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.IsHot = ko.observable(0);
    self.CreateDate = ko.observable("");

    $('#attachImages').uploadify({
        'uploader': '/Scripts/uploadify.swf',
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
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
        'script': 'http://cdn.quancafe.vn/UploadFile/Upload',
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

            CKEDITOR.instances.Content.insertHtml("<img class='img-responsive img-tab-space' src='" + "http://cdn.quancafe.vn/z_650x0" + response.replace(/\"/g, "") + "'/>");
        },
        'multi': false,
        'auto': true
    });

    self.SetUpdate = function (item) {
        self.ID(item.ID);
        self.ShowDetail(true);
        self.Name(item.Name);
        self.Customer(item.Customer);
        self.Image(item.Image);
        $("#txtFromDate").val(item.FromDate == null ? "" : moment(item.FromDate).format("DD-MM-YYYY"));
        $("#txtToDate").val(item.ToDate == null ? "" : moment(item.ToDate).format("DD-MM-YYYY"));
        self.Summary(item.Summary);
        CKEDITOR.instances.Content.setData(item.Content);
        self.OrderNo(item.OrderNo);
        self.IsHot(item.IsHot);
        self.IsAdd(false);
        self.fcName(true);
        self.CreateDate(item.CreateDate);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Name("");
        self.Customer("");
        self.Image("");
        self.Summary("");
        $("#txtFromDate").val("");
        $("#txtToDate").val("");
        CKEDITOR.instances.Content.setData("");
        self.OrderNo(1);
        self.IsAdd(true);
        self.IsHot(0);
        self.fcName(true);
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
                Project.Delete(item.ID, item.Name, function (data) {
                    if (data == -2) {
                        toastr.warning("Dự án \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListProject.remove(item);
                });
            }
        });
    }

    self.changeLang = function () {
        self.Search(1);
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        Project.Get(self.LangId(), self.Keyword(), currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/du-an";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListProject(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' dự án)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {

        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên dự án không được để trống");
            self.fcName(true);
            return;
        }

        //var fromDate = $("#txtFromDate").val().replace(/-/g, '/');

        //if (fromDate == "") {
        //    toastr.warning("Thời gian thực hiện dự án không được để trống");
        //    return;
        //}

        //if (fromDate != "" && !moment(fromDate, "DD/MM/YYYY").isValid()) {
        //    toastr.warning("Thời gian thực hiện dự án không đúng định dạng ngày/tháng/năm");
        //    return;
        //}

        //var toDate = $("#txtToDate").val().replace(/-/g, '/');

        //if (toDate != "" && !moment(toDate, "DD/MM/YYYY").isValid()) {
        //    toastr.warning("Thời gian kết thúc dự án không đúng định dạng ngày/tháng/năm");
        //    return;
        //}

        if ($.trim(self.Customer()) == "") {
            toastr.warning("Tên khách hàng không được để trống");
            self.fcCustomer(true);
            return;
        }

        if ($.trim(self.Image()) == "") {
            toastr.warning("Hãy chọn ảnh dự án");
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

        self.Sending(true);

        if (self.IsAdd()) {
            Project.AddProject(self.Name(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), self.Customer(), self.OrderNo(),
                self.IsHot(), self.LangId(), self.CreateDate(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Dự án \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search(1);
                });
        }
        else {
            Project.Update(self.ID(), self.Name(), self.Image(), self.Summary(), CKEDITOR.instances.Content.getData(), self.Customer(), self.OrderNo(),
                self.IsHot(), self.CreateDate(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Dự án \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search(1);
                });
        }
    }

    self.Search(1);
}

var modelView = new ProjectView();

ko.applyBindings(modelView)