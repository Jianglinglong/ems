                                                                                                                                                                                                                                                                                       <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩管理</title>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true">
	    <div data-options="region:'center',border:false">
		    	<!-- Begin of toolbar -->
		        <div id="sc-toolbar">
		            <div class="sc-toolbar-button">
		                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAddScore()" plain="true">添加</a>
		                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEditScore()" plain="true">修改</a>
		                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="removeScore()" plain="true">删除</a>
		            </div>
		        </div>
	        <!-- End of toolbar -->
	        <table id="sc-datagrit" toolbar="#sc-toolbar"></table>
	    </div>
	</div>
	<!-- Begin of easyui-dialog -->

	<!-- 添加和修改页面div-start -->
	<div id="sc_add" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
		<form id="sc_form" method="post">
	        <table align="center">
	        	<tr>
	        		<td align="right">成绩id:</td>
	        		<td ><input type="text" name="scoreId" readonly class="easyui-textbox" style="background-color:gray;"/></td>
	        	</tr>
	            <tr>
	                <td align="right">学生id:</td>
	                <td><input type="text" name="stuId" readonly class="easyui-textbox" style="background-color:gray;" /></td>
	            </tr>
	            <tr>
	                <td align="right">试卷id:</td>
	                <td><input type="text" name="paperId" readonly class="easyui-textbox" style="background-color:gray;" /></td>
	            </tr>
	            <tr>
	                <td align="right">科目id:</td>
	                <td><input type="text" name="courseId" readonly class="easyui-textbox" style="background-color:gray;" /></td>
	            </tr>
	            <tr>
	                <td valign="top" align="right">客观成绩:</td>
	                <td><input type="text" name="autoScore" class="easyui-textbox" /></td>
	            </tr>
	            <tr>
	                <td valign="top" align="right">主观成绩:</td>
	                <td><input type="text" name="subScore" class="easyui-textbox" /></td>
	            </tr>
	            <tr>
	                <td valign="top" align="right">总成绩:</td>
	                <td><input type="text" name="totalScore" class="easyui-textbox" /></td>
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
	function removeScore(){
		var items = $('#sc-datagrit').datagrid('getSelections');
		if(items.length != 0){
			$.messager.confirm('信息提示','确定要删除该记录？', function(result){
				if(result){
					var ids = [];
					$(items).each(function(){
						ids.push(this.scoreId);	
					});
					var url = "scoreServlet.do?method=deleteScore";
					$.get(url,{scoreId:ids.toString()},function(data){
						if(data=="OK"){
							$.messager.alert('信息提示','删除成功！','info');
							$("#sc-datagrit").datagrid("reload");// 重新加载数据库
							$('#sc_add').dialog('close');
						}else if(data == "NK"){
							$.messager.alert('信息提示','删除部分！','info');
							$("#sc-datagrit").datagrid("reload");// 重新加载数据库
							$('#sc_add').dialog('close');
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
	function openAddScore(){
		$('#sc_form').form('clear');
		$('#sc_add').dialog({
			closed: false,
			modal:true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                	addAndUpdate('scoreServlet.do?method=addScore');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#sc_add').dialog('close');                    
                }
            }]
        });
	}  

	/**
	* Name 打开修改窗口
	*/
	function openEditScore(){
		var rows = $('#sc-datagrit').datagrid('getSelections');
		if(rows.length > 1){
			$.messager.alert("提示信息","只能选择一行","info");
		}else{
			var row = $('#sc-datagrit').datagrid('getSelected');
			if (row != null){
				$('#sc_add').dialog({
					closed: false,
					modal:true,
		            title: "修改信息",
		            buttons: [{
		                text: '确定',
		                iconCls: 'icon-ok',
		                handler: function(){
		                	addAndUpdate('scoreServlet.do?method=updateScore');
		                }
		            }, {
		                text: '取消',
		                iconCls: 'icon-cancel',
		                handler: function () {
		                    $('#sc_add').dialog('close');                    
		                }
		            }]
		        });
				$('#sc_form').form('load',row);
			}else{
				$.messager.alert("信息提示","请选择修改的数据","info");
			}
		}
	}
	
	/*
	* 添加和修改方法
	*/
	var addAndUpdate = function(url){
		$('#sc_form').form('submit', {
			url:url,
			success:function(data){
				if(data=="OK"){
					$.messager.alert('信息提示','提交成功！','info');
					$("#sc-datagrit").datagrid("reload");// 重新加载数据库
					$('#sc_add').dialog('close');
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
		$('#sc-datagrit').datagrid({
			url:'scoreServlet.do?method=queryScore',
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
				{ field:'scoreId',title:'成绩id',width:100,sortable:true},
				{ field:'stuId',title:'学生id',width:180,sortable:true},
				{ field:'paperId',title:'试卷id',width:100},
				{ field:'courseId',title:'课程id',width:100},
				{ field:'autoScore',title:'客观成绩',width:100},
				{ field:'subScore',title:'主观成绩',width:100},
				{ field:'totalScore',title:'总成绩',width:100},
			]]
		});
	});
	
</script>
</body>
</html>

