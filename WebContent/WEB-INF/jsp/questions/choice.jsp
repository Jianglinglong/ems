<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <!--     <div data-options="region:'west',border:true,split:true," title="分类管理" style="width:150px; padding:5px;">
            <ul id="wu-category-tree" class="easyui-tree"></ul>
        </div> -->
    <div data-options="region:'center',border:false">
        <!-- Begin of toolbar -->
        <div id="wu-toolbar">
            <div class="wu-toolbar-button">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAdd()" plain="true">添加</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit()" plain="true">修改</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="remove()" plain="true">删除</a>

            </div>

        </div>
        <!-- End of toolbar -->
        <table id="choice-datagrid" toolbar="#wu-toolbar"></table>
    </div>
</div>
<!-- Begin of easyui-dialog -->

<!-- 添加修改页面 -->
<div id="choice_add" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'"
     style="width:400px; padding:10px;">
    <form id="choice_form" method="post">
        <table>
            <tr>
                <td width="60" align="right">编号</td>
                <td><input type="text" name="choiceId" class="ch.choiceId"/></td>
            </tr>
            <tr>
                <td width="60" align="right">课程</td>
                <td><input type="text" name="courseId" class="course_id"/></td>
            </tr>
            <tr>
                <td align="right">题目</td>
                <td><input type="text" name="choiceTitle" class="easyui-textbox"/></td>
            </tr>
            <tr>
                <td align="right">答案A</td>
                <td><input type="text" name="answera" class="easyui-textbox"/></td>
            </tr>

            <tr>
                <td align="right">答案B</td>
                <td><input type="text" name="answerb" class="easyui-textbox"/></td>
            </tr>
            <tr>
                <td align="right">答案C</td>
                <td><input type="text" name="answerc" class="easyui-textbox"/></td>
            </tr>
            <tr>
                <td align="right">答案D</td>
                <td><input type="text" name="answerd" class="easyui-textbox"/></td>
            </tr>
            <tr>
                <td align="right">正确答案</td>
                <td><input type="text" name="answer" class="easyui-textbox"/></td>
            </tr>
            <tr>
                <td align="right">题型</td>
                <td><input type="text" name="choice_type" class="easyui-textbox"/></td>
            </tr>


        </table>
    </form>
</div>
<!-- End of easyui-dialog -->
<script type="text/javascript">
    /**
     * Name 删除记录
     */
    function remove() {
        var items = $('#choice-datagrid').datagrid('getSelections');
        if (items.length != 0) {
            $.messager.confirm('信息提示', '确定要删除该记录？', function (result) {
                if (result) {
                    var ids = [];
                    $(items).each(function () {
                        ids.push(this.choiceId)
                    });
                    var url = 'choices.do?method=deleteChoice';
                    $.get(url, {stuId: ids.toString()}, function (data) {
                        if (data == "OK") {
                            $.messager.alert('信息提示', '删除成功！', 'info');
                            $("#choice-datagrit").datagrid("reload");// 重新加载数据库
                            $('#choice_add').dialog('close');
                        } else if (data == "NK") {
                            $.messager.alert('信息提示', '删除部分！', 'info');
                            $("#choice-datagrit").datagrid("reload");// 重新加载数据库
                            $('#choice_add').dialog('close');
                        }
                        else {
                            $.messager.alert('信息提示', '删除失败！', 'info');
                        }
                    });
                }
            });
        }
    }

    /**
     * Name 打开添加窗口
     */
    function openAdd() {
        $('#choice_form').form('clear');
        $('#choice_add').dialog({
            modal: true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function () {
                    addchoice('choices.do?method=addChoice');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#choice-add').dialog('close');
                }
            }]
        });
    }

    /**
     * Name 打开修改窗口
     */
    function openEdit() {
        var rows = $('#choice-datagrit').datagrid('getSelections');
        if (rows.length > 1) {
            $.messager.alert("提示信息", "只能选择一行", "info");
        } else {
            var row = $('#choice-datagrit').datagrid('getSelected');
            if (row != null) {
                $('#choice_add').dialog({
                    closed: false,
                    modal: true,
                    title: "修改信息",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {
                            updatechoice('choices.do?method=updateChoice');
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#choice_add').dialog('close');
                        }
                    }]
                });
                $('#choice_form').form('load', row);
            } else {
                $.messager.alert("信息提示", "请选择修改的数据", "info");
            }
        }
    }

    /*
    * 添加方法
    */
    var addchoice = function (url) {
        $('#choice_form').form('submit', {
            url: url,
            success: function (data) {
                if (data == "OK") {
                    $.messager.alert('信息提示', '提交成功！', 'info');
                    $("#choice-datagrit").datagrid("reload");// 重新加载数据库
                    $('#choice_add').dialog('close');
                }
                else {
                    $.messager.alert('信息提示', '提交失败！', 'info');
                }
            }
        });
    };
    /*
    * 修改方法
    */
    var updatechoice = function (url) {
        $('#choice_form').form('submit', {
            url: url,
            success: function (data) {
                if (data == "OK") {
                    $.messager.alert('信息提示', '提交成功！', 'info');
                    $("#choice-datagrit").datagrid("reload");// 重新加载数据库
                    $('#choice_add').dialog('close');
                }
                else {
                    $.messager.alert('信息提示', '提交失败！', 'info');
                }
            }
        });
    };

    /**
     * Name 分页过滤器
     */
    function pagerFilter(data) {
        if (typeof data.length == 'number' && typeof data.splice == 'function') {// is array
            data = {
                total: data.length,
                rows: data
            }
        }
        var dg = $(this);
        var opts = dg.datagrid('options');
        var pager = dg.datagrid('getPager');
        pager.pagination({
            onSelectPage: function (pageNum, pageSize) {
                opts.pageNumber = pageNum;
                opts.pageSize = pageSize;
                pager.pagination('refresh', {pageNumber: pageNum, pageSize: pageSize});
                dg.datagrid('loadData', data);
            }
        });
        if (!data.originalRows) {
            data.originalRows = (data.rows);
        }
        var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
        var end = start + parseInt(opts.pageSize);
        data.rows = (data.originalRows.slice(start, end));
        return data;
    }

    /**
     * Name 载入数据
     */
    $('#choice-datagrid').datagrid({
        url: 'choices.do?method=listChoice',
        loadFilter: pagerFilter,
        rownumbers: true,
        singleSelect: false,
        pageSize: 20,
        pagination: true,
        multiSort: true,
        fitColumns: true,
        fit: true,
        columns: [[
            {checkbox: true},
            {field: 'choiceId', title: '编号', width: 50, sortable: true, hidden: true},
            {field: 'courseId', title: '科目', width: 50, sortable: true},
            {field: 'choiceTitle', title: '课程题目', width: 180, sortable: true},
            {field: 'answera', title: '答案A', width: 100},
            {field: 'answerb', title: '答案B', width: 100},
            {field: 'answerc', title: '答案C', width: 100},
            {field: 'answerd', title: '答案D', width: 100},
            {field: 'answer', title: '正确答案', width: 100},
            {field: 'choicetype', title: '题型', width: 100}
        ]]
    });
</script>
</body>
</html>