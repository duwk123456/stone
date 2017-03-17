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

        if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(tel.val()))){
            dialog("不是完整的11位手机号或者正确的手机号前七位");
            return false;
        }

        var reg = new RegExp("^[0-9]+(.[0-9]{1,2})?$");
        if(!reg.test(salary.val())){
            dialog("薪资必须是整数或者包含1、2位小数的数值");
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
        userInfo.userType=2;


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