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
		<form id="autoPaper" method="post" class="elegant-aero">
			<h1>自动组卷 </h1>
			<label> 
				<span>选择课程:</span>
				<select name="courseId">
					<c:forEach items="${courses }" var="course">
						<option value="${course.courseId }">${course.courseName }</option>
					</c:forEach>
				</select>
			</label> 
			<input type="hidden" name="ruleType" value="0">
			
			<span style="text-align: center;display:block;">---------------------------单选择题---------------------------</span>
			<label> 
				<span>题数:</span> <input type="text" name="choiceIdsNum" id="choiceIdsNum">
				<span>选择题分数:</span> <input type="text" name="choiceIdsScore" id="choiceIdsScore">
			</label> 
			<span style="text-align: center;display:block;">---------------------------多选择题---------------------------</span>
			<label> 
				<span>题数:</span> <input type="text" name="multipleIdsNum" id="multipleIdsNum">
				<span>选择题分数:</span> <input type="text" name="multipleIdsScore" id="multipleIdsScore">
			</label> 
			<span style="text-align: center;display:block;">---------------------------填空题---------------------------</span>
			<label> 
				<span>题数:</span> <input type="text" name="blankIdsNum" id="blankIdsNum">
				<span>选择题分数:</span> <input type="text" name="blankIdsScore" id="blankIdsScore">
			</label> 
			<span style="text-align: center;display:block;">---------------------------判断题---------------------------</span>
			<label> 
				<span>题数:</span> <input type="text" name="judgeIdsNum" id="judgeIdsNum">
				<span>选择题分数:</span> <input type="text" name="judgeIdsScore" id="judgeIdsScore">
			</label> 
			<span style="text-align: center;display:block;">---------------------------主观题---------------------------</span>
			<label> 
				<span>题数:</span> <input type="text" name="subjectiveIdsNum" id="subjectiveIdsNum">
				<span>选择题分数:</span> <input type="text" name="subjectiveIdsScore" id="subjectiveIdsScore">
			</label> 
			
			<label> 
				<span>&nbsp;</span> 
				<input type="button" value="提交" class="button" onclick="paperSubmit()">
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:clear();" style="font-size: 14px; color: #999">清除</a>
			</label>
		</form>

</div>



		<script>
			// 提交自动组卷
			function paperSubmit() {
				$("#autoPaper").form('submit', {
					url : "paper.do?method=saveAutoPaper",
					onSubmit : function() {

					},
					success : function(data) {
						alert(data);
					}
				});
			}

			// 清除文本框内容
			function clear() {
				$("#choiceIdsScore").attr("value", "");
				$("#choiceIdsNum").attr("value", "");
				$("#multipleIdsScore").attr("value", "");
				$("#multipleIdsNum").attr("value", "");
				$("#blankIdsScore").attr("value", "");
				$("#blankIdsNum").attr("value", "");
				$("#judgeIdsScore").attr("value", "");
				$("#judgeIdsNum").attr("value", "");
				$("#subjectiveIdsScore").attr("value", "");
				$("#subjectiveIdsNum").attr("value", "");
			}
		</script>
	
</body>
</html>