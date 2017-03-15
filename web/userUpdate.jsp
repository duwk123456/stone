<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/1
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("home", request.getContextPath());
    String id=request.getParameter("userId");
%>
<html>
<head>
    <title>信息修改</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">


</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>账户管理<b class="tip"></b>店员资料修改</div>
<table class="tbform">

    <tbody>

    <tr>
        <td class="tdl">登录名:</td>
        <td class="detail">
            <input id="loginName" type="text" class="ipt" readonly="readonly"/>
        </td>
        <td class="tdl">电话:</td>
        <td class="td_detail">
            <input id="tel" maxlength="11" atype="tel" class="ipt" readonly="readonly" /></td>
    </tr>

    <tr>
        <td class="tdl">姓名:</td>
        <td class="td_detail">
            <input id="userName" type="text" class="ipt" readonly="readonly"/></td>

        <td class="tdl">薪资:</td>
        <td class="detail">
            <input id="salary" type="text" class="ipt"/>
        </td>
    </tr>


    <tr>
        <td class="tdl">职位:</td>
        <td class="detail">
           <select id="job" style="width:181px"></select>
        </td>

    </tr>
    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="确定"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="cancle" class="btn" type="button" value="取消"/>
        </td>
    </tr>

    </tbody>
</table>
</body>
<script src="Scripts/tb.js"></script>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/common.js"></script>
<script>
    var id=<%=id%>;
    var userId;
    var jobId;
    $(function () {
        $.post(home+'/userController/getJob.forward',{},function(data){
            if(data){
                $("#job").empty().append(function(){
                    var options="";
                    $.each(data.results.data,function(i,v){
                        options+='<option value="'+v.entryId+'">'+  v.entryName+'</option>';
                    });
                    return options;
                });
            }
        })


    $.post(home+'/userController/editUser.forward',{userId:id},function(data){
        if(data.results.success){
            userId=data.results.data.userId;
            $("#loginName").val(data.results.data.loginName);
            $("#userName").val(data.results.data.userName);
            $("#tel").val(data.results.data.tel);
            $("#salary").val(data.results.data.salary);
            $("#job").val(data.results.data.job);
        }else{
            dialog("读取个人信息失败");
        }

    });

        $("#sure").off("click").on("click", function () {



            var job=$("#job option:selected").val();
            var  userInfo={};


            userInfo.salary=$("#salary").val();
            userInfo.job=job;
            userInfo.userId=userId;

            $.post(home+'/userController/updateUser.forward',userInfo,function(data){
                if(data.results.success){
                    dialog("更新成功");
                }else{
                    dialog("更新失败");
                }

            });

    });
    });
</script>
</html>
