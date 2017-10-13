<%--
  Created by IntelliJ IDEA.
  User: Direct
  Date: 2017/10/12
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>role</title>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'center',border:false">
        <!-- Begin of toolbar -->
        <div id="role-toolbar">
            <div class="wu-toolbar-button">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAddRoleDialog()" plain="true">添加</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEditRoleDialog()" plain="true">修改</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="removeRoleItem()" plain="true">删除</a>
            </div>
        </div>
        <!-- End of toolbar -->
        <table id="role-datagrit" toolbar="#role-toolbar"></table>
    </div>
</div>
<!-- Begin of easyui-dialog -->

<!-- 添加和修改页面div-start -->
<div id="role-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">

</div>
<script type="text/javascript">
    function openAddRoleDialog() {
        $("#role-dialog").dialog({
            closed:false,
            modal:true,
            title: "添加角色",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                    alert('确定添加');
                    $("#role-dialog").dialog('close');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#role-dialog').dialog('close');
                }
            }]
        });
    }
    function opeEditRoleDialog() {
        $("#role-dialog").dialog({
            closed:false,
            modal:true,
            title: "修改角色",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                    alert('确定添加');
                    $("#role-dialog").dialog('close');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#role-dialog').dialog('close');
                }
            }]
        });
    }
    /**
     * Name 删除记录
     */
    function removeItem(){
        var items = $('#role-datagrit').datagrid('getSelections');
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
                            $("#role-datagrit").datagrid("reload");// 重新加载数据库
                            $('#role-dialog').dialog('close');
                        }else if(data == "NK"){
                            $.messager.alert('信息提示','删除部分！','info');
                            $("#role-datagrit").datagrid("reload");// 重新加载数据库
                            $('#role-dialog').dialog('close');
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
        $('#role-form').form('clear');
        $('#role-dialog').dialog({
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
                    $('#role-dialog').dialog('close');
                }
            }]
        });
    }

    /**
     * Name 打开修改窗口
     */
    function openEdit(){
        var rows = $('#role-datagrit').datagrid('getSelections');
        if(rows.length > 1){
            $.messager.alert("提示信息","只能选择一行","info");
        }else{
            var row = $('#role-datagrit').datagrid('getSelected');
            if (row != null){
                $('#role-dialog').dialog({
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
                            $('#role-dialog').dialog('close');
                        }
                    }]
                });
                $('#role-form').form('load',row);
            }else{
                $.messager.alert("信息提示","请选择修改的数据","info");
            }
        }
    }

    /*
    * 添加和修改方法
    */
    var addAndUpdate = function(url){
        $('#role-form').form('submit', {
            url:url,
            success:function(data){
                if(data=="OK"){
                    $.messager.alert('信息提示','提交成功！','info');
                    $("#role-datagrit").datagrid("reload");// 重新加载数据库
                    $('#role-dialog').dialog('close');
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
        $('#role-datagrit').datagrid({
            url:'role.do?method=getAllRoles',
            singleSelect:false,
            rownumbers:true,
            pageSize:20,
            pagination:true,
            multiSort:true,
            fitColumns:true,
            fit:true,
            columns:[[
                { field:'',checkbox:true},
                { field:'roleId',title:'角色ID',width:100,hidden:true},
                { field:'roleName',title:'角色名称',width:180,sortable:true},
            ]]
        });
    });
</script>
</body>
</body>
</html>
