/**
 * Created by wll on 2017/3/1.
 */

$(function () {
    bindClick();

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
                dialog("密码修改成功");
            }else{
                dialog("密码修改失败");
            }
        },"json");


    });
    $("#cancle").off("click").on("click", function () {
        pwd.val("");
        surePwd.val("");
        newPwd.val("");
    });
}