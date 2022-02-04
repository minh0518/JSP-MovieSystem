<!-- 장바구니에 있는 목록들을 선택적으로 삭제 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>

<%
	String name = request.getParameter("id"); //status.jsp에서 넘겨 준 요청id를 가져온다
	if (name == null || name.trim().equals("")) {
		response.sendRedirect("movies.jsp"); //아이디가 없다면 다시 목록으로 돌아감
		return;
	}

	//위는 받은 아이디가 없을 경우, 아래는 MovieRepository에 삭제를 요청받은 영화가 없는경우를 대비한 익셉션
	
	MovieRepository dao = MovieRepository.getInstance();
	Movie movie = dao.getMovieByname(name); //요청 name에 맞는 해당상품을 가져온다
	if (movie == null) {	//id에 맞는 상품이 없으면 익셉션
		response.sendRedirect("exceptionNoMovieName.jsp");
	}

	ArrayList<Movie> list = (ArrayList<Movie>)session.getAttribute("movielist");
	Movie moviesQnt = new Movie(); 
	for (int i = 0; i < list.size(); i++) { // carlist에서 세션속성값을 가져오고 그 가져온 값만큼 반복
		moviesQnt = list.get(i);
		if (moviesQnt.getMoviename().equals(name)) {// 요청id와 carlist에 있는 품목의id가 같으면  장바구니에서 삭제
			list.remove(moviesQnt);
		}
	}

	response.sendRedirect("status.jsp");
%>
