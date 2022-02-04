<!-- 영화 전체 목록을 보여주는 페이지 -->
<!-- 웹마켓의 products와 같다 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Review"%>
<%@ page import="dao.ReviewRepository"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>리뷰</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">리뷰</h1>
		</div>
			
	</div>
	<p>
			<a href="./movies.jsp" class="btn btn-secondary" role="button"> 영화 목록으로 돌아가기 &raquo;</a>
			<a href="./addreview.jsp" class="btn btn-secondary" role="button"> 리뷰 작성하기 &raquo;</a>
		</p>
		
		
		
		<div style="padding-top: 50px">
			<table class="table table-hover">		
			<tr>
				<th class="text-center">영화제목</th>
				<th class="text-center">작성자</th>
				<th class="text-center">리뷰</th>
				<th class="text-center">평점</th>
			</tr>
		<%
			ReviewRepository dao=ReviewRepository.getInstance();
			ArrayList<Review> listOfReviews=dao.getAllReviews();
		%>
	
			<%
				for (int i = 0; i < listOfReviews.size(); i++) {
							Review review = listOfReviews.get(i);
			%>
			
			<tr>
				<td class="text-center"><em><%=review.getReviewmoviename()%> </em></td>
				<td><%=review.getReviewer()%></td>
				<td class="text-center"><%=review.getWritereview()%></td>
				<td class="text-center"><%=review.getGrade()%></td>
			</tr>
			
	
			 
			<%
				}
			%>
			
			</table><!-- 반드시 이 태그를 } 밖에 해줘야 한다
			그렇지 않으면 각 반복문을 통해 첫 줄을 출력하자마자 바로 테이블이 닫혀버리고
			그 다음부터는 테이블은 닫혀있는 상태에서, 테이블을 여는 태그 없이 td로 내용만나열하고 테이블을 닫아버리는 현상이 발생하면서
			테이블 형태로 출력이 되지 않는다 --> 
		</div>
		<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>