
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //    String userId = request.getParameter("userId");
//    request.setAttribute("userId", userId);
    String id=request.getParameter("orderId");

%>
<html>
<head>
    <title>石材订购</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/page/pageBar_curr.css">
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
<div class="alert alert-info">当前位置<b class="tip"></b>订单管理<b class="tip"></b>订单详情</div>


<table class="tbform">
    <thead>
    <tr>
        <td colspan="12" class="auto-style2">&nbsp;订单详细信息</td>
    </tr>
    <tr>
        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>单价</td>
        <td>数量</td>
        <td>总价格</td>
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
    var orderId=<%=id%>;
</script>
<script src="js/biz/orderDetail.js"></script>
</html>
