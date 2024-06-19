// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	
	// ------ 메인페이지 영화이미지 효과 ------
	const li = Array.from(document.getElementsByClassName("main-movie-list-li"));
	const frame = Array.from(document.getElementsByClassName("main-movie-list-photo-frame"));
	const frame_btn = Array.from(document.getElementsByClassName("frame-btn-area"));
	
	li.forEach((li_li, li_idx) => {
		li_li.addEventListener("mouseover", () => {
			frame.forEach((frame_li, frame_idx) => {
				if(li_idx === frame_idx){
					frame_li.classList.add("background-dark");
				}	
			});
			
			frame_btn.forEach((frame_btn_li, frame_btn_idx) => {
				if(li_idx === frame_btn_idx){
					frame_btn_li.style.display = "flex";
				}
			})
		});
	});
	
	li.forEach((li_li) => {
		li_li.addEventListener("mouseout", () => {
			frame.forEach((frame_li) => {
				frame_li.classList.remove("background-dark");
			});
			
			frame_btn.forEach((frame_btn_li, frame_btn_idx) => {
				frame_btn_li.style.display = "none";
			})
		});
	});
	// ------ end ------
	
	// ------ 메인페이지 스페셜관 영상 선택 효과 ------
	// 선택한 요소들을 변수에 저장
	const content_list = Array.from(document.getElementsByClassName("main-special-list-contents")[0].children);
	const media_list = Array.from(document.getElementsByClassName("main-special-content-media")[0].children);
	
	// 페이지 로드 시 idx 0번을 기본값으로 설정
	media_list.forEach((media_li, media_idx) => {
		if(media_idx !== 0){
			media_li.style.display = "none";
		}
	});
	
	// content_list의 li 요소에 클릭 이벤트 리스너 추가
	content_list.forEach((content_li, content_idx) => {
	    content_li.addEventListener("click", () => {
	        // 모든 content_li 요소의 스타일 초기화
	        content_list.forEach(content_li => {
	            content_li.style.border = "none";
	            content_li.style.borderRadius = "none";
	        });
	        
	        // 클릭한 li 요소의 인덱스를 사용하여 media_list의 li 요소를 조작
	        media_list.forEach((media_li, media_idx) => {
	            if (media_idx === content_idx) {
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
// ------ DOMContentLoaded end ------



// ------ 메인페이지 배경이미지 변경 메서드 ------
let img_idx = 1; // 시작 이미지 번호
const img_count = 4; // 총 이미지 개수
const img_second = 5000; // 이미지를 유지할 시간(millisecond)

// 다음 이미지로 변경
function showNextImage() {
	const header_image = document.getElementsByClassName("header-image")[0];
    
    // 현재 이미지 제거
    header_image.classList.remove(`header-bg${img_idx}`);
    
    img_idx++;
    if (img_idx > img_count) {
        img_idx = 1;
    }
    // 다음 이미지 추가
    header_image.classList.add(`header-bg${img_idx}`);
    
    // 조건 만족 시 함수 종료
    if (img_idx > img_count) {
        img_idx = 1;
        return true;
    }
}

// 이전 이미지로 변경
function showPreviousImage(){
	const header_image = document.getElementsByClassName("header-image")[0];
    
    // 현재 이미지 제거
    header_image.classList.remove(`header-bg${img_idx}`);
    
    img_idx--;
    if (img_idx < 1) {
        img_idx = img_count;
    }
    // 이전 이미지 추가
    header_image.classList.add(`header-bg${img_idx}`);
    
    // 조건 만족 시 함수 종료
    if (img_idx < 1) {
        img_idx = img_count;
        return true;
    }
}
// ------ 메인페이지 배경이미지 변경 메서드 영역 end ------