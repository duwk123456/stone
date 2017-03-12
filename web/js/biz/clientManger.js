$(function(){
    bindEvent();
	initData();
});

function initUI(){

}

function bindEvent(){
	//查询
	$("#sure").off("click").on("click",function(){
		freshData(null,10,1);
	});
	
	//取消
	$("#cancle").off("click").on("click",function(){
		$("#userName").val("");
		$("#tel").val("");
		$("#addr").val("");
	});
}

function initData(){
	$.post(home+"/userController/getUserList.forward",{page:1,rows:10,userType:2},function(data){
		showData(data.results,1,10);
	},"json");
	
}






function showData(result,page,rows){
	var tbody = $("#clientTbody");
	tbody.empty();
	$("#pageBar").hide();
	var __html=[];
	if(result.success){
		var userList  = result.data;
		if(userList&&userList.length>0){
			for(var _idx= 0,_len=userList.length;_idx<_len;_idx++){
              	__html.push("<tr id='clientTr_"+userList[_idx].userId+"' val='"+userList[_idx].userId+"'>");
            	__html.push("<td>"+userList[_idx].loginName+"</td>");
				__html.push("<td>"+userList[_idx].userName+"</td>");
              	__html.push("<td>"+userList[_idx].tel+"</td>");
             	__html.push("<td style='text-align:center;overflow:hidden; white-space: nowrap;text-overflow: ellipsis;' title='"+userList[_idx].addr+"'>"+userList[_idx].addr+"</td>");
				__html.push("<td style='text-align:center;'><a href='javascript:void(0);' onclick=\"deleteData('"+userList[_idx].userId+"');return false;\">删除</a>&nbsp;");
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
	params.userType=2;
	params.rows=rows;
	params.userName=$("#userName").val();
	params.tel=$("#tel").val();
	params.addr=$("#addr").val();
	$.post(home+"/userController/getUserList.forward",params,function(data){
		showData(data.results,pageNumber,rows);
	},"json");
	
}

function deleteData(id){


	$.post(home+"/userController/updateUser.forward",{userId:id,status:0},function(data){
		if(data.results.success){
			alert(data.results.msg);
			freshData(null,10,1);
		}else{
			alert(data.results.msg);
		}

	},"json");
}



