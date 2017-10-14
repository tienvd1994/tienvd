var CommonInfo = function () {
    var self = this;
}

amplify.request.define("Update", "ajax", {
    url: "/CMS/UpdateCommonInfo",
    dataType: "json",
    type: "POST"
});

amplify.request.define("GetCommonInfo", "ajax", {
    url: "/CMS/GetCommonInfo",
    dataType: "json",
    type: "GET"
});

CommonInfo.Update = function (name, englishName, email, phone, mobile, fax, headOffice, headOfficeEn, office, officeEn, facebook, skype, summary, summaryEn, shortName,
    langId, logo, logo2, long, lat, IsShowService, IsShowProduct, callback) {

    amplify.request("Update", {
        Name: name, EnglishName: englishName, Email: email, Phone: phone, Mobile: mobile, Fax: fax, HeadOffice: headOffice, HeadOfficeEn: headOfficeEn,
        Office: office, OfficeEn: officeEn, Facebook: facebook, Skype: skype, Summary: summary, SummaryEn: summaryEn, ShortName: shortName, LangId: langId, Logo: logo,
        Logo2: logo2, Long: long, Lang: lat, IsShowService: IsShowService, IsShowProduct: IsShowProduct
    }, function (data) {
        if (callback) callback(data);
    });
}

CommonInfo.Get = function (langId, callback) {

    amplify.request("GetCommonInfo", {
        langId: langId
    }, function (data) {
        if (callback) callback(data);
    });
}
