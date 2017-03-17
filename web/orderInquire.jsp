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
    String type = request.getParameter("type");
%>
<html>
<head>
    <title>订单查询</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">
    <link rel="stylesheet" type="text/css" href="js/page/pageBar_curr.css">

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
    <thead>
    <tr>
        <td  class="auto-style2">&nbsp;查询条件</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl">下单时间:</td>

    </tr>

    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="查询"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <input id="exportOrder" class="btn" type="button" value="导出"/>
        </td>
    </tr>

</table>

<table class="tbform">
    <thead>
    <tr>
        <td>订单号</td>
        <td>下单时间</td>
        <td>下单人</td>
        <td id="sale">售后服务</td>
        <td >操作</td>
    </tr>
    </thead>
    <tbody id="tbody">




    </tbody>

</table>
<div id="pageBar"  style="padding-left: 20%; text-align: center;width: 50%;"></div>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/page/pageBar_curr.js"></script>
<script src="js/biz/fui.min.js"></script>

<script>
    var userId = $.fui.store.get("userId");
    var userType = $.fui.store.get("userType");
    var type=<%=type%>;
    if(type==1){
        $("#sale").css("display","none");
    }
</script>
<script src="js/biz/orderList.js"></script>
