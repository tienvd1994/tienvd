var News = function () {
    var self = this;
}

amplify.request.define("UpdateNews", "ajax", {
    url: "/CMS/UpdateNews",
    dataType: "json",
    type: "POST"
});

amplify.request.define("DeleteNews", "ajax", {
    url: "/CMS/DeleteNews",
    dataType: "json",
    type: "POST"
});

amplify.request.define("AddNews", "ajax", {
    url: "/CMS/AddNews",
    dataType: "json",
    type: "POST"
});

amplify.request.define("SearchNews", "ajax", {
    url: "/CMS/SearchNews",
    dataType: "json",
    type: "GET"
});

News.Update = function (id, title, titleEn, image, summary, content, postTime, status, cateId, author, isHot, langid, IsShowHomePage, callback) {
    amplify.request("UpdateNews", {
        ID: id, Title: title, Title_En: titleEn, Image: image, Summary: summary, Content: content, PostTime: postTime, Status: status, CateId: cateId, Author: author, IsHot: isHot, LangId: langid,
        IsShowHomePage: IsShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

News.AddNews = function (title, titleEn, image, summary, content, postTime, status, cateId, author, isHot, langid, IsShowHomePage, callback) {
    amplify.request("AddNews", {
        Title: title, Title_En: titleEn, Image: image, Summary: summary, Content: content, PostTime: postTime, Status: status, CateId: cateId, Author: author, IsHot: isHot, LangId: langid,
        IsShowHomePage: IsShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

News.Delete = function (id, callback) {

    amplify.request("DeleteNews", {
        id: id
    }, function (data) {
        if (callback) callback(data);
    });
}

News.Get = function (langId, key, type, pageIndex, recordPerPage, callback) {

    amplify.request("SearchNews", {
        langId: langId, key: key, type: type, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
