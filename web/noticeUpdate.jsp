
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("home", request.getContextPath());
    String id=request.getParameter("noticeId");
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
<div class="alert alert-info">当前位置<b class="tip"></b>通知栏<b class="tip"></b>通知</div>
<table class="tbform" id="addAdvice">
    <thead>
    <tr>
        <td colspan="6" class="auto-style2">&nbsp;请填写通知信息</td>
    </tr>
    </thead>
    <tbody>
    <tr style="height: 40px;">
        <td class="tdl">通知内容：</td>
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

</body>
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/biz/fui.min.js"></script>
<script>
    var id=<%=id%>;
    var noticeId;
    $(function () {
        $.post(home+'/noticeController/editNotice.forward',{noticeId:id},function(data){
            if(data.results.success){
                noticeId=data.results.data.noticeId;
                $("#advice").val(data.results.data.noticeContent);
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
            param.noticeContent=advice;
            param.noticeId=noticeId
            $.post(home+'/noticeController/updateNotice.forward',param,function(data){
                if(data.results.success){

                    alert(data.results.msg);
                }else{
                    alert(data.results.msg);
                }

            });
        });

    });


</script>
<script src="js/biz/common.js"></script>
</html>
