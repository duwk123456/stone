<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/3
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>样品列表</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/page/pageBar_curr.css">
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">
    <style>
    td {
    /*padding: 10px 20px;*/
    text-align: center;
    }

    a {
    color: #586683 !important;
    }
    </style>
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>样品资料管理<b class="tip"></b>样品列表</div>
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
        </td>
    </tr>

</table>


<table class="tbform" style="TABLE-LAYOUT: fixed;WORD-WRAP:break_word;width: 100%">

    <thead>
    <tr>
        <td class="tdl">形状</td>
        <td class="tdl">长度(m)</td>
        <td class="tdl">高度(m)</td>
        <td class="tdl">宽度(m)</td>
        <td class="tdl">价格</td>
        <td class="tdl" id="opr">操作</td>
    </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
</table>
<div id="pageBar"  style="padding-left: 20%; text-align: center;width: 50%;"></div>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/page/pageBar_curr.js"></script>
<script src="js/biz/fui.min.js"></script>
<script>
    var userId = $.fui.store.get("userId");
    var userType = $.fui.store.get("userType");

</script>
<script src="js/biz/sampleList.js"></script>



</html>
