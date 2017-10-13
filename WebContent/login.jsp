<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


	<head>
		<meta charset="utf-8" />
		<title>登陆界面</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
	</head>

	<body>
		<div class="login_box">
			<form action="${pageContext.request.contextPath }/login.do?method=logincheck" method="post">
				<div class="in_text">
					<span class="icon"><i class="iconfont">&#xe63b;</i></span>
					<input type="text" name="account" id="account" class="in_box" />
					<label for="account" class="place" id="place1">用户名</label>
				</div>
				<div class="in_text">
					<span class="icon"><i class="iconfont">&#xe66c;</i></span>
					<input type="password" name="password" id="password" class="in_box" />
					<label for="password" class="place" id="place2">用户密码</label>
				</div>
				<div class="in_check">
					<span style="cursor: default;">请选择您的身份：</span>
					<input type="radio" name="user" id="teacher" value="tea" /><label for="teacher">教师</label> &nbsp;&nbsp;
					<input type="radio" name="user" id="student" value="stu" /><label for="student">学生</label>
				</div>

				<div class="in_check">
					<a href="javascript:onsubmit();" class="but_submit" id="but_submit">登&nbsp;&nbsp;陆</a>
				</div>

			</form>

		</div>
		<script type="text/javascript">
			function onsubmit(){
				document.getElementsByTagName("form")[0].submit();
			}
		</script>
		<script src="${pageContext.request.contextPath }/js/login.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>