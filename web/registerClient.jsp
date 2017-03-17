<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">
    <script src="Scripts/jquery-1.7.2.js"></script>

    <style type="text/css">
        tr {
            text-align: center;
        }

        td {
            padding: 10px !important;
        }
    </style>
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="warp">
    <!--头部开始-->
<%--    <div class="top_c">
        <div class="top-nav" id=""></div>
    </div>--%>
    <!--头部结束-->
    <table class="tbform">

        <tbody>

        <tr>
            <%--<td class="tdl">登录名:</td>--%>
            <td class="detail" colspan="12">
                登 &nbsp;录 &nbsp;名&nbsp;:&nbsp;&nbsp;
                <input id="loginName" type="text" class="ipt"/>
            </td>
        </tr>
        <tr>
            <%--<td class="tdl">电话:</td>--%>
            <td class="td_detail">
                电 &nbsp;&nbsp;&nbsp;话&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="tel" maxlength="11" atype="tel" class="ipt"/></td>
        </tr>
        <tr>
            <%--<td class="tdl">地址:</td>--%>、
            <td class="detail">
                地 &nbsp;&nbsp;&nbsp;址&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="address" type="text" class="ipt"/>
            </td>

        </tr>

        <tr>
            <%--<td class="tdl">姓名:</td>--%>
            <td class="td_detail">
                姓 &nbsp;&nbsp;&nbsp;名&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="userName" type="text" class="ipt"/></td>
        </tr>

        <tr>
            <%--<td class="tdl">密码:</td>--%>
            <td class="detail">
                密 &nbsp;&nbsp;&nbsp;码&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="pwd" type="password" class="ipt"/>
            </td>

        </tr>

        <tr>
            <%--<td class="tdl">确认密码:</td>--%>

            <td class="td_detail">
                确认密码:&nbsp;&nbsp;
                <input id="surePwd" type="password" class="ipt"/></td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center;padding: 10px">
                <input id="sure" class="btn" type="button" value="确定"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="cancle" class="btn" type="button" value="取消"/>
            </td>
        </tr>

        </tbody>
    </table>
</div>
</body>
<script src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script src="js/biz/fui.min.js"></script>
<script src="Scripts/jquery.spritely-0.6.js"></script>
<script src="Scripts/chur.min.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/biz/registerClient.js"></script>
</html>
