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
    <title>注册店员</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">


</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>账户管理<b class="tip"></b>注册店员</div>
<table class="tbform">

    <tbody>

    <tr>
        <td class="tdl">登录名:</td>
        <td class="detail">
            <input id="loginName" type="text" class="ipt"/>
        </td>
        <td class="tdl">电话:</td>
        <td class="td_detail">
            <input id="tel" maxlength="11" atype="tel" class="ipt"/></td>
    </tr>

    <tr>
        <td class="tdl">薪资:</td>
        <td class="detail">
            <input id="salary" type="text" class="ipt"/>
        </td>
        <td class="tdl">姓名:</td>
        <td class="td_detail">
            <input id="userName" type="text" class="ipt"/></td>
    </tr>

    <tr>
        <td class="tdl">密码:</td>
        <td class="detail">
            <input id="pwd" type="password" class="ipt"/>
        </td>
        <td class="tdl">确认密码:</td>
        <td class="td_detail">
            <input id="surePwd" type="password" class="ipt"/></td>
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
<script src="js/biz/registerClerk.js"></script>
</html>
