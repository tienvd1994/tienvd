var Contact = function () {
    var self = this;
}

amplify.request.define("UpdateContactStatus", "ajax", {
    url: "/CMS/UpdateContactStatus",
    dataType: "json",
    type: "GET"
});

amplify.request.define("GetContacts", "ajax", {
    url: "/CMS/GetContacts",
    dataType: "json",
    type: "GET"
});

Contact.UpdateStatus = function (id, callback) {

    amplify.request("UpdateContactStatus", {
        id: id, status: 1
    }, function (data) {
        if (callback) callback(data);
    });
}

Contact.Get = function (type, pageIndex, recordPerPage, callback) {

    amplify.request("GetContacts", {
        type: type, pageIndex: pageIndex, recordPerPage: recordPerPage
    }, function (data) {
        if (callback) callback(data);
    });
}
