// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	
	// ------ 모달팝업 영역 ------
	const modal = document.getElementsByClassName("header-modal")[0];
	const modal_popup = document.getElementsByClassName("header-modal-popup")[0];
	const modal_open = document.getElementsByClassName("header-modal-btn")[0];
	const modal_close = document.getElementsByClassName("close-btn")[0];
	const body_height = document.body.scrollHeight;
	let save_scroll;
	
	// 모달팝업을 여는 메서드
	function openModal() {
		const scroll = document.documentElement.scrollTop;
		save_scroll = scroll; // 팝업을 열 때 현재 스크롤 저장
	    document.body.style.position = "fixed"; // 스크롤 방지
    	document.body.style.top = `-${scroll}px`; // 현재 스크롤 위치 고정
    	document.body.style.overflowY = "scroll"; // 스크롤바 사라짐을 방지 (브라우저 폭 유지)
    	document.body.style.width = "100%"; // 전체 너비 유지
    	modal.style.height = `${body_height}px`; // 팝업을 어느 위치에서 열어도 팝업 뒤에 흐린 배경 유지
    	modal_popup.style.top = `${scroll + 200}px`; // 팝업 위치 설정
    	
	    modal.classList.add("on"); // 팝업 열기
	}
	
	// 모달 팝업을 닫는 메서드
	function closeModal() {
	    document.body.style.position = "static"; // 원상 복귀
	    window.scrollTo(0, save_scroll); // 팝업을 열 때 저장한 위치에서 팝업 닫기
	    
	    modal.classList.remove("on"); // 팝업 닫기
	}
	
	// 열기 버튼을 클릭할 때 openModal() 호출
	modal_open.addEventListener("click", () => {
		openModal();
	});
	
	// 닫기 버튼을 클릭할 때 closeModal() 호출
	modal_close.addEventListener("click", () => {
	    closeModal();
	});
	
	// esc를 눌렀을 때 closeModal() 호출
	document.addEventListener("keydown", (event) => {
	    if (event.key === "Escape") {
	        closeModal();
	    }
	});
	// ------ end ------
});
// ------ DOMContentLoaded end ------
