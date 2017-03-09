<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/3
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //    String userId = request.getParameter("userId");
//    request.setAttribute("userId", userId);

%>
<html>
<head>
    <title>客户档案</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">

    <style type="text/css">
        td {
            /*padding: 10px 20px;*/
            text-align: center;
        }
    </style>


</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>人事档案管理<b class="tip"></b>客户档案</div>
<table class="tbform">

    <tbody>

    <tr>
        <td>姓名</td>
        <td>电话</td>
        <td>住址</td>

    </tr>
    <tr>
        <td>某某某</td>
        <td>13500000000</td>
        <td>福建省福州市马尾区儒江西路1号</td>

    </tr>
    <tr>
        <td>某某某</td>
        <td>13500000000</td>
        <td>福建省福州市马尾区儒江西路1号</td>

    </tr>
    <tr>
        <td>某某某</td>
        <td>13500000000</td>
        <td>福建省福州市马尾区儒江西路1号</td>

    </tr>
    </tbody>

</table>

</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/stoneOrder.js"></script>
</html>
