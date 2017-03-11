/**
 * Created by wll on 2017/3/1.
 */

$(function () {
    bindClick();
});


function bindClick() {
    var shape = $("#shape");
    var height = $('#height');
    var width = $("#width");
    var length = $("#length");

    $("#sure").off("click").on("click", function () {
        if (shape.val() == "") {
            dialog("形状不能为空!");
            return false;
        }
        if (height.val() == "") {
            dialog("高度不得为空!");
            return false;
        }
        if (length.val() =="") {
            dialog("长度不得为空!");
            return false;
        }
        if (width.val() =="") {
            dialog("宽度不得为空!");
            return false;
        }

        var  param={};
        param.shape=shape.val();
        param.height=height.val();
        param.length=length.val();
        param.width=width.val();
        param.createUserId=userId;


        $.post(home+'/customMadeController/addCustomMade.forward',param,function(data){
            if(data.results.success){

                alert(data.results.msg);
            }else{
                alert(data.results.msg);
            }

        });


    });
    $("#cancle").off("click").on("click", function () {
        shape.val("");
        height.val("");
        length.val("");
        width.val("");
    });
}