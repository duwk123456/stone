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
<div class="alert alert-info">当前位置<b class="tip"></b>人事档案管理<b class="tip"></b>客户档案</div>

<table class="tbform">
    <thead>
    <tr>
        <td  class="auto-style2">&nbsp;查询条件</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl">姓名:</td>
        <td class="detail">
            <input type="text" class="ipt" id="userName"/>
        </td>
        <td class="tdl">电话:</td>
        <td class="td_detail">
            <input type="text" class="ipt"  id="tel"/></td>
    </tr>

    <tr>
        <td class="tdl">地址:</td>
        <td class="detail">
            <input type="text" class="ipt"  id="addr" />
        </td>
    </tr>
    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="查询"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="cancle" class="btn" type="button" value="重置"/>
        </td>
    </tr>

</table>

<table class="tbform" style="TABLE-LAYOUT: fixed;WORD-WRAP:break_word;width: 100%">

    <thead>
    <tr>
        <td width="10%"  class="tdl">用户名</td>
        <td width="10%"  class="tdl">姓名</td>
        <td width="10%"  class="tdl">电话</td>
        <td width="40%"  class="tdl">住址</td>
        <td width="10%"  class="tdl">操作</td>
    </tr>
    </thead>
    <tbody id="clientTbody">
    </tbody>

</table>
<div id="pageBar"  style="padding-left: 20%; text-align: center;width: 50%;"></div>

</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/stoneOrder.js"></script>
<script src="js/page/pageBar_curr.js"></script>
<script src="js/biz/clientManger.js"></script>


</html>
