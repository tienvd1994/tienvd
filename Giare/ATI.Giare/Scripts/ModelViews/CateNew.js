$(document).on('focusin', function (e) {
    e.stopImmediatePropagation();
});



function CateNewView()
{
    var self = this;

    self.ID = ko.observable(-1);

    self.Name = ko.observable("");

    self.SeoLink = ko.observable("");

    self.EnglishName = ko.observable("");

    self.LangId = ko.observable(-1);

}

var modelView = new CateNewView();
ko.applyBindings(modelView);