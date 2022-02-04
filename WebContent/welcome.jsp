<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "영화관에 오신 것을 환영합니다!";
	String tagline = "Welcome to Movie Theater!";%>
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3">
				<%=greeting%>
			</h2>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
		
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
			<br>
			<br>
			<h3> 메뉴를 선택 하세요 </h3>
			<p><a href="./movies.jsp" class="btn btn-secondary" role="button"> 현재 상영작 &raquo;</a>
			<a href="./soons.jsp" class="btn btn-secondary" role="button"> 개봉 예정작 &raquo;</a>
			<a href="./reviews.jsp" class="btn btn-secondary" role="button"> 리뷰 &raquo;</a>
			</p>
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>