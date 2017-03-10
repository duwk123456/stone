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

	userInfo.userName=$("#userName").val();
	userInfo.tel=$("#tel").val();
	userInfo.addr=$("#addr").val();
	userInfo.userId=userId;


	$.post(home+"/userController/updateUser.forward",userInfo,function(jsonStr){

		var data = jsonStr.results;
		if(data.success){
			alert("成功");
		}

	},"json");

}




