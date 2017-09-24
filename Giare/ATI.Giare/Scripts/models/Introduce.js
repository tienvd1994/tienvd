var Introduce = function () {
    var self = this;
}

amplify.request.define("Get", "ajax", {
    url: "/CMS/GetIntroduce",
    dataType: "json",
    type: "GET"
});

Introduce.Get = function (callback) {

    amplify.request("Get", {
    }, function (data) {
        if (callback) callback(data);
    });
}
