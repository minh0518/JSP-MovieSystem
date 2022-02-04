<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Soon" %>
<%@ page import="dao.SoonRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>영화 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" /> 
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">영화 상세 정보</h1>
		</div>
	</div>
	
	<%
		String name = request.getParameter("id");//영화 제목을 가져옴
		SoonRepository dao = SoonRepository.getInstance(); //MovieRepository를 사용하기 위해 인스턴스화
		Soon movie = dao.getMovieByname(name);
		//Soon의 각 영화클래스들은 리스트에 각각 저장이 되어있고 이름만 받아와서 이제 그 이름을 통해
		//해당 이름의 클래스만 가져오는 것이다
	%>
	
		<div class="container"> 
		<div class="row">
		<div class ="col-md-5">
					<img src="./resources/images/<%=movie.getFilename()%>" style="width: 100%" />
					<!-- c:/upload/경로에 있는 product.getFilename() 이름의 이미지를 사용 -->
			</div>
			<div class="col-md-6">
			<!-- 이름 장르 가격 빼고 다 -->
				<h3><%=movie.getMoviename()%></h3>
				<p><%=movie.getActor()%> 외 출연</p>
				<p><b>관람등급</b><span class="badge badge-danger"><%=movie.getLimit()%></span>
				<p><b>감독</b> :<%=movie.getDirector()%>
				<p><b>영화사</b> : <%=movie.getManufacturer()%>
				<p><b>개봉일</b> : <%=movie.getDate()%>
				
				<h4>예약이 불가능합니다.</h4>
				
				<a	href="./soons.jsp" class="btn btn-secondary"> 뒤로가기 &raquo;</a>
				<a	href="./movies.jsp" class="btn btn-secondary"> 현재 상영작 보기&raquo;</a>
			
				</form>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>