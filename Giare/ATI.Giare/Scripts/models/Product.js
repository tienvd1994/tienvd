var Product = function () {
    var self = this;
}

amplify.request.define("UpdateProduct", "ajax", {
    url: "/CMS/UpdateProduct",
    dataType: "json",
    type: "POST"
});

amplify.request.define("DeleteProduct", "ajax", {
    url: "/CMS/DeleteProduct",
    dataType: "json",
    type: "POST"
});

amplify.request.define("AddProduct", "ajax", {
    url: "/CMS/AddProduct",
    dataType: "json",
    type: "POST"
});

amplify.request.define("SearchProduct", "ajax", {
    url: "/CMS/SearchProduct",
    dataType: "json",
    type: "GET"
});

Product.Update = function (id, name, cateId, customer, summary, content, status, image, createDate, tags, langid, isShowHomePage, callback) {

    amplify.request("UpdateProduct", {
        ID: id, Name: name, CateId: cateId, Customer: customer, Summary: summary, Content: content, Status: status == 2 ? 1 : status,
        Image: image, IsHot: status == 2 ? 1 : 0, CreateDate: createDate, Tags: tags, LangId: langid, IsShowHomePage: isShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

Product.AddProduct = function (name, cateId, customer, summary, content, status, image, createDate, tags, langid, isShowHomePage, callback) {

    amplify.request("AddProduct", {
        name: name, cateId: cateId, customer: customer, summary: summary, content: content, status: status == 2 ? 1 : status,
        image: image, isHot: status == 2 ? 1 : 0, createDate: createDate, tags: tags, langid: langid, IsShowHomePage: isShowHomePage
    }, function (data) {
        if (callback) callback(data);
    });
}

Product.Delete = function (id, callback) {

    amplify.request("DeleteProduct", {
        id: id
    }, function (data) {
        if (callback) callback(data);
    });
}

Product.Get = function (cateId, key, pageIndex, recordPerPage, callback) {

    amplify.request("SearchProduct", {
        langId: 0, cateId: cateId, key: key, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
