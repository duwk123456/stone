/**
 * Created by wll on 2017/3/1.
 */

$(function () {
    bindClick();
    initSelect();
});

function  initSelect() {

    $.post(home+'/userController/getJob.forward',{},function(data){
        if(data){
            $("#job").empty().append(function(){
                var options="";
                $.each(data.results.data,function(i,v){
                    options+='<option value="'+v.entryId+'">'+  v.entryName+'</option>';
                });
                return options;
            });
        }
    })

}

function bindClick() {
    var loginName = $("#loginName");
    var userName = $('#userName');
    var pwd = $("#pwd");
    var surePwd = $("#surePwd");
   /* var address = $("#address");*/
    var tel = $("#tel");
    var salary = $("#salary");

    $("#sure").off("click").on("click", function () {
        if (loginName.val() == "") {
            dialog("登录账号不能为空!");
            return false;
        }
        if (pwd.val() == "" || surePwd.val() == "") {
            dialog("请输入密码");
            return false;
        }
        if (pwd.val() != surePwd.val()) {
            dialog("密码确认不正确");
            return false;
        }
        var job=$("#job option:selected").val();
        var  userInfo={};
        userInfo.loginName=loginName.val();
        userInfo.password=pwd.val();
        userInfo.userName=userName.val();
        userInfo.tel=tel.val();
        userInfo.salary=salary.val();
        userInfo.job=job;
        userInfo.userType=3;

        $.post(home+'/userController/addUser.forward',userInfo,function(data){
            if(data.results.success){
                dialog("添加成功");
            }else{
                dialog("添加失败");
            }

        });


    });
    $("#cancle").off("click").on("click", function () {
        loginName.val("");
        userName.val("");
        pwd.val("");
        surePwd.val("");
        salary.val("");
        tel.val("");
    });
}