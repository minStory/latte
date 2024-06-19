// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
	
	// ------ 로그인 상태에 따라 헤더 문구를 변경해주는 메서드 ------
	const dto_field = document.getElementsByClassName("dto-field")[0];
	const name_field = document.getElementsByClassName("name-field")[0];
	const myinfo_field = document.getElementsByClassName("header-modal-popup-content-myinfo")[0];
	const dto = dto_field.getAttribute("data-value");
	const session_field = document.getElementsByClassName("session-field")[0];
	
	if(dto === ""){
		dto_field.innerHTML = "<a href='login'>로그인</a>";
		name_field.innerHTML = "<a href='signup' class='btn-signup'>회원가입</a>";
		myinfo_field.innerHTML = "<div class='content-myinfo-bottom'>"
								+ "<p>로그인하시면<br>다양한 혜택을 확인할 수 있습니다.</p>"
								+ "<ul><li><a href='login'>로그인</a></li>"
								+ "<li><a href='signup'>회원가입</a></li></ul></div>";
		session_field.style.display = "none";
	}else if(dto === "M"){
		const member_check = document.getElementsByClassName("member-check")[0];
		const dto_name = member_check.getAttribute("data-value1");
		const dto_mileage = member_check.getAttribute("data-value2");
		const dto_grade = member_check.getAttribute("data-value3");
		dto_field.innerHTML = "<a href='logout' onclick='return confirmLogout()'>로그아웃</a>";
		name_field.innerHTML = `<a href='mypage' class='btn-signup'>${dto_name }님</a>`;
		myinfo_field.innerHTML = `<div class='content-myinfo-top'><span>${dto_grade }</span>`
								+ `<p><strong>${dto_name }님</strong> 반갑습니다!</p>`
								+ `<p>Latte Point ${dto_mileage }</p>`
								+ "<span class='myinfo-top-btn'><a href='mypage'>마이페이지</a></span></div>"
								+ "<div class='content-myinfo-bottom'>"
								+ "<div class='content-myinfo-bottom-title'><p>MY 영화관</p>"
								+ "<span class='setup'><a href='#'></a></span>"
								+ "</div><ul><li><a href='#'>합정</a></li><li><a href='#'>라페스타</a></li>"
								+ "<li><a href='#'>천안불당</a></li></ul></div>";
	}else if(dto === "A"){
		dto_field.innerHTML = "<a href='logout' onclick='return confirmLogout()'>로그아웃</a>";
		name_field.innerHTML = "<a href='admin_main' class='btn-signup'>관리자님</a>";
		myinfo_field.innerHTML = "<div class='content-myinfo-top'><span>Admin</span>"
								+ "<p><strong>관리자님</strong> 반갑습니다!</p>"
								+ "<span class='myinfo-top-btn'><a href='admin_main'>관리자페이지</a></span>"
								+ "</div><div class='content-myinfo-bottom'><div class='content-myinfo-bottom-title'>"
								+ "<p>사이트 관리</p><span class='setup'><a href='admin_main'></a></span></div>"
								+ "<ul><li><a href='admin_main?memberinfo'>회원 관리</a></li>"
								+ "<li><a href='admin_main'>공지사항 관리</a></li>"
								+ "<li><a href='admin_main?movie'>영화 목록 관리</a></li></ul></div>";
	}
	// ------ end ------
	
	
	
	// ------ 메인페이지를 제외한 페이지의 헤더 디자인 변경 ------
	if(!window.location.href.includes("main") || window.location.href.includes("admin_main")){
		const header = document.getElementsByClassName("header")[0];
		const header_image = document.getElementsByClassName("header-image")[0];
		const header_background = document.getElementsByClassName("header-background")[0];
		const header_bottom_background = document.getElementsByClassName("header-bottom-background")[0];
		const header_top = document.getElementsByClassName("header-top")[0];
		const header_top_logo = document.getElementsByClassName("header-top-logo")[0];
		const header_lnb = document.getElementsByClassName("header-lnb")[0];
		const btn_facebook = document.getElementsByClassName("btn-facebook")[0];
		const btn_youtube = document.getElementsByClassName("btn-youtube")[0];
		const btn_instagram = document.getElementsByClassName("btn-instagram")[0];
		const btn_session = document.getElementsByClassName("btn-session")[0];
		const btn_signup = document.getElementsByClassName("btn-signup")[0];
		const btn_reserve = document.getElementsByClassName("btn-reserve")[0];
		
		header.classList.add("header-invert");
		header_image.classList.add("header-image-invert");
		header_background.classList.add("header-background-invert");
		header_bottom_background.classList.add("header-bottom-background-invert");
		header_top.classList.add("header-top-invert");
		btn_facebook.classList.add("btn-facebook-invert");
		btn_youtube.classList.add("btn-youtube-invert");
		btn_instagram.classList.add("btn-instagram-invert");
		btn_session.classList.add("btn-session-invert");
		btn_signup.classList.add("btn-signup-invert");
		btn_reserve.classList.add("btn-reserve-invert");
		header_top_logo.classList.add("header-top-logo-invert");
	}
	// ------ end ------
	
	
	
	// ------ 헤더의 lnb를 나타내는 메서드 ------
	const gnb = Array.from(document.getElementsByClassName("header-gnb-list")[0].children);
	const lnb = Array.from(document.getElementsByClassName("header-lnb")[0].children)
	const lnb_background = document.getElementsByClassName("header-lnb")[0];
	const gnb_bar = Array.from(document.getElementsByClassName("header-gnb-bar"));
	
	gnb.forEach((gnb_li, gnb_idx) => {
		gnb_li.addEventListener("mouseover", () => {
			lnb_background.style.display = "block";
			
			gnb_bar.forEach((gnb_bar_li, gnb_bar_idx) => {
				if(gnb_bar_idx === gnb_idx){
					gnb_bar_li.classList.add("header-gnb-bar-mouseover");
					gnb_bar_li.style.transform = 'scaleX(1)';
				}else{
					gnb_bar_li.classList.remove("header-gnb-bar-mouseover");
				}
			})
			
			lnb.forEach((lnb_li, lnb_idx) => {
				if(gnb_idx === lnb_idx){
					lnb_li.style.display = "flex";
				}else{
					lnb_li.style.display = "none";
				}
				
				lnb_li.addEventListener("mouseover", () => {
			        gnb_bar.forEach((gnb_bar_li, gnb_bar_idx) => {
			            if(gnb_bar_idx === lnb_idx){
			                gnb_bar_li.classList.add("header-gnb-bar-mouseover");
			            }else{
			                gnb_bar_li.classList.remove("header-gnb-bar-mouseover");
			            }
			        });
   				});
			})
		})
		
		gnb_li.addEventListener("mouseout", () => {
			gnb_bar.forEach(gnb_bar_li => {
				gnb_bar_li.classList.remove("header-gnb-bar-mouseover");
			})
		})
		
	    lnb_background.addEventListener("mouseover", () => {
	        lnb_background.style.display = "block";
	    });
	
	    lnb.forEach((lnb_li) => {
	        lnb_li.addEventListener("mouseout", () => {
	            lnb_background.style.display = "none";
	            
           		gnb_bar.forEach(gnb_bar_li => {
					gnb_bar_li.classList.remove("header-gnb-bar-mouseover");
				})
	        });
	    });
	
	    gnb_li.addEventListener("mouseout", () => {
	        lnb_background.style.display = "none";
	    });
	});
	// ------ end ------
	
	
	
	// ------ 헤더의 lnb의 lnb를 나타내는 메서드 ------
	const lnb_cinema = Array.from(document.getElementsByClassName("header-lnb-cinema")[0].children);
	const lnb_lnb = Array.from(document.getElementsByClassName("header-lnb-lnb")[0].children);
	const lnb_lnb_background = document.getElementsByClassName("header-lnb-lnb")[0];
	
	lnb_cinema.forEach((lnb_cinema_li, lnb_cinema_idx) => {
		lnb_cinema_li.addEventListener("mouseover", () => {
			lnb_lnb_background.style.display = "block";
			
			lnb_lnb.forEach((lnb_lnb_li, lnb_lnb_idx) => {
				if(lnb_cinema_idx === lnb_lnb_idx){
					lnb_lnb_li.style.display = "flex";
					if(lnb_cinema_idx === 1 || lnb_cinema_idx === 6){
						lnb_lnb_background.style.height = "62px";
						lnb_lnb_li.style.marginTop = "12px";
					}else if(lnb_cinema_idx === 2){
						lnb_lnb_background.style.height = "76px";
						lnb_lnb_li.style.marginTop = "12px";
					}else{
						lnb_lnb_background.style.height = "38px";
						lnb_lnb_li.style.marginTop = "0";
					}
				}else{
					lnb_lnb_li.style.display = "none";
				}
			})
		});
		
		lnb_lnb_background.addEventListener("mouseover", () => {
			lnb_background.style.display = "block";
			lnb_lnb_background.style.display = "block";
			
			gnb_bar.forEach(gnb_bar_li => {
				gnb_bar[2].classList.add("header-gnb-bar-mouseover");
			})
		})
		
		lnb_cinema_li.addEventListener("mouseout", () => {
			lnb_background.style.display = "none";
			lnb_lnb_background.style.display = "none";
		});
		
		lnb_lnb_background.addEventListener("mouseout", () => {
			lnb_background.style.display = "none";
			lnb_lnb_background.style.display = "none";
			
			gnb_bar.forEach(gnb_bar_li => {
				gnb_bar_li.classList.remove("header-gnb-bar-mouseover");
			})
		})
	});
	// ------ end ------
	
	
	
	
	// ------ 스크롤 시 헤더 디자인 변경 메서드 ------
    document.addEventListener("scroll", () => {
		const scroll = document.documentElement.scrollTop;
		const header_container = document.getElementsByClassName("header-container")[0];
		const header_bottom = document.getElementsByClassName("header-bottom")[0];
		const header_gnb_list = document.getElementsByClassName("header-gnb-list")[0];
		
		// 스크롤을 내렸을 때 헤더 디자인 변경
		if(scroll > 60){
			document.getElementsByClassName("header-top")[0].style.display = "none";
			header_container.classList.add("header-container-invert");
			header_bottom.classList.add("header-bottom-invert");
			// lnb도 fixed로 해서 gnb 밑으로 이동
			lnb_background.classList.add("header-lnb-fixed-invert");
			header_gnb_list.classList.add("header-gnb-list-invert");
			lnb_lnb_background.classList.add("header-lnb-lnb-fixed-invert");
		// 스크롤을 올렸을 때 헤더 디자인 복구
		}else{
			document.getElementsByClassName("header-top")[0].style.display = "flex";
			header_container.classList.remove("header-container-invert");
			header_bottom.classList.remove("header-bottom-invert");
			lnb_background.classList.remove("header-lnb-fixed-invert");
			header_gnb_list.classList.remove("header-gnb-list-invert");
			lnb_lnb_background.classList.remove("header-lnb-lnb-fixed-invert");
		}
	})
	// ------ end ------
});
// ------ DOMContentLoaded end ------
