var CustomerSay = function () {
    var self = this;
}

amplify.request.define("UpdateCustomerSay", "ajax", {
    url: "/CMS/UpdateCustomerSay",
    dataType: "json",
    type: "GET"
});

amplify.request.define("DeleteCustomerSay", "ajax", {
    url: "/CMS/DeleteCustomerSay",
    dataType: "json",
    type: "POST"
});

amplify.request.define("AddCustomerSay", "ajax", {
    url: "/CMS/AddCustomerSay",
    dataType: "json",
    type: "GET"
});

amplify.request.define("SearchCustomerSay", "ajax", {
    url: "/CMS/SearchCustomerSay",
    dataType: "json",
    type: "GET"
});

CustomerSay.Update = function (id, fullName, title, company, content, orderNo, image, langid, callback) {

    amplify.request("UpdateCustomerSay", {
        id: id, fullName: fullName, title: title, company: company, content: content, orderNo: orderNo, image: image, langid: langid,
    }, function (data) {
        if (callback) callback(data);
    });
}

CustomerSay.AddNews = function (fullName, title, company, content, orderNo, image, langid, callback) {

    amplify.request("AddCustomerSay", {
        fullName: fullName, title: title, company: company, content: content, orderNo: orderNo, image: image, langid: langid
    }, function (data) {
        if (callback) callback(data);
    });
}

CustomerSay.Delete = function (id, callback) {

    amplify.request("DeleteCustomerSay", {
        id: id
    }, function (data) {
        if (callback) callback(data);
    });
}

CustomerSay.Get = function (langId, pageIndex, recordPerPage, callback) {

    amplify.request("SearchCustomerSay", {
        langId: langId, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });

}
