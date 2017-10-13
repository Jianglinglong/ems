<%--
  Created by IntelliJ IDEA.
  User: Direct
  Date: 2017/10/12
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'center',border:false">
        <!-- Begin of toolbar -->
        <div id="readpaper-toolbar">
            <div class="wu-toolbar-button">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAdd()" plain="true">添加</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit()" plain="true">修改</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="removes()" plain="true">删除</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="cancel()" plain="true">取消</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-reload" onclick="reload()" plain="true">刷新</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-print" onclick="openAdd()" plain="true">打印</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-help" onclick="openEdit()" plain="true">帮助</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-undo" onclick="removes()" plain="true">撤销</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="cancel()" plain="true">重做</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-sum" onclick="reload()" plain="true">总计</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-back" onclick="reload()" plain="true">返回</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-tip" onclick="reload()" plain="true">提示</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="reload()" plain="true">保存</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-cut" onclick="reload()" plain="true">剪切</a>
            </div>
        </div>
        <!-- End of toolbar -->
        <table id="readpaper-datagrit" toolbar="#readpaper-toolbar"></table>
    </div>
</div>
<!-- Begin of easyui-dialog -->

<!-- 添加和修改页面div-start -->
<%--<div id="readpaper" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">--%>
    <%--<form id="readpaper-form" method="post">--%>
        <%--<table>--%>
            <%--<tr>--%>
                <%--<td><input type="hidden" name="teaId" value="stu.stuId"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td width="60" align="right">姓名:</td>--%>
                <%--<td><input type="text" name="teaRealName" class="wu-text" /></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td align="right">账号:</td>--%>
                <%--<td><input type="text" name="teaAccount" class="wu-text" /></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td align="right">密码:</td>--%>
                <%--<td><input type="text" name="teaPassword" class="wu-text" /></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td valign="top" align="right">备注:</td>--%>
                <%--<td><input type="text" name="teaRemark" class="wu-text" /></td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</form>--%>
<%--</div>--%>
<!-- 添加 和修改页面div-end -->

<!-- End of easyui-dialog -->
<script type="text/javascript">
    /**
     * Name 分页过滤器
     */
    function pagerFilter(data){
        if (typeof data.length == 'number' && typeof data.splice == 'function'){// is array
            data = {
                total: data.length,
                rows: data
            }
        }
        var dg = $(this);
        var opts = dg.datagrid('options');
        var pager = dg.datagrid('getPager');
        pager.pagination({
            onSelectPage:function(pageNum, pageSize){
                opts.pageNumber = pageNum;
                opts.pageSize = pageSize;
                pager.pagination('refresh',{pageNumber:pageNum,pageSize:pageSize});
                dg.datagrid('loadData',data);
            }
        });
        if (!data.originalRows){
            data.originalRows = (data.rows);
        }
        var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
        var end = start + parseInt(opts.pageSize);
        data.rows = (data.originalRows.slice(start, end));
        return data;
    }

    /**
     * Name 载入数据
     */
    $(function(){
        $('#readpaper-datagrit').datagrid({
            url:'readPaper.do?method=getAnswerPapaers',
            loadFilter:pagerFilter,
            rownumbers:true,
            singleSelect:false,
            pageSize:20,
            pagination:true,
            multiSort:true,
            fitColumns:true,
            fit:true,
            columns:[[
                { checkbox:true},
                { field:'answerId',title:'答题卡编号',width:100,sortable:true},
                { field:'stuId',title:'学生ID',width:180,sortable:true},
                { field:'paperId',title:'试卷ID',width:100},
                { field:'choiceId',title:'选择题',width:100},
                { field:'blankId',title:'填空题',width:100},
                { field:'judgeId',title:'判断题',width:100},
                { field:'subId',title:'主观题',width:100},
                { field:'subAnswer',title:'主观题答案',width:100}
            ]]
        });
    });
</script>
</body>
</html>
