// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	// ------ 스크롤 관련 메서드 ------
    document.addEventListener("scroll", () => {
		const scroll = document.documentElement.scrollTop;
		const header_container = document.getElementById("header-container");
		const header_bottom = document.getElementById("header-bottom");
			
		// 스크롤을 내렸을 때 헤더 디자인 변경
		if(scroll > 60){
			document.getElementById("header-top").style.display = "none";
			header_container.classList.add("header-container-invert");
			header_bottom.classList.add("header-bottom-invert");
		// 스크롤을 올렸을 때 헤더 디자인 복구
		}else{
			document.getElementById("header-top").style.display = "flex";
			header_container.classList.remove("header-container-invert");
			header_bottom.classList.remove("header-bottom-invert");
		}
	})
	// ------ end ------
	
	// ------ 메인 스페셜관 영상 관련 메서드 ------
	// 선택한 요소들을 변수에 저장 (querySelectorAll or getElementsByClassName)
	//const content_list = document.querySelectorAll(".main-special-list-contents li");
	//const media_list = document.querySelectorAll(".main-special-content-media li");
	const content_list = Array.from(document.getElementsByClassName("main-special-list-contents")[0].children);
	const media_list = Array.from(document.getElementsByClassName("main-special-content-media")[0].children);
	
	// 페이지 로드 시 index 0번을 기본값으로 설정
	media_list.forEach((media_li, media_index) => {
		if(media_index !== 0){
			media_li.style.display = "none";
		}
	})
	
	// content_list의 li 요소에 클릭 이벤트 리스너 추가
	content_list.forEach((content_li, content_index) => {
	    content_li.addEventListener("click", () => {
	        // 모든 content_li 요소의 스타일 초기화
	        content_list.forEach(content_li => {
	            content_li.style.border = "none";
	            content_li.style.borderRadius = "none";
	        });
	        
	        // 클릭한 li 요소의 인덱스를 사용하여 media_list의 li 요소를 조작
	        media_list.forEach((media_li, media_index) => {
	            if (media_index === content_index) {
	                // 해당 인덱스의 media_list li 요소를 표시
	                media_li.style.display = "block";
	                // 클릭한 content_li의 스타일 변경
	                content_li.style.border = "2px solid #d8dee8";
	                content_li.style.borderRadius = "8px";
	            } else {
	                // 나머지 media_list li 요소는 숨김
	                media_li.style.display = "none";
	            }
	        });
	    });
	});
	// ------ end ------
	
});
