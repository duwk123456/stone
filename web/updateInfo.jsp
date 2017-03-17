<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/1
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息修改</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>

</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>账户管理<b class="tip"></b>信息修改</div>
<table class="tbform">

    <tbody>

    <tr>
        <td class="tdl">登录名:</td>
        <td class="detail">
            <input type="text" class="ipt" id="loginName" disabled="disabled"/>
        </td>
        <td class="tdl">电话:</td>
        <td class="td_detail">
            <input type="text" class="ipt" id="tel"/></td>
    </tr>

    <tr>
        <td class="tdl">姓名:</td>
        <td class="td_detail">
            <input type="text" class="ipt" id="userName"/></td>

        <td class="tdl job_cls">职位:</td>
        <td class="detail job_cls">
            <input type="text" class="ipt"  id="jobName" disabled="disabled"/>
        </td>

        <td class="tdl addr_cls">地址:</td>
        <td class="detail addr_cls">
            <input type="text" class="ipt" id="addr"/>
        </td>

    </tr>

<%--    <tr>
        <td class="tdl">密码:</td>
        <td class="detail">
            <input type="password" class="ipt"/>
        </td>
        <td class="tdl">确认密码:</td>
        <td class="td_detail">
            <input type="password" class="ipt"/></td>
    </tr>--%>
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
<script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/fui.min.js"></script>
<script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="Scripts/tb.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/common.js"></script>
<script>
  var userId = $.fui.store.get("userId");

  var userType = $.fui.store.get("userType");
    if(userType==3){
        $(".job_cls").css("display","none");
    }
    if(userType==2||userType==1){
        $(".addr_cls").css("display","none");
    }

</script>
<script src="js/biz/updateUser.js"></script>
</html>
