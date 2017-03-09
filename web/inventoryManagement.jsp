<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/6
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>库存管理</title>
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
<div class="alert alert-info">当前位置<b class="tip"></b>库存管理<b class="tip"></b>库存列表</div>
<table class="tbform">
    <tbody>
    <tr>
        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>价格</td>
        <td>当前数量</td>

    </tr>
    <tr>

        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>100.0</td>
        <td>200</td>
    </tr>
    <tr>

        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>100.0</td>
        <td>200</td>
    </tr>
    <tr>

        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>100.0</td>
        <td>200</td>
    </tr>
    </tbody>

</table>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/stoneOrder.js"></script>
</html>
