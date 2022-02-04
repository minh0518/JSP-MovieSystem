<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Soon" %>
<%@ page import="dao.SoonRepository" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>개봉 예정작</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">개봉 예정작</h1>
			<br>
			<p><a href="./movies.jsp" class="btn btn-secondary" role="button"> 현재 상영작 보러가기&raquo;</a>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@include file="dbconn.jsp" %>
			<%
			String sql="select * from soons";//sonns는 db안에 있는 table이름
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
			%>
			<div class="col-md-4">
				<img src ="./resources/images/<%=rs.getString("m_filename")%>" style ="width: 100%">
				<!--c:/upload/ product.getFilename()이라는 이미지를 가져옴
				이렇게 c:/upload에서 사진을 가져오기 때문에 ./resources/images/에 사진은 없어도 된다-->
				<h3><%=rs.getString("m_name")%></h3>
				<br>
				<strong><%=rs.getString("m_date")%> 개봉 예정</strong>
				<p><%=rs.getString("m_genre")%></p>
				
				
				
				<!-- 상세정보 버튼 -->
				<p><a href="./soon.jsp?id=<%=rs.getString("m_name")%>" class="btn btn-secondary" role="button"> 영화 상세 정보 &raquo;</a>
					
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