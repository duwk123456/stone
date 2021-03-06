$(function(){
    bindEvent();
	initData();
});


var uid;
function bindEvent(){
	//查询
	$("#sure").off("click").on("click",function(){
		freshData(null,10,1);
	});
	
	
	$("#add").off("click").on("click",function(){
	});
}

function initData(){
	$.post(home+"/userController/getUserList.forward",{page:1,rows:10,userType:3},function(data){
		showData(data.results,1,10);
	},"json");
	
}






function showData(result,page,rows){
	var tbody = $("#tbody");
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
				__html.push("<td>"+userList[_idx].salary+"</td>");
				__html.push("<td>"+userList[_idx].jobName+"</td>");
				__html.push("<td style='text-align:center;'><a   target='Conframe' href='userUpdate.jsp?userId="+userList[_idx].userId+"'>修改</a>&nbsp;|&nbsp;")
				__html.push("<a href='javascript:void(0);' onclick=\"deleteData('"+userList[_idx].userId+"');return false;\">删除</a>&nbsp;");
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
	params.userName=$("#userName").val();
	params.tel=$("#tel").val();
	params.userType=3;
	$.post(home+"/userController/getUserList.forward",params,function(data){
		showData(data.results,pageNumber,rows);
	},"json");
	
}

function deleteData(id){
	uid=id;
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

	$.post(home+"/userController/updateUser.forward",{userId:uid,status:0},function(data){
		if(data.results.success){

			dialog("删除成功");
			freshData(null,10,1);
		}else{
			alert(data.results.msg);
		}

	},"json");
}

