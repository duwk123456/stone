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
    <title>订单查询</title>
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
<div class="alert alert-info">当前位置<b class="tip"></b>业务查询<b class="tip"></b>订单查询</div>
<table class="tbform">

    <tbody>
    <tr>
        <td colspan="4" style="text-align: left;">订单号:201703031455</td>
        <td colspan="6" style="text-align: left;">日期:2017-03-02</td>
    </tr>
    <tr>
        <td>名称</td>
        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>数量</td>
        <td>单价</td>
        <td>总价格</td>
    </tr>
    <tr id="">
        <td>某某某某某某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td id="unitPice_id">100.0</td>
        <td id="allPrice_id"><span>200.0</span></td>

    </tr>
    <tr>
        <td>某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td>100.0</td>
        <td><span>200.0</span></td>
    </tr>
    <tr>
        <td>某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td>100.0</td>
        <td><span>200.0</span></td>
    </tr>


    <tr>
        <td colspan="4" style="text-align: left;">订单号:201703031455</td>
        <td colspan="6" style="text-align: left;">日期:2017-03-02</td>
    </tr>
    <tr>
        <td>名称</td>
        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>数量</td>
        <td>单价</td>
        <td>总价格</td>
    </tr>
    <tr>
        <td>某某某某某某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td>100.0</td>
        <td><span>200.0</span></td>
    </tr>
    <tr>
        <td>某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td>100.0</td>
        <td><span>200.0</span></td>
    </tr>
    <tr>
        <td>某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td>2</td>
        <td>100.0</td>
        <td><span>200.0</span></td>
    </tr>

    <tr>
        <td colspan="12" style="text-align: right;padding: 10px 0">
            <a href="">上一页</a>
            <input type="text" oninput="isNum($(this),0, false)" style="width: 50px;">
            <input type="button" value="Go">
            <a href="">下一页</a>
        </td>
    </tr>
    </tbody>

</table>

</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/stoneOrder.js"></script>
</html>
