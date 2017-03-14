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
    <title>公告列表</title>
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

        a {
            color: #586683 !important;
        }
    </style>


</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>通知栏<b class="tip"></b>公告列表</div>

<table class="tbform">
    <thead>
    <tr>
        <td  class="auto-style2">&nbsp;查询条件</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl">公告内容:</td>
        <td class="detail">
            <input type="text" class="ipt" id="noticeContent"/>
        </td>
    </tr>

    <tr>
        <td colspan="6" style="text-align: center;padding: 10px">
            <input id="sure" class="btn" type="button" value="查询"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="canle" class="btn"  type="button" value="取消" />
        </td>
    </tr>

</table>


<table class="tbform" style="TABLE-LAYOUT: fixed;WORD-WRAP:break_word;width: 100%">

    <thead>
    <tr>
        <td class="tdl" width="35%">内容</td>
        <td class="tdl" width="20%">创建时间</td>
        <td class="tdl" width="10%">操作</td>
    </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
</table>
<div id="pageBar"  style="padding-left: 20%; text-align: center;width: 50%;"></div>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/page/pageBar_curr.js"></script>
<script src="js/biz/fui.min.js"></script>
<script>
    var userId = $.fui.store.get("userId");
    var userType = $.fui.store.get("userType");
</script>
<script src="js/biz/noticeList.js"></script>
</html>
