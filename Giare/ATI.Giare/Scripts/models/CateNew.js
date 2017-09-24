var CateNew = new function ()
{
    var self = this;
}

amplify.request.define("GetNewList", "ajax", {
    url: "/CMS/GetNewList",
    dataType: "json",
    type: "GET"
});


CateNew.GetNewList = function (langid, callback) {
    amplify.request("GetNewList", {
        langid: langid
    }, function (data) {
        if (callback) callback(data);
    });
};