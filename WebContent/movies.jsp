<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>현재 상영 중</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">현재 상영 중</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
		<%@include file="dbconn.jsp" %> 
			<%
				/* PreparedStatement pstmt =null;
				ResultSet rs= null; */  //위에 include file="dbconn.jsp"  선언했으므로 변수선언 필요x
				String sql="select * from movies";//movies는 db안에 있는 table이름이다
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()){
			%>
			<div class="col-md-4">
				<img src ="resources/images/<%=rs.getString("m_filename")%>" style ="width: 80%">
				<h3><%=rs.getString("m_name")%></h3>
				<p><%=rs.getString("m_genre")%>
				<p><%=rs.getInt("m_price")%>원
				<br>
				<strong>잔여 좌석 :<%=rs.getInt("m_sit")%>석</strong> 
				<p><a href="./movie.jsp?id=<%=rs.getString("m_name")%>" class="btn btn-secondary" role="button"> 영화 상세 정보 &raquo;</a>
			</div>
						<%
				}
				
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>