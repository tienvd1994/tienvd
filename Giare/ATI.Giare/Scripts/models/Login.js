var Login = function () {
    var self = this;
}
amplify.request.define("DoLogin", "ajax", {
    url: "/Home/DoLogin",
    dataType: "json",
    type: "GET"
});

Login.DoLogin = function (userName, password, callback) {

    amplify.request("DoLogin", {
        userName: userName, password: hex_md5(hex_md5(hex_md5(password)))
    }, function (data) {
        if (callback) callback(data);
    });
}
