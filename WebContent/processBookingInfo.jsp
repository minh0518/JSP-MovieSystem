<!-- bookinInfo페이지에서 입력받은 예매자 정보를 쿠키에 저장하는 창 -->

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	
	Cookie name = new Cookie("Booking_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie address = new Cookie("Booking_address", URLEncoder.encode(request.getParameter("address"), "utf-8"));
	Cookie account = new Cookie("Booking_account", URLEncoder.encode(request.getParameter("account"), "utf-8"));
	Cookie accountpass = new Cookie("Booking_accountpass", URLEncoder.encode(request.getParameter("accountpass"), "utf-8"));
	Cookie bookingDate = new Cookie("Booking_date",	URLEncoder.encode(request.getParameter("bookingDate"), "utf-8"));
	Cookie count= new Cookie("Booking_count",URLEncoder.encode(request.getParameter("count"), "utf-8"));

	//이렇게 쿠키에 들어가는 값들은 shippingInfo.jsp에서 form태그 안에 input태그에 입력된 값들이다
	//이렇게 입력받은 일반 문자열을 서버로 넘기기 위해서 URLEncoder로 보내줘야 한다
	
	
	
	
	name.setMaxAge(24 * 60 * 60);
	address.setMaxAge(24 * 60 * 60);
	account.setMaxAge(24 * 60 * 60);
	accountpass.setMaxAge(24 * 60 * 60);
	bookingDate.setMaxAge( 24 * 60 * 60);
	count.setMaxAge( 24 * 60 * 60);
	
	response.addCookie(name);
	response.addCookie(address);
	response.addCookie(account);
	response.addCookie(accountpass);
	response.addCookie(bookingDate);
	response.addCookie(count);
/* 쿠키를 등록할 때만 name이라는 변수가 쓰이는 것이고 쿠키에 등록이 되면 이제 다른 곳에서 쿠키를 사용할 땐
Booking_name로 사용하는 것이다 */

	response.sendRedirect("bookConfirmation.jsp");
	
%>



<!-- URLEncoder는 일반 문자열을 웹(서버)에서 사용되는 문자열로 변환
URLDecoder는 웹(서버)에서 사용되는 문자열을 일반 문자열로 변환 -->