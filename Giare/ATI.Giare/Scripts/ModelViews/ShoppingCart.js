function Item(id, name, seolink, price, saleOff, quantity, image) {
    var self = this;

    self.ID = id;
    self.Name = name;
    self.SeoLink = seolink;
    self.Price = addCommas(price);
    self.SaleOff = addCommas(saleOff);
    self.Quantity = ko.observable(addCommas(quantity));
    self.Image = image;

    self.DecreaseItem = function () {
        self.Quantity(parseInt(self.Quantity()) - 1);

        //$.getJSON("/Home/IncreaseCart", { id: self.ID, quantity: self.Quantity() }, function (data) {
        //});
    }

    self.IncreaseItem = function () {
        self.Quantity(parseInt(self.Quantity()) + 1);

        //$.getJSON("/Home/IncreaseCart", { id: self.ID, quantity: self.Quantity() }, function (data) {
        //});
    }

    self.Quantity.Changed = ko.computed(function () {
        $.getJSON("/Home/IncreaseCart", { id: self.ID, quantity: self.Quantity() }, function (data) {
        });
    });

    self.TotalPay = ko.computed(function () {
        return addCommas((ConvertToNumber(self.Price) - ConvertToNumber(self.SaleOff)) * ConvertToNumber(self.Quantity()));
    });
}

function ShoppingCart() {
    var self = this;

    self.CartItems = ko.observableArray([]);
    self.FullName = ko.observable("");
    self.Mobile = ko.observable("");
    self.Address = ko.observable("");

    self.SaleOff = ko.observable("");
    self.TotalPay = ko.observable("");

    self.OrderTotal = ko.computed(function () {
        var total = 0;
        var saleOff = 0;
        var totalPay = 0;

        $.each(self.CartItems(), function (index, item) {
            total += ConvertToNumber(item.Price) * item.Quantity();
            saleOff += ConvertToNumber(item.SaleOff) * item.Quantity();
            totalPay += ConvertToNumber(item.TotalPay());
        });

        self.SaleOff(addCommas(saleOff));
        self.TotalPay(addCommas(totalPay));
        return addCommas(total);
    });

    self.fcFullName = ko.observable(false);
    self.fcMobile = ko.observable(false);
    self.fcAddress = ko.observable(false);
    self.Sending = ko.observable(false);

    self.SubmitOrder = function () {
        if (self.CartItems().length == 0) {
            toastr.warning("Bạn hãy chọn ít nhất 1 sản phẩm");
            return;
        }

        if ($.trim(self.FullName()) == "") {
            toastr.warning("Họ và tên không được để trống");
            self.fcFullName(true);
            return;
        }

        if ($.trim(self.Mobile()) == "") {
            toastr.warning("Số điện thoại liên hệ không được để trống");
            self.fcMobile(true);
            return;
        }

        if ($.trim(self.Address()) == "") {
            toastr.warning("Địa chỉ liên hệ không được để trống");
            self.fcAddress(true);
            return;
        }

        self.Sending(true);
        $.getJSON("/Home/SaveShoppingCart", { fullName: $.trim(self.FullName()), mobile: $.trim(self.Mobile()), address: $.trim(self.Address()) }, function (data) {
            self.Sending(false);

            if (data == -1) {
                toastr.warning("Rất tiếc phiên làm việc của bạn đã hết hạn, bạn vui lòng chọn lại sản phẩm trước khi gửi");
                window.location.reload();
                return;
            }

            toastr.success("Cảm ơn bạn đã gửi đặt hàng mua sản phẩm SUN'SOIL");
        });
    }

    $.getJSON("/Home/GetCartItem", {}, function (data) {
        self.FullName(data.FullName);
        self.Mobile(data.Mobile);
        self.Address(data.Address);

        $.each(data.Items, function (index, item) {
            self.CartItems.push(new Item(item.ID, item.Name, item.SeoLink, item.Price, item.SaleOff, item.Quantity, item.Image));
        });

        $(".featured-box-cart").css('height', self.CartItems().length == 1 ? 175 : self.CartItems().length * 125);
    });
}

ko.applyBindings(new ShoppingCart());

function addCommas(src) {
    src = src.toString().replace(/\,/g, "");

    return src.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
};

function ConvertToNumber(src) {
    src = src.toString().replace(/\,/g, "");

    return parseInt(src);
};