document.addEventListener("DOMContentLoaded", () => {
	
	// 헤더에서 가져오는 세션 정보
	const dto_field = document.getElementsByClassName("dto-field")[0];
	const dto = dto_field.getAttribute("data-value");
	if(dto === "M"){
		checkCancel()
		setInterval(checkCancel, 5000)
	}
	
	const btn = Array.from(document.getElementsByClassName("ticket-btn"));
	const content = Array.from(document.getElementsByClassName("mypage-ticket"));
	
	content.forEach((li) => {
		li.style.display = "none";
	})
	
	btn.forEach((btn_li, btn_idx) => {
		btn_li.addEventListener("click", () => {
			content.forEach((content_li, content_idx) => {
				if(btn_idx === content_idx){
					if(content_li.style.display === "none"){
						content_li.style.display = "block";
					}else{
						content_li.style.display = "none";
					}
				}
			})
		})
	});
	
	const a = document.getElementsByClassName("a")[0];
	const b = document.getElementsByClassName("b")[0];
	const c = document.getElementsByClassName("c")[0];
	const d = document.getElementsByClassName("d")[0];
	
	const mypage_top_menu_tab = Array.from(document.getElementsByClassName("mypage_top_menu_tab")[0].children);

	if(window.location.href.includes("coupon")){
		a.style.display = "none";
		c.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[1].classList.add("bar");
	}else if(window.location.href.includes("inquiry")){
		a.style.display = "none";
		b.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[2].classList.add("bar");
	}else if(window.location.href.includes("info")){
		b.style.display = "none";
		c.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[3].classList.add("bar");
	}else{
		b.style.display = "none";
		c.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[0].classList.add("bar");
	}
	
	
	mypage_top_menu_tab.forEach((li, idx) => {
		li.addEventListener("click", () => {
			mypage_top_menu_tab.forEach((li) => {
				li.classList.remove("bar");
			});
			
			if(idx === 0){
				a.style.display = "block";
				b.style.display = "none";
				c.style.display = "none";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, window.location.pathname);
			}else if(idx === 1){
				a.style.display = "none";
				b.style.display = "block";
				c.style.display = "none";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, '?coupon');
			}else if(idx === 2){
				a.style.display = "none";
				b.style.display = "none";
				c.style.display = "block";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, '?inquiry');
			}else if(idx === 3 ){
				a.style.display = "none";
				b.style.display = "none";
				c.style.display = "none";
				d.style.display = "block";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, '?info');
			}
		});
	});
});
// ------ DOMContentLoaded end ------
		
		
		
// ------ 영화 시작 시간이 20분 이상 남아있을 때만 취소 버튼 띄우기 ------
function checkCancel(){
	fetch("check_cancel") // 세션을 갱신할 서버로 요청
        .then(response => response.json()) // 응답을 json 객체로 변환
        .then(data => {
			const cancel_1 = Array.from(document.getElementsByClassName("cancel-1"));
			const cancel_2 = Array.from(document.getElementsByClassName("cancel-2"));
			data.forEach((data_li, data_idx) => {
				if(data_li.boolean === true){
					cancel_1[data_idx].classList.add("true");
					cancel_2[data_idx].classList.add("true");
				}
			})
        })
        .catch(error => console.error("Error:", error));
}
// ------ end ------



// ------ 예매취소 버튼을 클릭하면 확인창을 표시할 메서드 ------
function confirmTicketCancel() {
    if (confirm("예매를 취소하시겠습니까?")) {
		return true;
    } else {
        return false;
    }
}
// ------ end ------