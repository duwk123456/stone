$(function(){
    bindEvent();
	initData();
});



function bindEvent(){
	//查询
	$("#sure").off("click").on("click",function(){
		freshData(null,10,1);
	});
	$("#canle").off("click").on("click",function(){
		$("#noticeContent").val("");
	});


}

function initData(){
     var param={};
		param.page=1;
		param.rows=10;

	$.post(home+"/noticeController/getNoticeList.forward",param,function(data){
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
				__html.push("<tr id='Tr_" + dataList[_idx].noticeId + "' val='" + dataList[_idx].noticeId + "'>");
				__html.push("<td>" + dataList[_idx].noticeContent + "</td>");
				__html.push("<td>" + dataList[_idx].createTime + "</td>");
				__html.push("<td style='text-align:center;'><a   target='Conframe' href='noticeUpdate.jsp?noticeId="+dataList[_idx].noticeId+"'>修改</a>&nbsp;|&nbsp;");
				__html.push("<a href='javascript:void(0);' onclick=\"deleteData('" + dataList[_idx].noticeId + "');return false;\">删除</a>&nbsp;");
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
	params.noticeContent=$("#noticeContent").val();

	$.post(home+"/noticeController/getNoticeList.forward",params,function(data){
		showData(data.results,pageNumber,rows);
	},"json");
	
}

function deleteData(id){


	$.post(home+"/noticeController/updateNotice.forward",{noticeId:id,status:0},function(data){
		if(data.results.success){
			alert(data.results.msg);
			freshData(null,10,1);
		}else{
			alert(data.results.msg);
		}

	},"json");
}

