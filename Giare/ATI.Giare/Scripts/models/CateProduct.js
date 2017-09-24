var CateProduct = function () {
    var self = this;
}

amplify.request.define("AddCateProduct", "ajax", {
    url: "/CMS/AddCateProduct",
    dataType: "json",
    type: "POST"
});

amplify.request.define("Update", "ajax", {
    url: "/CMS/UpdateCateProduct",
    dataType: "json",
    type: "POST"
});

amplify.request.define("GetCateProduct", "ajax", {
    url: "/CMS/GetCateProduct",
    dataType: "json",
    type: "GET"
});

amplify.request.define("Delete", "ajax", {
    url: "/CMS/DeleteCateProduct",
    dataType: "json",
    type: "POST"
});


CateProduct.Add = function (name, englishName, description, orderNo, parrentCateId, parrentCateName, langid, callback) {
    amplify.request("AddCateProduct", {
        Name: name, EnglishName: englishName, Description: description, OrderNo: orderNo, ParrentCateId: parrentCateId, ParrentCateName: parrentCateName, LangId: langid
    }, function (data) {
        if (callback) callback(data);
    });
}

CateProduct.Update = function (id, name, englishName, description, orderNo, parrentCateId, parrentCateName, langid, callback) {
    amplify.request("Update", {
        ID: id, Name: name, EnglishName: englishName, Description: description, OrderNo: orderNo, ParrentCateId: parrentCateId, ParrentCateName: parrentCateName, LangId: langid
    }, function (data) {
        if (callback) callback(data);
    });
}

CateProduct.Get = function (langId, parrentCateId, callback) {

    amplify.request("GetCateProduct", { langId: langId, parrentCateId: parrentCateId }, function (data) {
        if (callback) callback(data);
    });
}

CateProduct.Delete = function (id, callback) {

    amplify.request("Delete", { id: id }, function (data) {
        if (callback) callback(data);
    });
}