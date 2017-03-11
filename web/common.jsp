<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/2
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("home", request.getContextPath());

%>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="../Styles/chur.css" />

    <title></title>
    <style>
        a {
            color: #586683 !important;
        }
    </style>
</head>
<body>
</body>
<script>
    var home = "${home}";
</script>
<script type="text/javascript" src="../Scripts/chur-alert.1.0.js"></script>


</html>
