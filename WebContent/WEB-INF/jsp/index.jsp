<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="copyright" content="All Rights Reserved, Copyright (C) 2013, Wuyeguo, Ltd."/>
    <title>考试管理中心</title>
    <%@include file="/common/easyui.jspf"%>
    <link rel="stylesheet" type="text/css" href="${basePath }/css/wu.css"/>
    <script type="text/javascript" src="${basePath }/js/menu.js"></script>
    <%--&lt;%&ndash;<link rel="stylesheet" type="text/css" href="${basePath }/easyui/themes/default/easyui.css" />&ndash;%&gt;--%>
    <%--<link rel="stylesheet" type="text/css" href="${basePath }/easyui/uimaker/easyui.css"/>--%>
    <%----%>
    <%--<link rel="stylesheet" type="text/css" href="${basePath }/easyui/uimaker/icon.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="${basePath }/easyui/uimaker/demo.css">--%>
    <%--<script type="text/javascript" src="${basePath }/js/jquery-1.8.0.min.js"></script>--%>
    <%--<script type="text/javascript" src="${basePath }/easyui/jquery.easyui.min.js"></script>--%>
    <%--<script type="text/javascript" src="${basePath }/easyui/locale/easyui-lang-zh_CN.js"></script>--%>

    <script type="text/javascript">
        var menu = ${menuJson};
        if (menu != null) {
            _menus = menu;
        }
    </script>
</head>
<body class="easyui-layout">
<!-- begin of header -->
<div class="wu-header" data-options="region:'north',border:false,split:true">
    <div class="wu-header-left">
        <h1>EasyUI Web Admin</h1>
    </div>
    <div class="wu-header-right">
        <p><strong class="easyui-tooltip" title="2条未读消息">admin</strong>，欢迎您！</p>
        <p><a href="javascript:;">网站首页</a>|<a href="javascript:;">帮助中心</a>|<a href="javascript:;">安全退出</a></p>
    </div>
</div>
<!-- end of header -->
<!-- begin of sidebar -->
<div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'导航菜单'">
    <div id="wnav" class="easyui-accordion" data-options="border:false,fit:true">
        <!-- 动态加载菜单 -->
    </div>
</div>
<!-- end of sidebar -->
<!-- begin of main -->
<div class="wu-main" data-options="region:'center'">
    <div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">
        <div title="首页"
             data-options="closable:false,iconCls:'icon-tip',cls:'pd3'"
        ></div>
    </div>
</div>
<!-- end of main -->
<!-- begin of footer -->
<div class="wu-footer" data-options="region:'south',border:true,split:true">
    &copy; 2017  All Rights Reserved
</div>
<!-- end of footer -->
</body>
</html>
