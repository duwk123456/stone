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
    });
}
function loadData(data) {
    _html = [];

    for (var i = 0; i < data.length; i++) {
        _html.push(" <tr> <td style='text-align: center'>" + data[i] + "</td> </tr>")
    }
    $("#showAdvicdContent").append(_html.join(""));
}