
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //    String userId = request.getParameter("userId");
//    request.setAttribute("userId", userId);

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
<div class="alert alert-info">当前位置<b class="tip"></b>石材订购<b class="tip"></b>石材订购</div>
<table class="tbform">
    <thead>
    <tr>
        <td  class="auto-style2">&nbsp;查询条件</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl">形状:</td>
        <td class="detail">
            <input type="text" class="ipt" id="shape"/>
        </td>
        <td class="tdl">价格</td>
        <td class="detail">
            <input type="text" class="ipt" id="price" oninput="isNum($(this),1, false)"/>
        </td>
    </tr>

    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="查询"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <input id="sureOrder" class="btn" type="button" value="下单"/>
        </td>
    </tr>

</table>

<table class="tbform">
    <thead>
    <tr>
        <td colspan="12" class="auto-style2">&nbsp;请选择订购信息</td>
    </tr>
    <tr>
        <td></td>
        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>库存量</td>
        <td>采购数量</td>
        <td>单价</td>
        <td>总价格</td>
    </tr>
    </thead>
    <tbody id="tbody">


<%--    <tr id="">
        <td><input type="checkbox"></td>
        <td>某某某某某某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td><input type="number" id="count_id" style="width:100px;" oninput="isNum($(this),0, false)"
                   onchange="totalPrice(id)">
        </td>
        <td id="unitPice_id">100.0</td>
        <td id="allPrice_id"><span>200.0</span></td>
    </tr>


    <tr>
        <td><input type="checkbox" class="check_box" id="check_id"></td>
        <td>某某</td>
        <td>圆形</td>
        <td>10.1</td>
        <td>2.0</td>
        <td>1.2</td>
        <td><input type="number" style="width:100px;"></td>
        <td>100.0</td>
        <td><span>200.0</span></td>


    </tr>--%>


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
</script>
<script src="js/json2.js"></script>
<script src="js/biz/stoneOrder.js"></script>
</html>
