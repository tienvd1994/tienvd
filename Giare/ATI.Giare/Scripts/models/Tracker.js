var Tracker = function () {
    var self = this;
}

amplify.request.define("GetTrackers", "ajax", {
    url: "/CMS/GetTrackers",
    dataType: "json",
    type: "GET"
});

Tracker.Get = function (ip, pageIndex, recordPerPage, callback) {

    amplify.request("GetTrackers", {
        ip: ip, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
