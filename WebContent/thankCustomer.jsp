<!-- 최종 확인창 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>예매 완료</title>
</head>
<body>
	<!-- movie의 getstatus 아니면 쿠키에서 좌석수를 추가
	db의 잔여석에서 뺐는데  <0 이면 좌석이 부족하다는 에러페이지로 이동 -->
	<%
		String Booking_name = "";
		String Booking_date = "";
		String Booking_count = "";

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Booking_name"))
					Booking_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Booking_date"))
					Booking_date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Booking_count"))
					Booking_count = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예매 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">예매가 완료 되었습니다</h2>
		<p>	예매인 <strong><%	out.println(Booking_name);	%></strong>
		<br>
		날짜 : <strong><%	out.println(Booking_date);	%></strong>
		<br>
		인원수 : <strong><% out.println(Booking_count); %></strong>명 
		</p>		
	</div>
	<div class="container">
		<p>	<a href="movies.jsp" class="btn btn-secondary"> &laquo; 영화 목록</a>		
	</div>
</body>
</html>
<%
	session.invalidate();

	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Booking_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Booking_date"))
			thisCookie.setMaxAge(0);
		if (n.equals("Booking_address"))
			thisCookie.setMaxAge(0);
		if (n.equals("Booking_account"))
			thisCookie.setMaxAge(0);
		if (n.equals("Booking_accountpass"))
			thisCookie.setMaxAge(0);
	
		response.addCookie(thisCookie);
	}
%>
