var Service = function () {
    var self = this;
}

amplify.request.define("UpdateService", "ajax", {
    url: "/CMS/UpdateService",
    dataType: "json",
    type: "POST"
});

amplify.request.define("DeleteService", "ajax", {
    url: "/CMS/DeleteService",
    dataType: "json",
    type: "POST"
});

amplify.request.define("AddService", "ajax", {
    url: "/CMS/AddService",
    dataType: "json",
    type: "POST"
});

amplify.request.define("GetServices", "ajax", {
    url: "/CMS/GetServices",
    dataType: "json",
    type: "GET"
});

Service.Update = function (id, name, image, summary, content, langid, isShowHomePage, callback) {

    amplify.request("UpdateService", {
        id: id, name: name, image: image, summary: summary, content: content, langid: langid, IsShowHomePage: isShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

Service.AddService = function (name, image, summary, content, langid, isShowHomePage, callback) {

    amplify.request("AddService", {
        name: name, image: image, summary: summary, content: content, langid: langid, IsShowHomePage: isShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

Service.Delete = function (id, callback) {

    amplify.request("DeleteService", {
        id: id
    }, function (data) {
        if (callback) callback(data);
    });
}

Service.Get = function (langId, keyword, pageIndex, pageSize, callback) {

    amplify.request("GetServices", {
        langId: langId, keyword: keyword, pageIndex: pageIndex, pageSize: pageSize
    }, function (data) {
        if (callback) callback(data);
    });
}
