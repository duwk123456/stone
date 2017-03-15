/**
 * Created by wll on 2017/2/28.
 */
$(function () {
    initView();
    bindClick();
});

function initView() {
    //$("#addAdvice").css("display","none");
    //$("#showAdvice").css("display","block");

    //$("#addAdvice").css("display","block");
    //$("#showAdvice").css("display","none");
    $("#advice").val("");


}
function bindClick() {

    $("#cancle").off("click").on("click", function () {
        $("#advice").val("");

    });
    $("#sure").off("click").on("click", function () {
        var advice = $("#advice").val();
        if (advice=="") {
            dialog("内容不得为空!");
            return false;
        }
        var param={};
        param.noticeContent=advice;
        $.post(home+'/noticeController/addNotice.forward',param,function(data){
            if(data.results.success){
                dialog("添加成功");
            }else{
                dialog("添加失败");
            }

        });
        });
}

/*
function loadData(data) {
    _html = [];

    for (var i = 0; i < data.length; i++) {
        _html.push(" <tr> <td style='text-align: center'>" + data[i] + "</td> </tr>")
    }
    $("#showAdvicdContent").append(_html.join(""));
}*/
