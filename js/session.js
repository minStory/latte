// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	
	// 페이지 로드 시 세션 시간 호출
	fetchCurrentTime();
	// ------ end ------
	
	
	
	// ------ 버튼을 누르면 세션 시간 초기화 ------
	const btn_session = document.getElementsByClassName("btn-session")[0];
	
	btn_session.addEventListener("click", () => {
	    fetch("reset_session") // 세션을 리셋할 서버로 요청
	        .then(response => {
	            if (response.ok) { // 응답이 정살일 경우
	                alert("세션을 초기화합니다.");
	                fetchCurrentTime(); // 세션시간 갱신
	            } else {
	                alert("세션 초기화 실패");
	            }
	        })
	        .catch(error => console.error("Error:", error));
	});
	// ------ end ------
});
// ------ DOMContentLoaded end ------



// ------ 세션 체크 -------
function fetchCurrentTime() {
    fetch("check_session") // 세션을 갱신할 서버로 요청
        .then(response => response.json()) // 응답을 json 객체로 변환
        .then(data => {
        	document.getElementsByClassName("btn-session")[0].innerText = data.session;
        })
        .catch(error => console.error("Error:", error));
}
// ------ end ------



// ------ 세션 만료 시 로그아웃  ------
function checkSession() {
    fetch("expired_session") // 세션 만료를 확인해 줄 서버로 요청
        .then(response => response.json()) // 응답을 json 객체로 변환
        .then(data => {
			alert("세션이 만료되었습니다.");
            window.location.href = data.expiredSession; // 세션 만료 시 리다이렉트할 페이지
        })
        .catch(error => console.error("Error:", error));
}
// ------ end ------