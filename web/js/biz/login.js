/**
 * Created by wll on 2017/2/27.
 */

$(function () {
    initView();
    bindClick();


});
function initView() {

    $('#clouds').pan({fps: 20, speed: 0.7, dir: 'right', depth: 10});

}
function bindClick() {

    $('.login').off("click").on("click", function () {
        var uid = $('#uid').val();
        var pwd = $('#pwd').val();
        if (uid == "") {
            $('.tip').html("登录名不能为空!");
            $('#uid').focus();
            return false;
        }
        if (pwd == "") {
            $('.tip').html("密码不能为空!");
            $('#pwd').focus();
            return false;
        }
        else {


            var loginParam = {
                url: home + requestUrl.login,
                data: {
                    loginName: uid,
                    password: pwd
                },
                success: function (data) {

                    var result = data.results;
                    console.info("data:====" + JSON.stringify(data));
                    if (result.success) {
                        userId = result.data.userId;
                        userName = result.data.userName;
                        $.fui.store.set("userId", userId);
                        $.fui.store.set("userName", userName);
                        window.location.href = "index.jsp";
                    }
                    else {

                        //alert("msg" + result.msg);
                        $('.tip').html(result.msg);

                    }
                }
                //data:
            };
            requestData(loginParam);
        }


        //
        //if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") {
        //    $('.tip').html('')
        //}
        //else {
        //    location.href = 'Index.html';
        //}
    })
}