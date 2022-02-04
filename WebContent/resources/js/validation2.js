/*bookininfo.jsp에서 유효성 실행*/
function CheckAddbookingIfo() {
		
	let name=document.getElementById("name");
	let address=document.getElementById("address");
	let account=document.getElementById("account");
	let accountpass=document.getElementById("accountpass");
	let count=document.getElementById("count");
	
	if (!check(/^[가-힣]*$/, name,"예매자 이름은 한글로 작성해 주세요")){
		return false;
	}
	

	if (!check(/^[가-힣0-9]*$/, address,"주소는 한글과 숫자를 조합하여 작성해 주세요")){
		return false;
	}
	
	
	if (!check(/^[0-9]*$/, account,"계좌번호는 숫자로 입력해 주세요")){
		return false;
	}
	
	if (!check(/^[0-9]*$/, accountpass,"비밀번호는 숫자로 입력해 주세요")){
		return false;
	}
	
	if (!check(/^[0-9]*$/, count,"인원수는 숫자로 입력해 주세요")){
		return false;
	}
	

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.bookingInput.submit()
	
}
