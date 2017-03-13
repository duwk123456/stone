$(function(){
    bindEvent();
    initData();
});



function bindEvent(){
    //查询
    $("#sure").off("click").on("click",function(){
        freshData(null,10,1);
    });

    $("#sureOrder").off("click").on("click",function(){
        var flag=false;
        var orderArray=[];

        $("input[name='ck']:checkbox:checked").each(function(){
            flag=true;
            var id = $(this).val();
            var count = $("#count_" + id).val();
            var num = $("#num_" + id).text();

            if(count==""||count<=0){
                dialog("采购的数量必填");
                return false;
            }
            count = parseInt(count);
            num=parseInt(num);
            if(count>num){
                dialog("采购的数量:"+count+"大于库存量:"+num);
                return false;
            }
            var order={};
            order.num=num;
            order.price=$("#unitPice_" + id).text();
            order.cnt=count;
            order.inventoryId=id;
            orderArray.push(order);
        })
        if(!flag){
            dialog("未选择石材!");
            return false;
        }

        var param={};
        param.userId=userId;
        param.type=2;
        param.jsonStr=JSON.stringify(orderArray);
        $.post(home+"/inventoryController/updateInventory.forward",param,function(data){
            if(data.results.success){
                window.location.href = "afterService.jsp?orderId="+data.results.data;
            }else{
                dialog("订购失败!");
                return false;
            }

        },"json");




    });



}

function initData(){
    var param={};
    param.page=1;
    param.rows=10;
    $.post(home+"/inventoryController/getInventoryList.forward",param,function(data){
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
                __html.push("<tr id='Tr_" + dataList[_idx].inventoryId + "' val='" + dataList[_idx].inventoryId + "'>");
                __html.push("<td><input type=\"checkbox\" name='ck' value="+dataList[_idx].inventoryId+"></td>");
                __html.push("<td>" + dataList[_idx].shape + "</td>");
                __html.push("<td>" + dataList[_idx].width + "</td>");
                __html.push("<td>" + dataList[_idx].length + "</td>");
                __html.push("<td>" + dataList[_idx].height + "</td>");
                __html.push("<td  id='num_"+dataList[_idx].inventoryId+"'>" + dataList[_idx].num + "</td>");
                __html.push("<td><input type=\"number\" id='count_"+dataList[_idx].inventoryId+"' style=\"width:100px;\" oninput=\"isNum($(this),0, false)\" onchange=\"totalPrice("+dataList[_idx].inventoryId+")\"></td>");
                __html.push("<td id='unitPice_"+dataList[_idx].inventoryId+"'>"+dataList[_idx].price+"</td>");
                __html.push("<td id='totalPrice_"+dataList[_idx].inventoryId+"'></td>");
                __html.push("</tr>");
            }
        }
    }else{
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
    params.shape=$("#shape").val();
    params.price=$("#price").val();
    $.post(home+"/inventoryController/getInventoryList.forward",params,function(data){
        showData(data.results,pageNumber,rows);
    },"json");

}

function totalPrice(id) {

    var count = $("#count_" + id).val();
    var unitPice = $("#unitPice_" + id).text();

    count = parseInt(count);
    unitPice = parseFloat(unitPice);
    $("#totalPrice_" + id).text(count * unitPice);
}


