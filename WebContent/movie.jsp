<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>영화 상세 정보</title>
<script type="text/javascript">
	function addToStatus(){
			if(confirm("이 영화를 예매하시겠습니까?")){
				alert("영화 구매창으로 넘어갑니다");
				document.addForm.submit();
			}
			else{
				alert("취소되었습니다");
				document.addForm.reset();
			}
			
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" /> 
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">영화 상세 정보</h1>
		</div>
	</div>
	<%@include file="dbconn.jsp" %>
	<%

	
		String name = request.getParameter("id");//영화 제목을 가져옴
		MovieRepository dao = MovieRepository.getInstance(); //MovieRepository를 사용하기 위해 인스턴스화
		Movie movie = dao.getMovieByname(name);//매개변수로 입력받은 name과 동일한 제품을 리턴하는 메소드이다
				 									//받아온 아이디를 통해 상품리스트에서
				 									//해당 아이디와 맞는 상품을 변수로 넘겨줌
				 							//Movie형인 movie변수에 넘겨받은 name과 동일안 Movie형 변수를
				 							//넘겨주었기 때문에 따로 인스턴스화를 할 필요 없이 바로 해당 movie에 대해
				 							// .으로 메소드 사용가는
				 							
		//하나의 영화를 나타내는 Movie클래스들은 리스트에 각각 저장이 되어있고 이름만 받아와서
		//리스트에서 해당 이름의 클래스만 가져오는 것이다
	String sql="select m_sit from movies where m_name=?";//movies는 db안에 있는 table이름이다
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,name);
	rs=pstmt.executeQuery();
	rs.first();
		
	%>
	
		<div class="container"> 
		<div class="row">
		<div class ="col-md-5">
					<img src="resources/images/<%=movie.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
			<!-- 이름 장르 가격 빼고 다 -->
				<h3><%=movie.getMoviename()%></h3>
				<p><%=movie.getActor()%> 외 출연</p>
				<p><b>관람등급</b><span class="badge badge-danger"><%=movie.getLimit()%></span>
				<p><b>감독</b> :<%=movie.getDirector()%>
				<p><b>장르</b> : <%=movie.getGenre()%>
				<p><b>제작사</b> : <%=movie.getManufacturer()%>
				<p><b>개봉일</b> : <%=movie.getDate()%>
				<h4> 잔여 좌석 : <strong><%=rs.getInt("m_sit")%></h4>
				<br>
				<h4><%=movie.getPrice()%>원</h4>
				
				<%-- <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post"> --%>
				<!-- 위의 자바스크립트 함수가 여기에 연결이 됨 --> 
				<p><form name="addForm" action="addstatus.jsp?id=<%=movie.getMoviename()%>" method="post">
				<a href="#" class="btn btn-info" onclick="addToStatus()"> 영화 예매 &raquo;</a> <!-- 상품 주문 버튼을 누르면 위의 자바스크립트 함수 addToStatus()가 실행이 됨 -->
					<!-- js함수로 먼저 넘어가야 하므로 #로 막음 -->																<!-- 상품주문 > js 함수 실행 > 바로 위의 addForm form태그 실행 --> 
				<a	href="./movies.jsp" class="btn btn-secondary"> 영화 목록 &raquo;</a>
			
				</form>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>
