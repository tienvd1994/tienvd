function ShoppingCart() {
    var self = this;

    self.Quantity = ko.observable(1);

    self.DecreaseItem = function () {
        self.Quantity(parseInt(self.Quantity()) - 1);
    }

    self.IncreaseItem = function () {
        self.Quantity(parseInt(self.Quantity()) + 1);
    }

    self.AddItem = function () {
        $.getJSON("/Home/AddShoppingCart", { id: id, quantity: self.Quantity() }, function (data) {
            window.location.href = "/gio-hang";
        });
    };
}

ko.applyBindings(new ShoppingCart());
