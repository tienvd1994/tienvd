var User = function () {
    var self = this;
}

amplify.request.define("UpdateCustomer", "ajax", {
    url: "/CMS/UpdateCustomer",
    dataType: "json",
    type: "GET"
});

amplify.request.define("DeleteCustomer", "ajax", {
    url: "/CMS/DeleteCustomer",
    dataType: "json",
    type: "GET"
});

amplify.request.define("AddCustomer", "ajax", {
    url: "/CMS/AddCustomer",
    dataType: "json",
    type: "GET"
});

amplify.request.define("GetCustomers", "ajax", {
    url: "/CMS/GetCustomers",
    dataType: "json",
    type: "GET"
});

User.Update = function (id, name, image, status, orderNo, website, callback) {

    amplify.request("UpdateCustomer", {
        id: id, name: name, image: image, status: status, orderNo: orderNo, website: website
    }, function (data) {
        if (callback) callback(data);
    });
}

User.AddCustomer = function (name, image, status, orderNo, website, callback) {

    amplify.request("AddCustomer", {
        name: name, image: image, status: status, orderNo: orderNo, website: website
    }, function (data) {
        if (callback) callback(data);
    });
}

User.Delete = function (id, name, callback) {

    amplify.request("DeleteCustomer", {
        id: id, name: name
    }, function (data) {
        if (callback) callback(data);
    });
}

User.ChangePassword = function (userName, newPass, callback) {

    amplify.request("ChangePassword", {
        userName: userName, newPass: newPass
    }, function (data) {
        if (callback) callback(data);
    });
}

User.Get = function (pageIndex, recordPerPage, callback) {

    amplify.request("GetCustomers", {
        pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
