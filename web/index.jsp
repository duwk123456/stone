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
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <script src="Scripts/jquery-1.7.2.js"></script>
</head>
<body>
<jsp:include page="common.jsp"></jsp:include>
<div class="warp">
    <!--头部开始-->
    <div class="top_c">
        <div class="top-nav" id="userName"></div>
    </div>
    <!--头部结束-->
    <!--左边菜单开始-->
    <div class="left_c left">
        <h1>系统操作菜单</h1>

        <div class="acc">
            <div>
                <a class="one">石材订购</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="stoneOrder.jsp">石材订购</a></li>
                </ul>
            </div>
            <div>
                <a class="one">库存管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="inventoryManagement.jsp">库存列表</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="inventoryManagement.jsp">进货管理</a></li>
                </ul>
            </div>
            <div>
                <a class="one">业务查询</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="orderInquire.jsp">订单查询</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">进货单查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">通知栏</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="notice.jsp">通知</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="noticeList.jsp">通知列表</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="advice.jsp">意见箱</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="adviceList.jsp">意见箱列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">石材定制</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="customMade.jsp">添加定制</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="customMadeList.jsp">石材定制列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">账户管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="updateInfo.jsp">信息修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="modifyPwd.jsp">密码修改</a></li>
                </ul>
            </div>
            <div>
                <a class="one">人事档案管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="personnelManager.jsp">员工档案</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="clientManager.jsp">客户档案</a></li>
                </ul>
            </div>
            <div>
                <a class="one">样品资料管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="addSample.jsp">添加样品</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="sampleList.jsp">样品列表</a></li>
                </ul>
            </div>
            <%--<div id="datepicker"></div>--%>
        </div>

    </div>
    <!--左边菜单结束-->
    <!--右边框架开始-->
    <div class="right_c">
        <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

    </div>
    <div class="Conframe">
        <iframe name="Conframe" id="Conframe"></iframe>
    </div>
    <!--右边框架结束-->

    <!--底部开始-->
    <div class="bottom_c">Copyright &copy;2005-2011 闽江学院科技有限公司 版权所有</div>
    <!--底部结束-->
</div>
</body>
<script src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script src="js/biz/fui.min.js"></script>
<script src="Scripts/jquery.spritely-0.6.js"></script>
<script src="Scripts/chur.min.js"></script>
<script src="js/biz/common.js"></script>
<script src="Scripts/index.js"></script>

</html>
