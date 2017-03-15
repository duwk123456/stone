$(function(){
    bindEvent();
    initData();
});



function bindEvent(){
    //查询
    $("#sure").off("click").on("click",function(){
        freshData(null,10,1);
    });

    $("#exportOrder").off("click").on("click",function(){
        var params={};
        var str="?";
        str+"type="+type;
        if(userType==2){
            str+"&userId="+userId;
        }
        str+"&beginTime"+$("#beginTime").val();
        str+"&endTime"+$("#endTime").val();


        window.location.href=home+"/orderController/exportReport.forward"+str;

    });



}

function initData(){
    var param={};
    param.page=1;
    param.rows=10;
    param.type=type;
    if(userType==2){
        param.userId=userId;
    }
    $.post(home+"/orderController/getOrderList.forward",param,function(data){
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
                __html.push("<tr id='Tr_" + dataList[_idx].orderId + "' val='" + dataList[_idx].orderId + "'>");
                __html.push("<td>" + dataList[_idx].orderSeq + "</td>");
                __html.push("<td>" + dataList[_idx].createTime + "</td>");
                __html.push("<td>" + dataList[_idx].userName + "</td>");
                if(type==2){
                    if(dataList[_idx].saleType==1){
                    __html.push("<td>1年内店员上门清洗</td>");
                    }else if(dataList[_idx].saleType==0){
                        __html.push("<td>送清洗剂</td>");
                    }else {
                        __html.push("<td></td>");
                    }
                }
                __html.push("<td style='text-align:center;'><a   target='Conframe' href='orderDetail.jsp?orderId="+dataList[_idx].orderId+"'>详情</a>&nbsp;")
                __html.push("</tr>");
            }
        }
    }else{
        dialog("查询出错了");
    }
    tbody.append(__html.join(""));
    $("#pageBar").pageBar({
        total : result.total,
        rows : rows,
        showPageCount: false,
        pageNumber : page,
        callback : function(total, rows, pageNumber) {
            freshData(total,rows, pageNumber);
        }
    });

    if(result.total>10){
        $("#pageBar").show();
    }

}



function freshData(total,rows, pageNumber){
    var params={};
    params.page=pageNumber;
    params.rows=rows;
    params.type=type;
    if(userType==2){
        params.userId=userId;
    }
    params.beginTime=$("#beginTime").val();
    params.endTime=$("#endTime").val();
    $.post(home+"/orderController/getOrderList.forward",params,function(data){
        showData(data.results,pageNumber,rows);
    },"json");

}




