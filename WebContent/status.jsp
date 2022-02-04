<!-- 예매 목록을 출력하는 페이지-->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String statusId = session.getId();
//이건 현재 프로젝트에 사용되는 서버의 고유의 세션 id를 반환받는 것인데 이건 장바구니 전체를 다 비워버리는 delete.jsp에 사용할 때 필요
%>
<title>예매 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예매 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="deletebooking.jsp?id=<%=statusId%>" class="btn btn-danger">예매목록 비우기</a></td>
					<td align="right"><a href="bookinginfo.jsp?id=<%=statusId%>" class="btn btn-success">예매하러 가기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>영화 제목</th>
					<th>가격</th>
					<th>관람등급</th>
				</tr>
				<%
					int sum = 0;
							ArrayList<Movie> list = (ArrayList<Movie>) session.getAttribute("movielist");
									
					
							if (list == null)
								list = new ArrayList<Movie>();
							//장바구니가 비어있으면 새로 만들어준다
							
							for (int i = 0; i < list.size(); i++) { // 영화리스트 하나씩 출력하기
								Movie movie = list.get(i);
				%>
				<tr> <!-- 상품정보 출력 -->
					<td><%=movie.getMoviename()%></td>
					<td><%=movie.getPrice()%></td>
					<td><%=movie.getLimit()%></td>
					<%-- <td><%=total%></td> --%>
					<td><a href="removebooking.jsp?id=<%=movie.getMoviename()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				
			</table>
			<a href="./movies.jsp" class="btn btn-secondary"> &laquo; 현재 상영 영화</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>


