<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<!-- <script type="text/javascript" src="./resources/js/validation.js"></script> -->
<title>Login</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">회원만 사용이 가능합니다</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> 
					<input	type="text" class="form-control" placeholder="ID" id='j_username' name='j_username'>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input 	type="password" class="form-control" placeholder="Password" id='j_password' name='j_password'>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">뒤로가기</button> 
				<!-- 여기도 form 전체 태그에다가 action을 걸어두고 submit타입으로 제출 -->
				
			<!-- 	<input type="button" class="btn btn btn-lg btn-success btn-block" value="로그인" onclick="CheckAddReview()"> -->
				
			</form>
		</div>
	</div>
</body>
</html>