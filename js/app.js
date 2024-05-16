// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	// 스크롤 관련 메서드
    $(window).scroll(function(){ 
		const scroll = $("html").scrollTop();
		const header_container = document.getElementById("header-container");
		const header_bottom = document.getElementById("header-bottom");
			
		// 스크롤을 내렸을 때 헤더가 변경
		if(scroll > 60){
			$("#header-top").fadeOut(0);
			header_container.classList.add("header-container-invert");
			header_bottom.classList.add("header-bottom-invert");
		// 스크롤을 다시 올렸을 때 헤더 원상복귀
		}else{
			$("#header-top").fadeIn(0);
			header_container.classList.remove("header-container-invert");
			header_bottom.classList.remove("header-bottom-invert");
		}
	})
})