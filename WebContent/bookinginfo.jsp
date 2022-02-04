<!-- 예매자 정보를 입력하는 창. 이건 예매 영수증,최종확인에 사용이 된다 -->

<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예매 정보</h1>
		</div>
	</div>
	<div class="container">
		<form name="bookingInput" action="processBookingInfo.jsp" class="form-horizontal" method="post">
			
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" id="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input name="address" id="address" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">계좌번호 ('-'제외하고 입력)</label>
				<div class="col-sm-3">
					<input name="account" id="account" type="text" class="form-control" />
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2">계좌비밀번호</label>
				<div class="col-sm-3">
					<input name="accountpass" id="accountpass"  type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">예매날짜</label>
				<div class="col-sm-3">
					<input name="bookingDate" id="date" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">인원수</label>
				<div class="col-sm-3">
					<input name="count" id="count" type="number" class="form-control" />
				</div>
			</div>
			
			
			

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
				 	<a href="status.jsp?id=<%=request.getParameter("id")%>" class="btn btn-secondary" role="button"> 이전 </a>  
					<!-- <input	type="submit" class="btn btn-primary" value="확인" /> -->
					<input	type="button" class="btn btn-primary" value="확인" onclick="CheckAddbookingIfo()" />
					<a href="bookCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>