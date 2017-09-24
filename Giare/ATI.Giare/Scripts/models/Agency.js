var Agency = function () {
    var self = this;
}

amplify.request.define("UpdateAgency", "ajax", {
    url: "/CMS/UpdateAgency",
    dataType: "json",
    type: "GET"
});

amplify.request.define("DeleteAgency", "ajax", {
    url: "/CMS/DeleteAgency",
    dataType: "json",
    type: "GET"
});

amplify.request.define("AddAgency", "ajax", {
    url: "/CMS/AddAgency",
    dataType: "json",
    type: "GET"
});

amplify.request.define("SearchAgency", "ajax", {
    url: "/CMS/SearchAgency",
    dataType: "json",
    type: "GET"
});

Agency.Update = function (id, name, code, address, mobile, email, province, provinceSeolink, ditrict, ditrictSeoLink, image, thumb, introduce, orderNo, level, status, 
	long1, lang, callback) {

    amplify.request("UpdateAgency", {
        id: id, name: name, code: code, address: address, mobile: mobile, email: email, province: province, provinceSeolink: provinceSeolink, ditrict: ditrict,
        ditrictSeoLink: ditrictSeoLink, image: image, thumb: thumb, introduce: introduce, orderNo: orderNo, level: level, status: status, lang: lang, long1: long1
    }, function (data) {
        if (callback) callback(data);
    });
}

Agency.AddAgency = function (name, code, address, mobile, email, province, provinceSeolink, ditrict, ditrictSeoLink, image, thumb, introduce, orderNo, level,
 status, long1, lang, callback) {

    amplify.request("AddAgency", {
        name: name, code: code, address: address, mobile: mobile, email: email, province: province, provinceSeolink: provinceSeolink, ditrict: ditrict,
        ditrictSeoLink: ditrictSeoLink, image: image, thumb: thumb, introduce: introduce, orderNo: orderNo, level: level, status: status, lang: lang, long1: long1
    }, function (data) {
        if (callback) callback(data);
    });
}

Agency.Delete = function (id, name, callback) {

    amplify.request("DeleteAgency", {
        id: id, name: name
    }, function (data) {
        if (callback) callback(data);
    });
}

Agency.Get = function (key, province, pageIndex, recordPerPage, callback) {

    amplify.request("SearchAgency", {
        key: key, province: province, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
