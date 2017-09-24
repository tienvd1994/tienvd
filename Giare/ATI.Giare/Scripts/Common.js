function CheckEmailFormat(email) {
    var regex = new RegExp("^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");

    return regex.test($.trim(email));
};

function GetDateTime(time) {
    if (time === null) {
        return "";
    }

    if (time == undefined) {
        return "";
    }

    if ((navigator.userAgent.indexOf("Opera") >= 0 || navigator.userAgent.indexOf("MSIE") >= 0 || navigator.appName == 'Netscape') && time.indexOf("T") > 0) {
        var str = time.split('T');

        return str[1].split('.')[0] + " " + str[0].split('-')[2] + "/" + str[0].split('-')[1] + "/" + str[0].split('-')[0];
    }

    var datetime = new Date(+time.replace(/\/Date\((-?\d+)\)\//gi, "$1"));

    var hour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime.getHours();
    var minute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
    var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
    var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;

    var value = hour + ":" + minute + " " + date + "/" + month + "/" + datetime.getFullYear();
    return value.replace(/z/gi, '');
};

function GetDate(time) {
    if (time === null) {
        return "";
    }

    if (time == undefined) {
        return "";
    }

    if (time == "0001-01-01T00:00:00") {
        return "";
    }

    if ((navigator.userAgent.indexOf("Opera") >= 0 || navigator.userAgent.indexOf("MSIE") >= 0 || navigator.appName == 'Netscape') && time.indexOf("T") > 0) {
        var str = new Array();
        str = time.split('T');

        return str[0].split('-')[2] + "/" + str[0].split('-')[1] + "/" + str[0].split('-')[0];
    }

    var expDate = new Date(+time.replace(/\/Date\((-?\d+)\)\//gi, "$1"));
    var date = expDate.getDate() < 10 ? "0" + expDate.getDate() : expDate.getDate();
    var month = expDate.getMonth() + 1 < 10 ? "0" + (expDate.getMonth() + 1) : (expDate.getMonth() + 1);

    var datetime = date + "/" + month + "/" + expDate.getFullYear();

    return datetime == "01/00/1" || datetime == "01/00/1753" ? "" : date + "/" + month + "/" + expDate.getFullYear();
};

function numbersonly(myfield, e, dec) {
    var key;
    var keychar;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if (e.keyCode == 35 || e.keyCode == 36) {
        myfield.focus();
        myfield.select();

        return true;
    }

    keychar = String.fromCharCode(key);

    // control keys
    if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 27)) {
        return true;
    }
    else if (key == 13) {
        return false;
    }
        // numbers
    else if ((("0123456789./").indexOf(keychar) > -1))
        return true;

        // decimal point jump
    else if (dec && (keychar == ".")) {
        myfield.form.elements[dec].focus();
        return false;
    }
    else
        return false;
}
function addCommas(src) {
    if (src == null) {
        return;
    }

    src = src.toString().replace(/\,/g, "");
    return src.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
};