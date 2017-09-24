var Project = function () {
    var self = this;
}

amplify.request.define("UpdateProject", "ajax", {
    url: "/CMS/UpdateProject",
    dataType: "json",
    type: "GET"
});

amplify.request.define("DeleteProject", "ajax", {
    url: "/CMS/DeleteProject",
    dataType: "json",
    type: "GET"
});

amplify.request.define("AddProject", "ajax", {
    url: "/CMS/AddProject",
    dataType: "json",
    type: "GET"
});

amplify.request.define("SearchProjects", "ajax", {
    url: "/CMS/SearchProjects",
    dataType: "json",
    type: "GET"
});

Project.Update = function (id, name, image, summary, content, customer, orderNo, isHot, createDate, callback) {

    amplify.request("UpdateProject", {
        id: id, name: name, image: image, summary: summary, content: content, customer: customer, orderNo: orderNo, isHot: isHot, createDate: createDate
    }, function (data) {
        if (callback) callback(data);
    });
}

Project.AddProject = function (name, image, summary, content, customer, orderNo, isHot, langId, createDate, callback) {

    amplify.request("AddProject", {
        name: name, image: image, summary: summary, content: content, customer: customer, orderNo: orderNo, isHot: isHot, langId: langId, createDate: createDate
    }, function (data) {
        if (callback) callback(data);
    });
}

Project.Delete = function (id, name, callback) {

    amplify.request("DeleteProject", {
        id: id, name: name
    }, function (data) {
        if (callback) callback(data);
    });
}

Project.Get = function (langId, key, pageIndex, recordPerPage, callback) {

    amplify.request("SearchProjects", {
        langId: langId, key: key, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
