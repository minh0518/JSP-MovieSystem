<!-- 장바구니 전체를 다 비워버림 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>

<%
	String name = request.getParameter("id"); //세션(여기선 장바구니로 쓰임)의 아이디를 받는다

	if (name == null || name .trim().equals("")) {  //넘어온 cartId의 값이 없으면 다시 장바구니 페이지로 넘어감
		response.sendRedirect("status.jsp");		
		return;
	}

	session.invalidate();		//세션삭제 >> 장바구니세션이 다 지워짐
	
	response.sendRedirect("status.jsp");
%>
