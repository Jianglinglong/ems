<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
		.elegant-aero {
		margin-left:auto;
		margin-right:auto;
		max-width: 800px;
		background: #D2E9FF;
		padding: 15px 20px 15px 20px;
		font: 12px Arial, Helvetica, sans-serif;
		color: #666;
		}
		.elegant-aero h1 {
		font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
		padding: 10px 10px 10px 20px;
		display: block;
		background: #C0E1FF;
		border-bottom: 1px solid #B8DDFF;
		margin: -20px -20px 15px;
		}
		.elegant-aero h1>span {
		display: block;
		font-size: 11px;
		}
		.elegant-aero label>span {
		float: left;
		margin-top: 10px;
		color: #5E5E5E;
		}
		.elegant-aero label {
		display: block;
		margin: 0px 0px 5px;
		}
		.elegant-aero label>span {
		float: left;
		width: 20%;
		text-align: right;
		padding-right: 15px;
		margin-top: 8px;
		font-weight: bold;
		}
		.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
		color: #888;
		width: 70%;
		padding: 0px 0px 0px 5px;
		border: 1px solid #C5E2FF;
		background: #FBFBFB;
		outline: 0;
		-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
		box-shadow: inset 0px 1px 6px #ECF3F5;
		font: 200 12px/25px Arial, Helvetica, sans-serif;
		height: 20px;
		line-height:15px;
		margin: 2px 6px 16px 0px;
		}
		.elegant-aero textarea{
		height:80px;
		padding: 5px 0px 0px 5px;
		width: 70%;
		}
		.elegant-aero select {
		background: #fbfbfb url('down-arrow.png') no-repeat right;
		background: #fbfbfb url('down-arrow.png') no-repeat right;
		appearance:none;
		-webkit-appearance:none;
		-moz-appearance: none;
		text-indent: 0.01px;
		text-overflow: '';
		width: 70%;
		}
		.elegant-aero .button{
		padding: 10px 30px 10px 30px;
		background: #66C1E4;
		border: none;
		color: #FFF;
		box-shadow: 1px 1px 1px #4C6E91;
		-webkit-box-shadow: 1px 1px 1px #4C6E91;
		-moz-box-shadow: 1px 1px 1px #4C6E91;
		text-shadow: 1px 1px 1px #5079A3;
		}
		.elegant-aero .button:hover{
		background: #3EB1DD;
		}
	</style>
	<div class="easyui-panel">
		<form id="handPaper" method="post" class="elegant-aero">
			<h1>自动组卷 </h1>
			<label> 
				<span>选择课程:</span>
				<select name="courseId">
					<c:forEach items="${courses }" var="course">
						<option value="${course.courseId }">${course.courseName }</option>
					</c:forEach>
				</select>
			</label> 
			<input type="hidden" name="ruleType" value="1">
			
			<span style="text-align: center;display:block;">---------------------------单选择题---------------------------</span>
			<label> 
				<span>题号和分数:</span> <input type="text" name="choiceIds" readonly style="cursor: pointer;" id="choiceIds" value="1" onclick="getExam('paper.do?method=getChoice','choiceIds')">
				<span>选择题总分:</span> <input type="text" name="choiceIdsScore" id="choiceIdsScore" value="1" readonly>
				<input type="hidden" name="choiceIdsNum" id="choiceIdsNum" value="1">
			</label> 
			<span style="text-align: center;display:block;">---------------------------多选择题---------------------------</span>
			<label> 
				<span>题号和分数:</span> <input type="text" name="multipleId" readonly style="cursor: pointer;" id="multipleIds" value="1" onclick="getExam('paper.do?method=get','multipleIds')">
				<span>选择题分数:</span> <input type="text" name="multipleIdsScore" id="multipleIdsScore" value="1" readonly>
				<input type="hidden" name="multipleIdsNum" id="multipleIdsNum" value="1">
			</label> 
			<span style="text-align: center;display:block;">---------------------------填空题---------------------------</span>
			<label> 
				<span>题号和分数:</span> <input type="text" name="blankIds" readonly style="cursor: pointer;" id="blankIds" value="1" onclick="getExam('blank','blankIds')">
				<span>选择题分数:</span> <input type="text" name="blankIdsScore" id="blankIdsScore" value="1" readonly>
				<input type="hidden" name="blankIdsNum" id="blankIdsNum" value="1">
			</label> 
			<span style="text-align: center;display:block;">---------------------------判断题---------------------------</span>
			<label> 
				<span>题号和分数:</span> <input type="text" name="judgeIds" readonly style="cursor: pointer;" id="judgeIds" value="1" onclick="getExam('judge','judgeIds')">
				<span>选择题分数:</span> <input type="text" name="judgeIdsScore" id="judgeIdsScore" value="1" readonly>
				<input type="hidden" name="judgeIdsNum" id="judgeIdsNum" value="1">
			</label> 
			<span style="text-align: center;display:block;">---------------------------主观题---------------------------</span>
			<label> 
				<span>题号和分数:</span> <input type="text" name="subjectiveIds" readonly style="cursor: pointer;" id="subjectiveIds" value="1" onclick="getExam('subjective','subjectiveIds')">
				<span>选择题分数:</span> <input type="text" name="subjectiveIdsScore" id="subjectiveIdsScore" value="1" readonly>
				<input type="hidden" name="subjectiveIdsNum" id="subjectiveIdsNum" value="1">
			</label> 
			
			<label> 
				<span>&nbsp;</span> 
				<input type="button" class="button" value="提交" onclick="paperSubmit()">
				&nbsp;&nbsp;&nbsp;
		    	<a href="javascript:clear();" style="font-size: 14px;color: #999">清除</a>
			</label>
		</form>
	</div>
	<div id="promptDiv" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:400px; padding:10px;">
	
	</div>
	
	<script>
		function getExam(url,name){
			$("#promptDiv").dialog({
				title:"题型窗口",
				width:'800',
				height:'600',
				closed:false,
				modal:true,
				href:url,
				onLoad:function(){
					var data =$("#"+name).val();
					if(data != ""){
						var checked = eval('('+data+')');
						for(var i = 0 ; i < checked.length; i++) {
							var id = checked[i].id;
							var score = checked[i].score;
							$("#"+ id).attr('checked',true);
							$("#score"+id).attr('value',score);
						}
					}
				},
				buttons:[{
					text:"确定",
					handler:function() {
						// 获取选择复选框对象
						var $chks = $("#promptDiv input:checkbox:checked");
						// 定义json字符串格式
						var json = "[";
						// 定义总分
						var totalScore = 0;
						// 定义数量
						var num = 0;
						// 遍历所有选择的复选框对象
						$chks.each(function() {
							var $ck = $(this);
							// 获取复选框对象vlaue值
							var value = $ck.val();
							// 获取分数
							var score = $ck.next().val();
							// 计算总分
							totalScore += parseFloat(score);
							json +="{\"id\":"+value+",\"score\":"+score+"},"
							num ++;
						});
						json = json.substring(0,json.length-1);
						if(json.length>1){
							json+="]";
						}
						// 填充内容
						$("#"+name).attr("value",json);
						// 填充总分
						$("#"+name+"Score").attr("value",totalScore);
						// 填充总数
						$("#"+name+"Num").attr("value",num);
						
						// 关闭模态 
						$('#promptDiv').dialog('close'); 
						
					}
				}]
			});
	}
	
	
	// 清除文本框内容
	function clear(){
		$("#choiceIds").attr("value","");
		$("#choiceIdsScore").attr("value","");
		$("#choiceIdsNum").attr("value","");
		$("#multipleIds").attr("value","");
		$("#multipleIdsScore").attr("value","");
		$("#multipleIdsNum").attr("value","");
		$("#blankIds").attr("value","");
		$("#blankIdsScore").attr("value","");
		$("#blankIdsNum").attr("value","");
		$("#judgeIds").attr("value","");
		$("#judgeIdsScore").attr("value","");
		$("#judgeIdsNum").attr("value","");
		$("#subjectiveIds").attr("value","");
		$("#subjectiveIdsScore").attr("value","");
		$("#subjectiveIdsNum").attr("value","");
	}
	
	function paperSubmit(){
		$("#handPaper").form('submit',{
			url:"paper.do?method=saveHandPaper",
			onSubmit:function(){
				
			},
			success:function(data){
				alert(data);
				if(data == "OK") {
					alert("提交成功！");
				} else {
					alert("提交失败！");
				}
			}
		});
	}
		</script>
	
		
</body>
</html>