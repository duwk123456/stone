/**
 * Created by wll on 2017/3/1.
 */

$(function () {
    bindClick();
    alert(userId);
});
function bindClick() {


    var pwd = $("#pwd");
    var surePwd = $("#surePwd");
    var newPwd = $('#newPwd');
    $("#sure").off("click").on("click", function () {
        if (pwd.val() == "") {

            dialog("旧密码不能为空!");
            return false;

        }
        if (newPwd.val() == "") {

            dialog("请输入新密码");
            return false;
        }

        if (newPwd.val() != surePwd.val()) {

            dialog("密码确认不正确");
            return false;
        }

        $.post(home+"/userController/updatePwd.forward",{password:pwd.val(),newPwd:newPwd.val(),userId:userId},function(data){
            if(data.results.success){
                alert("密码修改成功");
            }else{
                alert(data.results.msg);
            }
        },"json");


    });
    $("#cancle").off("click").on("click", function () {
        pwd.val("");
        surePwd.val("");
        newPwd.val("");
    });
}