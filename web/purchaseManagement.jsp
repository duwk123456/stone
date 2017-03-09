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
  <title>进货管理</title>
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
<div class="alert alert-info">当前位置<b class="tip"></b>库存管理<b class="tip"></b>进货管理</div>
<table class="tbform">
  <thead>
  <tr>
    <td colspan="12" class="auto-style2">&nbsp;请选择进货信息</td>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td></td>
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


  </tr>

  <tr>
    <td colspan="12" style="text-align: center;padding: 10px;">
      <input id="sure" class="btn" type="button" value="确定"/>
      <input id="cancle" class="btn" type="button" value="取消"/>
    </td>
  </tr>
  </tbody>

</table>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/stoneOrder.js"></script>
</html>
