<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 2017/2/28
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("home", request.getContextPath());
    String id=request.getParameter("feedbackId");
%>
<html>
<head>
    <title>意见箱</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>通知栏<b class="tip"></b>意见箱</div>
<table class="tbform" id="addAdvice">
    <thead>
    <tr>
        <td colspan="6" class="auto-style2">&nbsp;请填写的您的意见</td>
    </tr>
    </thead>
    <tbody>
    <tr style="height: 40px;">
        <td class="tdl">意见内容：</td>
        <td class="detail">
            <input id="advice" type="text" class="ipt" style="width: 100%;height: 30px;" />
        </td>
    </tr>
    <tr>
        <td colspan="6" style="text-align: center">
            <input id="sure" class="btn" type="button" value="修改"/>
    </tr>
    </tbody>
</table>

<%--
<table class="tbform" id="showAdvice">
    <thead>
    <tr>
        <td colspan="6" class="auto-s tyle2">&nbsp;客户意见内容如下</td>
    </tr>
    </thead>
    <tbody id="showAdvicdContent">
    <tr>
        <td style="text-align: center">多少多少啊打撒了了</td>
    </tr>
    <tr>
        <td style="text-align: center">多少多少啊打撒了了</td>
    </tr>
    <tr>
        <td style="text-align: center">多少多少啊打撒了了</td>
    </tr>
    </tbody>
</table>
--%>
</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/fui.min.js"></script>
<script>
    var userId = $.fui.store.get("userId");
    var id=<%=id%>;
    var feedbackId;
    $(function () {
        $.post(home+'/feedBackController/editFeedBack.forward',{feedbackId:id},function(data){
            if(data.results.success){
                feedbackId=data.results.data.feedbackId;
                $("#advice").val(data.results.data.feedbackContent);
            }else{
                alert(data.results.msg);
            }

        });

        $("#sure").off("click").on("click", function () {
            var advice = $("#advice").val();
            if (advice=="") {
                dialog("内容不得为空!");
                return false;
            }
            var param={};
            param.feedbackContent=advice;
            param.feedbackId=feedbackId
            $.post(home+'/feedBackController/updateFeedBack.forward',param,function(data){
                if(data.results.success){
                    dialog("更新成功");
                }else{
                    dialog("更新失败");
                }

            });
        });

    });


</script>
<script src="js/biz/common.js"></script>
</html>
