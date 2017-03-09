<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setAttribute("home", request.getContextPath());

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>石材订购管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/login.css"/>

</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div id="clouds" class="stage"></div>
<div class="loginmain">
</div>

<div class="row-fluid">
    <h1>石材订购管理系统</h1>

    <p>
        <label>帐&nbsp;&nbsp;&nbsp;号：<input type="text" id="uid"/></label>
    </p>

    <p>
        <label>密&nbsp;&nbsp;&nbsp;码：<input type="password" id="pwd"/></label>
    </p>
    <%--<p class="pcode">--%>
    <%--<label>效验码：<input type="text" id="code" maxlength="5" class="code" value="e5g88" /><img src="img/code.gif" alt="" class="imgcode" /><a href="#">下一张</a></label>--%>
    <%--</p>--%>
    <p class="tip">&nbsp;</p>
    <hr/>
    <input type="button" value=" 登 录 " class="btn btn-primary btn-large login"/>
    &nbsp;&nbsp;&nbsp;<input type="button" value=" 注 册 " class="btn btn-large"/>
</div>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/fui.min.js"></script>
<script src="Scripts/jquery.spritely-0.6.js"></script>
<script src="Scripts/chur.min.js"></script>
<script src="js/biz/login.js"></script>
<script src="js/biz/common.js"></script>
</html>
