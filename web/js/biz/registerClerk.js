/**
 * Created by wll on 2017/3/1.
 */

$(function () {
    bindClick();
});
function bindClick() {
    var loginName = $("#loginName");
    var userName = $('#userName');
    var pwd = $("#pwd");
    var surePwd = $("#surePwd");
    var address = $("#address");
    var tel = $("#tel");
    $("#sure").off("click").on("click", function () {
        if (loginName.val() == "") {

            dialog("登录账号不能为空!");
            return false;

        }

        if (pwd.val() == "" || surePwd == "") {

            dialog("请输入密码");
            return false;

        }

        if (pwd.val() != surePwd.val()) {

            dialog("密码确认不正确");
            return false;

        }

    });
    $("#cancle").off("click").on("click", function () {
        loginName.val("");
        userName.val("");
        pwd.val("");
        surePwd.val("");
        address.val("");
        tel.val("");
    });
}