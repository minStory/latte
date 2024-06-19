//페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	
	// ------ 아이디 중복 체크 ------
	const duplicate = document.getElementsByClassName("duplicate")[0];
	
	duplicate.addEventListener("click", () => {
		const id = document.getElementsByClassName("id")[0];
		const id_text = document.getElementsByClassName("id-text")[0];
		const name = document.getElementsByClassName("name")[0];
		
		fetch(`signup_id_duplicate_check?id=${id.value}`) // 입력받은 id를 서버로 전달하여 검증
	        .then(response => response.json()) // 응답을 json 객체로 변환
	        .then(data => {
	        	if(data.result === true){
					id_text.style.color = "green";
					id_text.innerText = "아이디 사용 가능";
					name.focus();
				} else if(data.result === false){
					id_text.style.color = "red";
					id_text.innerText = "아이디 사용 불가";
					id.value = "";
					id.focus();
				}
				id_validate = data.result;
	        })
	        .catch(error => console.error("Error:", error));
	})
	// ------ end ------
	
	
	// ------ 비밀번호 자릿수 및 두 비밀번호가 같은지 확인 ------
	const pwd = document.getElementsByClassName("pwd")[0];
	const pwd_check = document.getElementsByClassName("pwd_check")[0];
	const pwd_text1 = document.getElementsByClassName("pwd-text1")[0];
	const pwd_text2 = document.getElementsByClassName("pwd-text2")[0];
	
	pwd_text1.style.display = "none";
	pwd_text2.style.display = "none";
	
	pwd.addEventListener("keyup", () => {
		pwd_text1.style.display = "inline-block";
		if(pwd.value.length === 0){
			pwd_text1.style.display = "none";
			pwd_validate = false;
		}else if(4 > pwd.value.length || pwd.value.length > 16){
			pwd_text1.style.color = "red";
			pwd_text1.innerText = "비밀번호는 4자리 이상, 16자리 이하로 입력해주세요."
			pwd_validate = false;
		}else {
			pwd_text1.style.color = "green";
			pwd_text1.innerText = "비밀번호 사용 가능"
			pwd_validate = true;
		}
		
		if(pwd_check.value.length === 0){
			pwd_text2.style.display = "none";
			pwd_check_validate = false;
		}else if(pwd_check.value.length < 4){
			pwd_text2.style.color = "red";
			pwd_text2.innerText = "비밀번호는 4자리 이상, 16자리 이하로 입력해주세요."
			pwd_check_validate = false;
		}else if(pwd.value !== pwd_check.value){
			pwd_text2.style.color = "red";
			pwd_text2.innerText = "비밀번호가 일치하지 않습니다."
			pwd_check_validate = false;
		}else {
			pwd_text2.style.color = "green";
			pwd_text2.innerText = "비밀번호 일치"
			pwd_check_validate = true;
		}
	});
	
	pwd.addEventListener("focusin", () => {
		if(pwd.value.length === 0){
			pwd_text1.style.display = "none";
			pwd_validate = false;
		}else{
			pwd_text1.style.display = "inline-block";
		}
	});
	
	pwd_check.addEventListener("keyup", () => {
		pwd_text2.style.display = "inline-block";
		if(pwd_check.value.length === 0){
			pwd_text2.style.display = "none";
			pwd_check_validate = false;
		}else if(pwd_check.value.length < 4){
			pwd_text2.style.color = "red";
			pwd_text2.innerText = "비밀번호는 4자리 이상, 16자리 이하로 입력해주세요."
			pwd_check_validate = false;
		}else if(pwd.value !== pwd_check.value){
			pwd_text2.style.color = "red";
			pwd_text2.innerText = "비밀번호가 일치하지 않습니다."
			pwd_check_validate = false;
		}else {
			pwd_text2.style.color = "green";
			pwd_text2.innerText = "비밀번호 일치"
			pwd_check_validate = true;
		}
	});
	
	pwd_check.addEventListener("focusin", () => {
		if(pwd_check.value.length === 0){
			pwd_text2.style.display = "none";
			pwd_check_validate = false;
		}else{
			pwd_text2.style.display = "inline-block";
		}
	});
	// ------ end ------
});
// ------ DOMContentLoaded end ------



// ------ 휴대폰번호 입력 시 자동으로 다음 박스로 이동 ------
function movePhoneBox() {
	const phone = Array.from(document.getElementsByClassName("phone"));

	if (phone[0].value.length === 3) {
		phone[1].focus();
	}
	
	if (phone[1].value.length === 4) {
		phone[2].focus();
	}
}
// ------ end ------



// ------ 회원가입 시 아이디와 비밀번호를 검증하는 메서드 ------
let id_validate = false;
let pwd_validate = false;
let pwd_check_validate = false;

function validate(){
	if(id_validate === false){
		alert("아이디 중복을 확인해주세요!");
		return false;
	}
	
	if(pwd_validate === false || pwd_check_validate == false){
		alert("비밀번호를 확인해주세요!");
		return false;
	}
}
// ------ end ------