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
    <title>石材定制功能</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>石材定制<b class="tip"></b>添加定制</div>
<table class="tbform">
    <thead>
    <tr>
        <td  class="auto-style2">&nbsp;请填写定制信息</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl">形状:</td>
        <td class="detail">
            <input type="text" class="ipt" id="shape"/>
        </td>
        <td class="tdl">长度(m):</td>
        <td class="td_detail">
            <input type="text" class="ipt" oninput="isNum($(this),1, false)" id="length"/></td>
    </tr>

    <tr>
        <td class="tdl">高度(m):</td>
        <td class="detail">
            <input type="text" class="ipt" oninput="isNum($(this),1, false)" id="height"/>
        </td>
        <td class="tdl">宽度(m):</td>
        <td class="td_detail">
            <input  type="text" class="ipt" oninput="isNum($(this),1, false)" id="width"/></td>
    </tr>
    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="确定"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="cancle" class="btn" type="button" value="取消"/>
        </td>
    </tr>

</table>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/fui.min.js"></script>
<script>
    var userId = $.fui.store.get("userId");
</script>
<script src="js/biz/customMade.js"></script>


</html>
