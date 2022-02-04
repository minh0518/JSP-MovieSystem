/*260,277,281 페이지 참고*/
/*리뷰를 입력하는 곳에 대해서 유효성 검사를 하는 것이므로 addreview에 자바스크립트 함수를 onclick으로 연결해 준다*/
/*로그인 정보도 해볼라 했는데 로그인에서는 유효성이 먹히지가 않는다*/

function CheckAddReview() {
// 이 함수에서 false가 리턴이 되면 addreview의 onclick="CheckAddReview()"에서 false가 들어가므로
	// 더이상 진행이 안된다. >>  action="./processAddreview.jsp"가 작동이 안 된다는 것이다
	
	let reviewer=document.getElementById("reviewer");			//첫번째나 두번째나 똑같이 작동. 표현방식의 차이
	//let reviwer=document.newReview.reviewer.value;			//이건 id속성이 아닌 name속성을 이용해서 가져온 것이다
														//newReview,reviewer둘다 name속성이다
	let writereview=document.getElementById("writereview");
	let grade=document.getElementById("grade");		
/*	
	let j_username=document.getElementById("j_username");
	let j_password=document.getElementById("j_password");
	*/
	if (!check(/^[가-힣]*$/, reviewer,"이름은 한글로 작성해 주세요")){
		return false;
	}
	
	
	if (writereview.value.length < 20 || writereview.value.length > 100) {
		alert("리뷰\n최소 20자에서 최대 100자까지 입력하세요");
		writereview.select();
		writereview.focus();
		return false;
	}
	
	if(grade==""){
		alert("평점을 선택해 주세요");
		return false;
	}

	
/*	if (!check(/^[a-zA-Z]*$/, j_username," ID는 여기서 영문으로 입력하셔야 합니다")){
		return false;
	}
	
	if (!check(/^[a-zA-Z]*$/, j_username,"PASSWORD는 여기서 영문으로 입력하셔야 합니다")){
		return false;
	}*/
	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {//이거 위에 받는 방식이 .value;면 e만 써도 되는거 아닌가?
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newReview.submit()
	 
//	 addProduct.jsp를 보면 <form name="newProduct" action="./processAddProduct.jsp"가 있는데
//	 여기서 유효성 검사를 다 통과하고(43행까지) 다 통과가 됐으면 이제 submit을 통해 action태그로 연결된 	 processAddProduct.jsp로
	 // processAddProduct.jsp의 로직을 수행하라는 것이다
}
