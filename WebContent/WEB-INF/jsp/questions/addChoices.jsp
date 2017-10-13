<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<style type="text/css">
		#ff div {
			margin-top:10px;
		}
	</style>
	<form id="ff" method="post">
		<div>
			<label for="choices">编号:</label>
			<input id="cc" name="choiceId" value="-1">  
		</div>
		<div>
			<label for="name">课程：</label> <input class="easyui-validatebox"
				type="text" name="courseId" data-options="required:true" />
		</div>
		<div>
			<label for="email">题目：</label> <input class="easyui-validatebox"
				type="text" name="choiceTitle" data-options="required:true" />
		</div>
		<div>
			<label for="email">答案A：</label> <input class="easyui-validatebox"
				type="text" name="answera" data-options="required:true" />
		</div>
		<div>
			<label for="email">答案B：</label> <input class="easyui-validatebox"
				type="text" name="answerb" data-options="required:true" />
		</div>
		<div>
			<label for="email">答案C：</label> <input class="easyui-validatebox"
				type="text" name="answerc" data-options="required:true" />
		</div>
		<div>
			<label for="email">答案D：</label> <input class="easyui-validatebox"
				type="text" name="answerd" data-options="required:true" />
		</div>
		<div>
			<label for="email">正确答案：</label> <input class="easyui-validatebox"
				type="text" name="answer" data-options="required:true" />
		</div>
		<div>
			<label for="email">题型：</label> <input class="easyui-validatebox"
				type="text" name="choicetype" data-options="required:true" />
		</div>
	</form>
	<script type="text/javascript">
		$(function() {
			$('#cc').combobox({    
			    url:'choices.json',    
			    valueField:'id',    
			    textField:'text'   
			});  
		});
	</script>
</body>
</html>