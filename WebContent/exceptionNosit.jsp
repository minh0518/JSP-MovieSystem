<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>영화 선택 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">자리가 꽉 찼습니다</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p><a href="movies.jsp" class="btn btn-secondary"> 영화 목록 &raquo;</a>			
	</div>
</body>
</html>
