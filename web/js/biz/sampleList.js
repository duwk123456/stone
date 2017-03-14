$(function(){
    bindEvent();
	initData();
});



function bindEvent(){
	//查询
	$("#sure").off("click").on("click",function(){
		freshData(null,10,1);
	});


}

function initData(){
     var param={};
		param.page=1;
		param.rows=10;

	$.post(home+"/productController/getProductList.forward",param,function(data){
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
				__html.push("<tr id='Tr_" + dataList[_idx].productId + "' val='" + dataList[_idx].productId + "'>");
				__html.push("<td>" + dataList[_idx].shape + "</td>");
				__html.push("<td>" + dataList[_idx].length + "</td>");
				__html.push("<td>" + dataList[_idx].height + "</td>");
				__html.push("<td>" + dataList[_idx].width + "</td>");
				__html.push("<td>" + dataList[_idx].price + "</td>");
					__html.push("<td style='text-align:center;'>");

				    __html.push("<a href='javascript:void(0);' onclick=\"deleteData('" + dataList[_idx].productId + "');return false;\">删除</a>&nbsp;");

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
	$.post(home+"/productController/getProductList.forward",params,function(data){
		showData(data.results,pageNumber,rows);
	},"json");
	
}


var id;
function deleteData(key){
	id=key;
	var param={};
	param={
		msg:"确认删除吗？",
		sure:'确定',
		cancle:'取消',
		sureCallBack:del
	}
	dialogConfirm(param);

}

function del(){

	$.post(home+"/productController/del.forward",{productId:id},function(data){
		if(data.results.success){
			dialog("删除成功");
			freshData(null,10,1);
		}else{
			dialog("删除失败");
		}

	},"json");
}
