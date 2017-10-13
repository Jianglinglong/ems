<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试安排</title>
</head>
<body>

<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
      <div id="exam-toolbar">
		            <div class="wu-toolbar-button">
		                <a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="openAdd()" plain="true">添加</a>
		                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="removeItems()" plain="true">删除</a>
		              	<a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit()" plain="true">修改</a>
		                
		            </div>
		        </div>
    <!-- End of toolbar -->
    <table id="exam-datagrid" class="easyui-datagrid" toolbar="#exam-toolbar"></table>
</div>
<!-- 添加和修改页面 -->
<div id="exam_add" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
	<form id="exam_form" method="post">
        <table>
       <tr>
                <td width="60" align="right">考试编号:</td>
                <td><input type="text" name="examID" class="easyui-textbox"  /></td>
            </tr>
            <tr>
                <td width="60" align="right">考试科目:</td>
                <td><input type="text" name="courseID" class="easyui-textbox" /></td>
            </tr>
            <tr>
                <td align="right">考试试卷:</td>
                <td><input type="text" name="paperID" class="easyui-textbox" /></td>
            </tr>
            <tr>
                <td align="right">监考老师:</td>
                <td><input type="text" name="teaID" class="easyui-textbox" /></td>
            </tr>
              <tr>
                <td align="right">考试时间:</td>
                <td><input type="text" name="examTime" class="easyui-textbox" /></td>
            </tr>
              <tr>
                <td align="right">考试地点:</td>
                <td><input type="text" name="examAddr" class="easyui-textbox" /></td>
            </tr>
        </table>
    </form>
</div>
<!-- End of easyui-dialog -->
<script type="text/javascript">
/**
* Name 添加和修改记录
*/
 var exam_addAndUpdate = function(url){
	$('#exam_form').form('submit', {
		url:url,
		success:function(data){
			if(data=="OK"){
				$.messager.alert('信息提示','提交成功！','info');
				$("#exam-datagrid").datagrid("reload");// 重新加载数据库
				$('#exam_add').dialog('close');
			}
			else{
				$.messager.alert('信息提示','提交失败！','info');
			}
		}
	}); 
}

	/**
	* Name 修改记录
	*/
	/* var exam_addAndUpdate = function(url){
		
		$('#exam_form').form('submit', {
			url:url,
			success:function(data){
				alert(data);
				if(data=="OK"){
					$.messager.alert('信息提示','提交成功！','info');
					$('#exam_add').dialog('close');
				}else
				{
					$.messager.alert('信息提示','提交失败！','info');
				}
			}
		}); 
	} */
	
	/**
	* Name 删除记录
	*/
	function removeItems(){
		var items = $('#exam-datagrid').datagrid('getSelections');
		if(items.length != 0){
			
		$.messager.confirm('信息提示','确定要删除该记录？', function(result){
			if(result){
				var ids = [];
			
				$(items).each(function(){
				
					ids.push(this.examID);	
					
				});
                        var url = "exam.do?method=deleteExam";
				$.get(url,{examID:ids.toString()},function(data){
					if(data=='OK'){
						$.messager.alert('信息提示','删除成功！','info');
						$("#exam-datagrid").datagrid("reload");// 重新加载数据库
						$('#exam_add').dialog('close');
					}else if(data == 'NK'){
						$.messager.alert('信息提示','删除部分！','info');
						$("#exam-datagrid").datagrid("reload");// 重新加载数据库
						$('#exam_add').dialog('close');
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
		$('#exam_form').form('clear');
		$('#exam_add').dialog({
			closed: false,
			modal:true,
            title: "添加信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                	exam_addAndUpdate('exam.do?method=addExam');
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#exam_add').dialog('close');                    
                }
            }]
        });
	}
	
	/**
	* Name 打开修改窗口
	*/
	 function openEdit(){
		$('#exam_form').form('clear');
		var item = $('#exam-datagrid').datagrid('getSelections');
		if(item.length >1) {
			$.messager.alert("提示信息","只能修改一行",'info');
		}else{
		
			var row = $('#exam-datagrid').datagrid('getSelected');
			if(row != null){
				$('#exam_add').dialog({
					closed: false,
					modal:true,
		            title: "修改信息",
		            buttons: [{
		                text: '确定',
		                iconCls: 'icon-ok',
		                handler: function(){
		                	exam_addAndUpdate('exam.do?method=updateExam');
		                }
		            }, {
		                text: '取消',
		                iconCls: 'icon-cancel',
		                handler: function () {
		                    $('#exam_add').dialog('close');                    
		                }
		            }]
		        });
				$('#exam_form').form('load',row);
			}else{
				$.messager.alert("提示信息","请选择修改数据",'info');
			}
		} 
		
		
		
		
	}	
	
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
	$('#exam-datagrid').datagrid({
		url:'exam.do?method=getExams',
		loadFilter:pagerFilter,		
		rownumbers:true,
		singleSelect:false,
		pageSize:20,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		fit:true,
		columns:[[
			{ field:'',checkbox:true},
			{ field:'examID',title:'考试编号',width:100,sortable:true},
			{ field:'courseID',title:'考试科目',width:180,sortable:true},
			{ field:'paperID',title:'考试试卷',width:100},
			{ field:'teaID',title:'监考老师',width:100},
			{ field:'examTime',title:'考试时间',width:100},
			{ field:'examAddr',title:'考试地点',width:100}
			
		]]
	});
</script>

</body>
</html>



