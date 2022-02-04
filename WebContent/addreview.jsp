<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"  href ="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>리뷰 작성</title>
</head>
<body>
	
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">리뷰 작성</h1>
		</div>
	</div>
	<div class="container">  <!-- action은 폼 데이터를 받아 처리하는 url을 작성한 것이다-->
		
		<form name="newReview" action="./processAddreview.jsp" class="form-horizontal" method="post" >
																								<!-- 파일 업로드를 위해 인크립트 타입은 필수다 -->				   
	<!-- 		<div class="form-group row">
				<label class="col-sm-2">영화 제목</label>
				<div class="col-sm-3">
					<input type="text" id ="reviewmoviename" name="reviewmoviename" class="form-control" > 
				</div>
			</div> -->
			
			<div class="form-group row">
				<label class="col-sm-2">영화 제목</label>
				<div class="col-sm-3">
				<select name="reviewmoviename">
					<option vlaue="LALALAND" >LALALAND</option>
					<option vlaue="DarkNight">DarkNight</option>
					<option vlaue="Social Network">Social Network</option>
					<option vlaue="Fast&Furious9">Fast&Furious9</option>
					<option vlaue="Cruella">Cruella</option>
					<option vlaue="The Conjuring3">The Conjuring3</option>
				</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">작성자</label>
				<div class="col-sm-3">
					<input type="text" id ="reviewer" name="reviewer" class="form-control" >
					<!-- 여기서 id는 js에 넘어가는 값이고 (getElementById("reviewer");)
					name은 action속성을 통해 다른 jsp파일로 넘어가는 값이다( request.getParameter("reviewer");) 
					물론 name으로도 넘길수 있기도 하다--> 
				</div>
			</div>
		
<!-- 			<div class="form-group row">
				<label class="col-sm-2">후기 작성</label>
				<div class="col-sm-3">
					<input type="text" id ="writereview" name="writereview" class="form-control" >
				</div>
			</div> -->
			 
			<div class="form-group row">
				<label class="col-sm-2">후기 작성</label>
				<div class="col-sm-3">
					<textarea  id="writereview" name="writereview"  rows="10" class="form-control" ></textarea>
				</div>
			</div> 
			
			<div class="form-group row">
				<label class="col-sm-2">평점</label>
				<div class="col-sm-5">
					<input type="radio" id="grade" name="grade" value="1"> 1
					<input type="radio" id="grade" name="grade" value="2"> 2
					<input type="radio" id="grade" name="grade" value="3"> 3
					<input type="radio" id="grade" name="grade" value="4"> 4
					<input type="radio" id="grade" name="grade" value="5"> 5
				</div>
			</div>
	<!-- 		<div class ="form-group row">
			<label class ="col-sm-2"><fmt:message key="productImage" /></label>
				<div class ="col-sm-5">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div> -->
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">		
				 	<!-- 리뷰를 입력하는 곳에 대해서 유효성 검사를 하는 것이므로 addreview에 자바스크립트 함수를 onclick으로 연결해 준다 -->		
					<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddReview()">
					<!-- submit은 상위 form태그에 이벤트를 등록하고 button은 현재 태그에 이벤트를 등록한다 했는데
					여긴 상위 form태그에도 이벤트가 action으로 걸려있고 button으로 이벤트를 사용하고 있다.
					이럴 경우, '등록'버튼을 누르게 되면 우선 button태그의 핸들러인 js의 validation이 실행이 되고 
					vaildation에서 마지막에 여기 form태그의 name에 submit을 해주게 되면
					그제서야 위의 form태그에 있는 이벤트 action="./processAddreview.jsp"가 작동이 되는 것이다 --> 
				</div>
			</div>
		</form>
	</div>

</body>
</html>
