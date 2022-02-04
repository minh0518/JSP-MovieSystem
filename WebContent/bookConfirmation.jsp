<!-- 쿠키 정보를 가져와서 영수증 형태로 출력하는 창. 여기서 주문완료를 누르면 완료 창으로 넘어감 -->


<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	String bookid = session.getId();

	String Booking_name = "";
	String Booking_address = "";
	String Booking_account = "";
	String Booking_accountpass = "";
	String Booking_date = "";
	String Booking_count = "";
	
	
	Cookie[] cookies = request.getCookies();
	//쿠키를 다 가져온다
	
	if (cookies != null) {//쿠키가 있다면
		for (int i = 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];  //쿠키를 받기 위해 Cookie형 변수를 또한번 생성
	
	String n = thisCookie.getName();//쿠키의 이름:속성 중에서 이름을 받는다
	if (n.equals("Booking_name"))
		Booking_name= URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Booking_address"))
		Booking_address = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Booking_account"))
		Booking_account = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Booking_accountpass"))
		Booking_accountpass = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Booking_date"))
		Booking_date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	if (n.equals("Booking_count"))
		Booking_count = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
	}
	
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>예메 정보</title>
</head>
<body>

	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예매 정보</h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>성명 :</strong>
				 <%out.println(Booking_name);%>
				 <br> 
				주소 : <%out.println(Booking_address);%>
				 <br> 
				계좌번호 : <%out.println(Booking_account);%> 
				 <br>
				 계좌비밀번호 : <%out.println(Booking_accountpass);%> 
				 <br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>예매날짜: <%out.println(Booking_date);	%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">영화제목</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">인원 수</th>
			</tr>
			<%@include file="dbconn.jsp" %>
			<%
			

				int sum = 0;
				
				int sit,leftsit;
				
						ArrayList<Movie> list = (ArrayList<Movie>) session.getAttribute("movielist");
						if (list == null)
							list = new ArrayList<Movie>();
						//리스트가 비어있으면 빈 리스트를 만들어줌 >> 비어있는 세션을 받은 '것 처럼' 만들어줌
			
						for (int i = 0; i < list.size(); i++) { // 영화리스트 하나씩 출력하기
							Movie movie= list.get(i);
							int total = movie.getPrice() *Integer.parseInt(Booking_count);
										//가격 * 인원수
							sum = sum + total;
							
										
										
										
										
							String sql="select m_sit from movies where m_name=?";
							pstmt=conn.prepareStatement(sql);
							pstmt.setString(1,movie.getMoviename());
							rs=pstmt.executeQuery();
							rs.first();
							sit=(rs.getInt("m_sit"));	
							leftsit=sit-Integer.parseInt(Booking_count);//쿠키에서 온 값은 String이므로 int로 형변환
							//db에서 현재 장바구니에 있는 영화의 좌석 수를 가져와서
							//영화 예매할 때 입력한 인원수 만큼 빼줌
							//원래 수정하려면 그냥 아래의 update문만 실행하면 되지만 이번엔 원래 db에 있던 값을 바탕으로
							//연산을 하고 그 값으로 수정을 해야 하기 때문에 이렇게 select문을 먼저 해줘야 한다
							
							
							sql="update movies set m_sit=? where m_name=?";	
							pstmt=conn.prepareStatement(sql);
							pstmt.setInt(1,leftsit);
							pstmt.setString(2,movie.getMoviename());
							pstmt.executeUpdate();
							//실제 db에서 남은 좌석수를 차감
							
							sql="select m_sit from movies where m_name=?";
							pstmt=conn.prepareStatement(sql);
							pstmt.setString(1,movie.getMoviename());
							rs=pstmt.executeQuery();
							rs.first();
							//차감된 좌석수를 다시 읽어옴
							
						if( (rs.getInt("m_sit")) < 0 ){//잔여 좌석보다 큰 수를 입력했으면 익셉션을 발생
							response.sendRedirect("exceptionNosit.jsp");
							
							
							//그리고 다시 좌석수를 인원수 반영 이전 값으로 되돌려 놓아야 한다
							//그렇지 않으면 연산이 그대로 진행이 되어버렸기 때문에 좌석수가 음수상태로 남는다 
							sql="update movies set m_sit=? where m_name=?";	
							pstmt=conn.prepareStatement(sql);
							pstmt.setInt(1,sit);
							pstmt.setString(2,movie.getMoviename());
							pstmt.executeUpdate();
						}
						
						
						
			%> <!-- 세션에 있는 장바구니 목록들을 가져온다 -->
			<tr>
				<td class="text-center"><em><%=movie.getMoviename()%> </em></td>
				<td></td>
				<td class="text-center"><%=movie.getPrice()%>원</td>
				<td class="text-center"><%=Booking_count%>명</td>
			</tr> <!-- 세션에 있는 장바구니 목록들을 출력-->
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%>원 </strong></td>
			</tr>
			</table>
			
				<a href="bookinginfo.jsp"class="btn btn-secondary" role="button"> 이전 </a>
				<a href="thankCustomer.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
				<a href="bookCancelled.jsp" class="btn btn-secondary"	role="button"> 취소 </a>			
		</div>
	</div>	
</body>
</html>
