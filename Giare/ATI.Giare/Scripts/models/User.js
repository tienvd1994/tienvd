var User = function () {
    var self = this;
}

amplify.request.define("UpdateUser", "ajax", {
    url: "/CMS/UpdateUser",
    dataType: "json",
    type: "GET"
});

amplify.request.define("DeleteUser", "ajax", {
    url: "/CMS/DeleteUser",
    dataType: "json",
    type: "GET"
});

amplify.request.define("AddUser", "ajax", {
    url: "/CMS/AddUser",
    dataType: "json",
    type: "GET"
});

amplify.request.define("GetUsers", "ajax", {
    url: "/CMS/GetUsers",
    dataType: "json",
    type: "GET"
});

amplify.request.define("ChangePassword", "ajax", {
    url: "/CMS/DoChangePassword",
    dataType: "json",
    type: "GET"
});

User.Update = function (id, fullName, userName, title, password, image, status, callback) {

    amplify.request("UpdateUser", {
        id: id, fullName: fullName, userName: userName, title: title, password: password, image: image, status: status
    }, function (data) {
        if (callback) callback(data);
    });
}

User.AddUser = function (fullName, userName, title, password, image, status, callback) {

    amplify.request("AddUser", {
        fullName: fullName, userName: userName, title: title, password: password, image: image, status: status
    }, function (data) {
        if (callback) callback(data);
    });
}

User.Delete = function (id, fullName, callback) {

    amplify.request("DeleteUser", {
        id: id, fullName: fullName
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

User.Get = function (keyword, pageIndex, recordPerPage, callback) {

    amplify.request("GetUsers", {
        keyword: keyword, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
