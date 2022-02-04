<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate();
	response.sendRedirect("welcome.jsp");
	//로그아웃 버튼을 누르면 초기 화면으로 넘어감
%>