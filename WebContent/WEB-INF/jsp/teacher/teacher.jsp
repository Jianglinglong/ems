<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true">
	    <div data-options="region:'center',border:false">
		    	<!-- Begin of toolbar -->
		        <div id="tea-toolbar">
		            <div class="wu-toolbar-button">
		                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAddTeacherTeacher()" plain="true">添加</a>
		                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEditTeacher()" plain="true">修改</a>
		                <a href="#" class="easyui-linkbutton" iconCls="icon-removeTeacher" onclick="removeTeacher()" plain="true">删除</a>
		            </div>
		        </div>
	        <!-- End of toolbar -->
	        <table id="tea-datagrit" toolbar="#tea-toolbar"></table>
	    </div>
	</div>
	<!-- Begin of easyui-dialog -->

	<!-- 添加和修改页面div-start -->
	<div id="tea_add" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
		<form id="tea-form" method="post">
	        <table>
	        	<tr>
	        		<td><input type="hidden" name="teaId" value="stu.stuId"/></td>
	        	</tr>
	            <tr>
	                <td width="60" align="right">姓名:</td>
	                <td><input type="text" name="teaRealName" class="easyui-textbox" /></td>
	            </tr>
	            <tr>
	                <td align="right">账号:</td>
	                <td><input type="text" name="teaAccount" class="easyui-textbox" /></td>
	            </tr>
	            <tr>
	                <td align="right">密码:</td>
	                <td><input type="text" name="teaPassword" class="easyui-textbox" /></td>
	            </tr>
	            <tr>
	                <td valign="top" align="right">备注:</td>
	                <td><input type="text" name="teaRemark" class="easyui-textbox" /></td>
	            </tr>
	        </table>
	    </form>
	</div>
	<!-- 添加 和修改页面div-end -->

	<!-- End of easyui-dialog -->
<script type="text/javascript">

	/**
	* Name 删除记录
	*/
	function removeTeacher(){
		var items = $('#tea-datagrit').datagrid('getSelections');
		if(items.length != 0){
			$.messager.confirm('信息提示','确定要删除该记录？', function(result){
				if(result){
					var ids = [];
					$(items).each(function(){
						ids.push(this.teaId);	
					});
					var url = "teacherServlet.do?method=deleteTeacher";
					$.get(url,{teaId:ids.toString()},function(data){
						if(data=="OK"){
							$.messager.alert('信息提示','删除成功！','info');
							$("#tea-datagrit").datagrid("reload");// 重新加载数据库
							$('#tea_add').dialog('close');
						}else if(data == "NK"){
							$.messager.alert('信息提示','删除部分！','info');
							$("#tea-datagrit").datagrid("reload");// 重新加载数据库
							$('#tea_add').dialog('close');
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
	function openAddTeacherTeacher(){
		$('#tea-form').form('clear');
		$('#tea_add').dialog({
			closed: false,
			modal:true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                	addAndUpdate('teacherServlet.do?method=addTeacher');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#tea_add').dialog('close');                    
                }
            }]
        });
	}
	
	/**
	* Name 打开修改窗口
	*/
	function openEditTeacher(){
		$('#tea-form').form('clear');
		var rows = $('#tea-datagrit').datagrid('getSelections');
		if(rows.length > 1){
			$.messager.alert("提示信息","只能选择一行","info");
		}else{
			
			var row = $('#tea-datagrit').datagrid('getSelected');
			if(row != null){
				$('#tea_add').dialog({
					closed: false,
					modal:true,
		            title: "修改信息",
		            buttons: [{
		                text: '确定',
		                iconCls: 'icon-ok',
		                handler: function(){
		                	addAndUpdate('teacherServlet.do?method=updateTeacher');
		                }
		            }, {
		                text: '取消',
		                iconCls: 'icon-cancel',
		                handler: function () {
		                    $('#tea_add').dialog('close');                    
		                }
		            }]
		        });
				$('#tea-form').form('load',row);
			}else{
				$.messager.alert("提示信息","请选择修改数据",'info');
			}
		}
	}	
	
	/*
	* 添加和修改方法
	*/
	var addAndUpdate = function(url){
		$('#tea-form').form('submit', {
			url:url,
			success:function(data){
				if(data=="OK"){
					$.messager.alert('信息提示','提交成功！','info');
					$("#tea-datagrit").datagrid("reload");// 重新加载数据库
					$('#tea_add').dialog('close');
				}
				else{
					$.messager.alert('信息提示','提交失败！','info');
				}
			}
		}); 
	};
	
	
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
		$('#tea-datagrit').datagrid({
			url:'teacherServlet.do?method=queryTeacher',
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
				{ field:'teaId',title:'教师id',width:100,sortable:true},
				{ field:'teaRealName',title:'姓名',width:180,sortable:true},
				{ field:'teaAccount',title:'账号',width:100},
				{ field:'teaPassword',title:'密码',width:100},
				{ field:'teaRemark',title:'备注',width:100},
			]]
		});
	});
	
</script>
</body>
</html>

