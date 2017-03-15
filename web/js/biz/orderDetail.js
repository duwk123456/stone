$(function(){
    initData();
});



function initData(){
    var param={};
    param.orderId=orderId;
    $.post(home+"/orderController/getOrderDetail.forward",param,function(data){
        showData(data.results,1,10);
    },"json");

}



function showData(result,page,rows){
    var tbody = $("#tbody");
    tbody.empty();
    $("#pageBar").hide();
    var __html=[];
    if(result.success){
        var dataList  = result.data;
        if(dataList&&dataList.length>0){
            for(var _idx= 0,_len=dataList.length;_idx<_len;_idx++) {
                __html.push("<tr>");
                __html.push("<td>" + dataList[_idx].shape + "</td>");
                __html.push("<td>" + dataList[_idx].width + "</td>");
                __html.push("<td>" + dataList[_idx].length + "</td>");
                __html.push("<td>" + dataList[_idx].height + "</td>");
                __html.push("<td>"+dataList[_idx].price+"</td>");
                __html.push("<td>" + dataList[_idx].num + "</td>");
                __html.push("<td>" + dataList[_idx].totalPrice + "</td>");
                __html.push("</tr>");
            }
        }
    }

    tbody.append(__html.join(""));

}





