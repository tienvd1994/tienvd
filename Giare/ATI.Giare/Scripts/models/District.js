var Distric = function () {
    var self = this;
}

amplify.request.define("GetDistrictByProvince", "ajax", {
    url: "/CMS/GetDistrictByProvince",
    dataType: "json",
    type: "GET"
});

Distric.Get = function (province, callback) {

    amplify.request("GetDistrictByProvince", {province: province}, function (data) {
        if (callback) callback(data);
    });
}
