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
    <title>石材订购</title>
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
<div class="alert alert-info">当前位置<b class="tip"></b>样品资料管理<b class="tip"></b>添加样品</div>
<table class="tbform">
    <tbody>
    <tr>

        <td>形状</td>
        <td>宽度(m)</td>
        <td>长度(m)</td>
        <td>高度(m)</td>
        <td>价格</td>
        <td></td>
    </tr>

    <tr>
        <td><input type="text" value="圆形"></td>
        <td><input type="number" value="10.1" style="width:100px;" oninput="isNum($(this),1, false) "></td>
        <td><input type="number" value="1.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td><input type="number" value="9.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td>
            <input type="number" value="110.01" style="width:100px;" oninput="isNum($(this),2, false)">
        </td>
        <td><a href="">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>修改</a></td>

    </tr>
    <tr>
        <td><input type="text" value="圆形"></td>
        <td><input type="number" value="10.1" style="width:100px;" oninput="isNum($(this),1, false) "></td>
        <td><input type="number" value="1.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td><input type="number" value="9.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td>
            <input type="number" value="110.01" style="width:100px;" oninput="isNum($(this),2, false)">
        </td>
        <td><a href="">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>修改</a></td>

    </tr>
    <tr>
        <td><input type="text" value="圆形"></td>
        <td><input type="number" value="10.1" style="width:100px;" oninput="isNum($(this),1, false) "></td>
        <td><input type="number" value="1.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td><input type="number" value="9.1" style="width:100px;" oninput="isNum($(this),1, false)"></td>
        <td>
            <input type="number" value="110.01" style="width:100px;" oninput="isNum($(this),2, false)">
        </td>
        <td><a href="">添加</a></td>

    </tr>


    </tbody>

</table>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
</html>
