$(document).ready(function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);

    CKEDITOR.replace('Content');

    geocoder = new google.maps.Geocoder();
    var myLatlng = new google.maps.LatLng(20.99076, 105.8646);

    var mapOptions = {
        zoom: 15,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
});

$(window).bind('resize', function () {
    modelView.IsDesktop($(window).width() > 750);
    modelView.IsSmartPhone450($(window).width() > 450);
});

var geocoder;
var map;
function codeAddress(address) {
    geocoder = new google.maps.Geocoder();

    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            modelView.Long(results[0].geometry.location.lng());
            modelView.Lang(results[0].geometry.location.lat());

            var markerArray = [];

            var myLatlng = new google.maps.LatLng();

            var marker = new google.maps.Marker({
                position: results[0].geometry.location,
                map: map,
                title: address,
                draggable: true
            });

            //map.setCenter({ lat: results[0].geometry.location.lat(), lng: results[0].geometry.location.lng() });

            var info = new google.maps.InfoWindow({
                content: modelView.Address()
            });
            info.open(map, marker);
            stepDisplay = new google.maps.InfoWindow();

            google.maps.event.addListener(marker, 'dragend', function (event) {
                modelView.Long(event.latLng.lng());
                modelView.Lang(event.latLng.lat());
                console.log('final position is ' + modelView.Long() + ' / ' + modelView.Lang());
            });
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }

        google.maps.event.trigger(map, "resize");
    });
}

var CurrentPage = 1;
var totalPageCate = 1;
var RecordPerPage = 10;

function Img(img) {
    this.Image = img;
}

function AgencyModelView() {
    var self = this;

    self.IsDesktop = ko.observable(!$.browser.mobile);
    self.IsSmartPhone450 = ko.observable(true);

    self.ListAgency = ko.observableArray([]);
    self.Name = ko.observable("");
    self.Code = ko.observable("");
    self.Province = ko.observable("");
    self.District = ko.observable("");
    self.Districts = ko.observableArray([]);
    self.Images = ko.observableArray([]);
    self.Address = ko.observable("");
    self.Mobile = ko.observable("");
    self.Email = ko.observable("");
    self.Level = ko.observable(1);
    self.Status = ko.observable(1);
    //self.Coordinate = ko.observable("");
    self.ProvinceSearch = ko.observable("");
    self.Keyword = ko.observable("");
    self.Long = ko.observable("");
    self.Lang = ko.observable("");

    self.fcName = ko.observable(false);
    self.fcCode = ko.observable(false);
    self.fcAddress = ko.observable(false);
    self.Sending = ko.observable(false);
    self.ShowDetail = ko.observable(false);
    self.IsAdd = ko.observable(true);
    self.ID = ko.observable(-1);
    self.ShowMap = ko.observable(false);

    self.GetCoordinate = function () {
        if ($.trim(self.Province()) == "") {
            toastr.warning("Hãy chọn tỉnh/tp của đại lý");
            $("#drProvince").focus();
            return;
        }

        if ($.trim(self.District()) == "") {
            toastr.warning("Hãy chọn quận/huyện của đại lý");
            $("#drDistrict").focus();
            return;
        }

        if ($.trim(self.Address()) == "") {
            toastr.warning("Địa chỉ đại lý không được để trống");
            self.fcAddress(true);
            return;
        }

        codeAddress(self.Address() + " " + $("#drDistrict option:selected").text() + " " + $("#drProvince option:selected").text());

        //google.maps.event.addDomListener(window, 'load', initialize);

        self.ShowMap(true);
    }

    self.RemoveImg = function (item) {
        self.Images.remove(item);
    }

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

            self.Images.push(new Img(response.replace(/\"/g, "")));
            //self.Image(response.replace(/\"/g, ""));
        },
        'multi': true,
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
        self.Code(item.Code);

        self.Address(item.Address);
        self.Status(item.Status);

        self.IsAdd(false);
        self.fcName(true);
        self.Province(item.ProvinceSeolink);
        self.Level(item.Level);
        self.Mobile(item.Mobile);
        self.Email(item.Email);
        self.Long(item.Lang);
        self.Lang(item.Long);
        CKEDITOR.instances.Content.setData(item.Introduce);
        self.Status(item.Status);

        self.Images.removeAll();
        if (item.Thumb != null) {
            var imgs = item.Thumb.split(',');

            $.each(imgs, function (i, item) {
                self.Images.push(new Img(item));
            })
        }

        Distric.Get(item.ProvinceSeolink, function (data) {
            self.Districts(data);
            self.District(item.DistrictSeolink);
        });
        self.ShowMap(false);
        //codeAddress(item.Address + " " + item.District + " " + item.Province);
    }

    self.ShowAddForm = function (item) {
        self.ID(-1);
        self.ShowDetail(true);
        self.Name("");
        self.Code("");
        self.Address("");
        self.Status("");

        self.IsAdd(true);
        self.fcName(true);
        self.Province("");
        self.District("");
        self.Level(1);
        self.Mobile("");
        self.Email("");
        CKEDITOR.instances.Content.setData("");
        self.Status(1);
        self.Images.removeAll();
        self.ShowMap(false);
    }

    self.GetDistrict = function () {
        if (self.Province() == "") {
            return;
        }

        Distric.Get(self.Province(), function (data) {
            self.Districts(data);
        });
    };

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
                Agency.Delete(item.ID, item.Title, function (data) {
                    if (data == -2) {
                        toastr.warning("Đại lý \"" + item.Name + "\" đã bị xóa hoặc không tồn tại");
                        return;
                    }

                    toastr.success("Đã xóa thành công");

                    self.ListAgency.remove(item);
                });
            }
        });
    }

    self.Search = function (currentPage) {
        CurrentPage = currentPage;

        Agency.Get(self.Keyword(), self.ProvinceSearch(), currentPage, RecordPerPage, function (data) {
            if (data == -1) {
                toastr.warning("Mời bạn đăng nhập trước khi thực hiện");

                window.location.href = "/dang-nhap?u=/cms/dai-ly";
                return;
            }

            totalPageCate = Math.ceil(data.totalRecord / RecordPerPage);
            self.ListAgency(data.items);

            $("#sumarypager").html("Trang " + (totalPageCate == 0 ? 0 : currentPage) + "/" + totalPageCate + ' (tổng ' + data.totalRecord + ' đại lý)');
            $("#pager").pager({ pagenumber: currentPage, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        });
    }

    self.PageClick = function (pageclickednumber) {
        $("#pager").pager({ pagenumber: pageclickednumber, pagecount: totalPageCate, buttonClickCallback: self.PageClick });
        self.Search(pageclickednumber);
    };

    self.Update = function () {

        if ($.trim(self.Name()) == "") {
            toastr.warning("Tên đại lý không được để trống");
            self.fcName(true);
            return;
        }

        if ($.trim(self.Code()) == "") {
            toastr.warning("Mã đại lý không được để trống");
            self.fcCode(true);
            return;
        }

        if ($.trim(self.Province()) == "") {
            toastr.warning("Hãy chọn tỉnh/tp của đại lý");
            $("#drProvince").focus();
            return;
        }

        if ($.trim(self.District()) == undefined) {
            toastr.warning("Hãy chọn quận/huyện của đại lý");
            $("#drDistrict").focus();
            return;
        }

        if ($.trim(self.Address()) == "") {
            toastr.warning("Địa chỉ đại lý không được để trống");
            self.fcAddress(true);
            return;
        }

        if (self.Long() == "" || self.Lang() == "") {
            toastr.warning("Bạn hãy chọn vị trí trên bản đồ của đại lý");
            return;
        }

        if (self.Images().length == 0) {
            toastr.warning("Hãy chọn ít nhất 1 ảnh chụp của đại lý");
            return;
        }

        if (CKEDITOR.instances.Content.getData() == "") {
            toastr.warning("Nội dung bài viết không được để trống");
            CKEDITOR.instances.Content.focus();
            return;
        }

        var imgs = "";
        $.each(self.Images(), function (i, img) {
            if ($.trim(img.Image) != "") {
                imgs += imgs == "" ? img.Image : "," + img.Image;
            }
        });

        self.Sending(true);

        if (self.IsAdd()) {
            Agency.AddAgency(self.Name(), self.Code(), self.Address(), self.Mobile(), self.Email(), $("#drProvince option:selected").text(), self.Province(),
                $("#drDistrict option:selected").text(), self.District(), self.Images()[0].Image, imgs, CKEDITOR.instances.Content.getData(), 1,
                self.Level(), self.Status(), self.Long(), self.Lang(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Lỗi, Mã đại lý \"" + self.Code() + "\" đã có trong cơ sở dữ liệu");
                        self.fcCode(true);

                        return;
                    }

                    if (data == -3) {
                        toastr.warning("Lỗi, Địa chỉ đại lý \"" + self.Name() + "\" bị trùng với 1 đại lý khác");
                        self.fcAddress(true);

                        return;
                    }

                    if (data == -4) {
                        toastr.warning("Lỗi, Đại lý \"" + self.Name() + "\" đã có trong cơ sở dữ liệu");
                        self.fcName(true);
                        return;
                    }

                    toastr.success("Đã lưu thông tin thành công");

                    self.Search(1);
                    self.ShowDetail(false);
                });
        }
        else {
            Agency.Update(self.ID(), self.Name(), self.Code(), self.Address(), self.Mobile(), self.Email(), $("#drProvince option:selected").text(), self.Province(),
                $("#drDistrict option:selected").text(), self.District(), self.Images()[0].Image, imgs, CKEDITOR.instances.Content.getData(), 1,
                self.Level(), self.Status(), self.Long(), self.Lang(), function (data) {

                    self.Sending(false);

                    if (data == -2) {
                        toastr.warning("Đại lý \"" + self.Name() + "\" đã bị xóa hoặc không tồn tại");

                        return;
                    }

                    if (data == -3) {
                        toastr.warning("Lỗi, Mã đại lý \"" + self.Code() + "\" đã có trong cơ sở dữ liệu");
                        self.fcCode(true);

                        return;
                    }

                    if (data == -4) {
                        toastr.warning("Lỗi, Địa chỉ đại lý \"" + self.Name() + "\" bị trùng với 1 đại lý khác");
                        self.fcAddress(true);
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

var modelView = new AgencyModelView();

ko.applyBindings(modelView)