$(function(){


	init();
});



function init(){

	$.post(home+"/userController/editUser.forward",{userId:userId},function(jsonStr){

		var userInfo = jsonStr.results.data;
		$("#userName").val(userInfo.userName);
		$("#loginName").val(userInfo.loginName);
		$("#tel").val(userInfo.tel);
		$("#addr").val(userInfo.addr);
		$("#jobName").val(userInfo.jobName);
	},"json");

	$("#sure").off("click").on("click",update);

}

function update() {
	var userInfo={};


	if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test($("#tel").val()))){
		dialog("不是完整的11位手机号或者正确的手机号前七位");
		return false;
	}

	userInfo.userName=$("#userName").val();
	userInfo.tel=$("#tel").val();
	userInfo.addr=$("#addr").val();
	userInfo.userId=userId;
	$.post(home+"/userController/updateUser.forward",userInfo,function(jsonStr){

		var data = jsonStr.results;
		if(data.success){

				dialog("更新成功");

		}

	},"json");

}




