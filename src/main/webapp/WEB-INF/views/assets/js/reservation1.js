var flag1 = false, flag2 = false, flag3 = false;

document.getElementById("account").addEventListener("blur", accblur);


function accblur() {
    var theName = document.getElementById("account").value;
    var theNameLen = theName.length;
    if (theNameLen == "") {
        document.getElementById("acccheck").innerHTML = "<img src='../images/error.png' />此欄位必須輸入";
    }
    else if (theNameLen >= 2) {
        var re = new RegExp("^[\u4E00-\u9FA5]{2,}$");
        if (re.test(theName)) {
            document.getElementById("acccheck").innerHTML = "<img src='../images/check.png' />正確";
            flag1 = true;
        }
        else {
            document.getElementById("acccheck").innerHTML = "<img src='../images/error.png' />姓名必須為中文字";

        }
    }
    else {
        document.getElementById("acccheck").innerHTML = "<img src='../images/error.png' />姓名必須大於2個字";
    }
}
