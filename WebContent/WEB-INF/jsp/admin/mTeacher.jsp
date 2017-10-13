<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/users/users.js"></script>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'center',border:false">
        <!-- Begin of toolbar -->
        <div id="users-toolbar">
            <div class="wu-toolbar-button">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAdd()" plain="true">添加</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit()" plain="true">修改</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="removeItem()" plain="true">删除</a>
            </div>
        </div>
        <!-- End of toolbar -->
        <table id="users-datagrit" toolbar="#users-toolbar"></table>
    </div>
</div>
<!-- Begin of easyui-dialog -->

<!-- 添加和修改页面div-start -->
<div id="users-add" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
    <form id="users-form" method="post">
        <table>
            <tr>
                <td><input type="hidden" name="stuId" value="stu.stuId"/></td>
            </tr>
            <tr>
                <td width="60" align="right">姓名:</td>
                <td><input type="text" name="stuRealName" class="easyui-textbox" /></td>
            </tr>
            <tr>
                <td align="right">账号:</td>
                <td><input type="text" name="stuAccount" class="easyui-textbox" /></td>
            </tr>
            <tr>
                <td align="right">密码:</td>
                <td><input type="text" name="stuPassword" class="easyui-textbox" /></td>
            </tr>
            <tr>
                <td valign="top" align="right">班级:</td>
                <td><input type="text" name="stuClass" class="easyui-textbox" /></td>
            </tr>
        </table>
    </form>
</div>
<script type="text/javascript">
    /**
     * Name 删除记录
     */
    function removeItem(){
        var items = $('#users-datagrit').datagrid('getSelections');
        if(items.length != 0){
            $.messager.confirm('信息提示','确定要删除该记录？', function(result){
                if(result){
                    var ids = [];
                    $(items).each(function(){
                        ids.push(this.stuId);
                    });
                    var url = "studentServlet.do?method=deleteStudent";
                    $.get(url,{stuId:ids.toString()},function(data){
                        if(data=="OK"){
                            $.messager.alert('信息提示','删除成功！','info');
                            $("#users-datagrit").datagrid("reload");// 重新加载数据库
                            $('#stu_add').dialog('close');
                        }else if(data == "NK"){
                            $.messager.alert('信息提示','删除部分！','info');
                            $("#users-datagrit").datagrid("reload");// 重新加载数据库
                            $('#stu_add').dialog('close');
                        }
                        else{
                            $.messager.alert('信息提示','删除失败！','info');
                        }
                    });
                }
            });
        }else{
            $.messager.alert('信息提示','请选择要的删除数据！','info');
        }
    }

    /**
     * Name 打开添加窗口
     */
    function openAdd(){
        $('#users-form').form('clear');
        $('#users-add').dialog({
            closed: false,
            modal:true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                    addAndUpdate('studentServlet.do?method=addStudent');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#users-add').dialog('close');
                }
            }]
        });
    }

    /**
     * Name 打开修改窗口
     */
    function openEdit(){
        var rows = $('#users-datagrit').datagrid('getSelections');
        if(rows.length > 1){
            $.messager.alert("提示信息","只能选择一行","info");
        }else{
            var row = $('#users-datagrit').datagrid('getSelected');
            if (row != null){
                $('#users-add').dialog({
                    closed: false,
                    modal:true,
                    title: "修改信息",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function(){
                            addAndUpdate('studentServlet.do?method=updateStudent');
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#users-add').dialog('close');
                        }
                    }]
                });
                $('#users-form').form('load',row);
            }else{
                $.messager.alert("信息提示","请选择修改的数据","info");
            }
        }
    }

    /*
    * 添加和修改方法
    */
    var addAndUpdate = function(url){
        $('#users-form').form('submit', {
            url:url,
            success:function(data){
                if(data=="OK"){
                    $.messager.alert('信息提示','提交成功！','info');
                    $("#users-datagrit").datagrid("reload");// 重新加载数据库
                    $('#users-add').dialog('close');
                }
                else{
                    $.messager.alert('信息提示','提交失败！','info');
                }
            }
        });
    };
    /**
     * Name 载入数据
     */
    $(function(){
        $('#users-datagrit').datagrid({
            url:'admin.do?method=getAllUsers',
            rownumbers:true,
            singleSelect:false,
            pageSize:20,
            pagination:true,
            multiSort:true,
            fitColumns:true,
            fit:true,
            columns:[[
                { checkbox:true},
                { field:'roleRightId',title:'学号',width:100,hidden:true},
                { field:'rightId',title:'权限ID',width:180,sortable:true},
                { field:'roleId',title:'角色ID',width:100},
            ]]
        });
    });
</script>
</body>
</html>