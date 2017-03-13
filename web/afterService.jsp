<%--
  Created by IntelliJ IDEA.
  User: H81
  Date: 2017/3/3
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id=request.getParameter("orderId");
%>
<html>
<head>
    <title>售后服务</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <link rel="stylesheet" type="text/css" href="js/layer/skin/layer.css">
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="alert alert-info">当前位置<b class="tip"></b>售后服务</div>
<table class="tbform">
    <tbody>
    <thead>
    <tr>
        <td colspan="6" class="auto-style2">&nbsp;请选择售后服务的类型</td>
    </tr>
    </thead>
    <tr>
        <td class="tdl" style="text-align: center">

            <form>
                <label><input name="service" type="radio" value="0" checked="checked"/> 送清洗剂 </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input name="service" type="radio" value="1"/> 1年内店员上门清洗 </label>
            </form>
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
<script src="Scripts/jquery-1.7.2.js"></script>
<script src="js/biz/common.js"></script>
<script src="js/layer/layer.js"></script>
<script>
    var id=<%=id%>;
    var serid;
    $(function () {


        $("#sure").off("click").on("click", function () {

            $("input[name='service']:radio:checked").each(function(){
                serid=$(this).val();
            });
            var param={};
            param.saleType=serid;
            param.orderId=id;
            $.post(home+'/orderController/updateOrder.forward',param,function(data){
                if(data.results.success){
                    dialog("添加成功");
                }else{
                    dialog("添加失败");
                }

            });
        });

    });


</script>
</body>
</html>
