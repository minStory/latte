document.addEventListener("DOMContentLoaded", () => {

	let match;
	let match_no;

	if (window.location.href.includes("movie_no")) {
		match = window.location.href.match(/movie_no=(\d+)/);
		match_no = match[1];
	}

	// 헤더에서 가져오는 세션 정보
	const dto_field = document.getElementsByClassName("dto-field")[0];
	const dto = dto_field.getAttribute("data-value");

	let arr_limit_age = [];
	let arr_title = [];

	let l_idx = 0; // 선택한 지역의 인덱스를 담을 변수
	let l_d_idx; // 선택한 세부지역의 인덱스를 담을 변수
	let m_idx; // 선택한 영화의 인덱스를 담을 변수

	let l_list = []; // 동적으로 생성되는 지역명을 담을 리스트
	let l_d_list = []; // 동적으로 생성되는 세부지역명을 담을 리스트
	let m_list = []; // 동적으로 생성되는 영화번호를 담을 리스트

	let loc; // 선택한 지역을 담을 변수
	let loc_detail; // 선택한 세부지역을 담을 변수
	let movie_no; // 선택한 영화 번호를 담을 변수
	let start_year;
	let start_month;
	let start_day;
	let start_time; // 선택한 영화 시작시간을 담을 변수

	const total_seat = 160; // 총 좌석 수
	const max_seat = 8; // 최대 선택 좌석 수
	const seat_row = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]; // 좌석 열 구분
	let choose_seat = []; // 선택한 좌석을 담을 배열
	let count = 0; // 선택한 인원수를 담을 변수
	let choose_count = 0; // 선택한 좌석수 담을 변
	const ticket_price = 14000;
	let total_price = 0;

	let payment_method;

	const partition_content = Array.from(document.getElementsByClassName("partition-content")[0].children);
	const reserve_content = Array.from(document.getElementsByClassName("reserve-content"));

	// 첫번째 파티션을 제외하고 모두 숨김
	reserve_content.forEach((li, idx) => {
		if (idx !== 0) {
			li.style.display = "none";
		}
	});

	// 선택한 파티션 표시
	partition_content.forEach((p_li, p_idx) => {
		if (p_idx === 0) {
			p_li.style.backgroundColor = "#FF243E";
			p_li.style.color = "#ffffff";
		}

		p_li.addEventListener("click", () => {
			partition_content.forEach((p_p_li, p_p_idx) => {
				p_p_li.style.fontWeight = "400";
				if (p_p_idx < p_idx) {
					p_p_li.style.backgroundColor = "#333333";
					p_p_li.style.color = "#ffffff";
				} else {
					p_p_li.style.backgroundColor = "#ffffff";
					p_p_li.style.color = "#000000";
				}
			})

			p_li.style.backgroundColor = "#FF243E";
			p_li.style.color = "#ffffff";
			p_li.style.fontWeight = "800";

			reserve_content.forEach((r_li, r_idx) => {
				if (p_idx === r_idx) {
					r_li.style.display = "flex";
				} else {
					r_li.style.display = "none";
				}
			});
		});
	});

	// Movie Data 받아오기
	fetchStringData();

	// String Data 받아오기
	setTimeout(fetchMovieData, 500); // 0.5초(500ms) 후에 실행

	// ------ String Data 받아오는 메서드 ------
	function fetchStringData() {
		fetch("reserve_data")
			.then(response => response.json())
			.then(data => {

				// 페이지 로드 시 지역 표시
				const location_bottom_left = document.getElementsByClassName("location-bottom-left")[0];
				data.local_list.forEach((li, idx) => {
					l_list.push(li);
					location_bottom_left.innerHTML += "<li>" + li + "<span>(" + data.size_list[idx] + ")</span>" + "</li>";
				})
				// 페이지 로드 시 첫번째 항목에 체크 표시
				location_bottom_left.children[0].classList.add("check");


				// 서블릿에서 받아온 list를 하나의 list에 담기
				const total_list = [data.seoul_list, data.gyeonggiIncheon_list, data.chungCheongDaeJeon_list, data.jeollaGwangju_list,
				data.gyeongbukDaegu_list, data.gyeongnamBusanUlsan_list, data.gangwon_list, data.jeju_list];
				// 지역명 리스트 생성								
				l_d_list = total_list;

				// 페이지 로드 시 세부 지역 표시
				const location_bottom_right = document.getElementsByClassName("location-bottom-right")[0];
				total_list[0].forEach(li => {
					location_bottom_right.innerHTML += "<li>" + li + "</li>"
				})

				// 지역 선택 시 세부 지역 변경
				const location_bottom_left_list = Array.from(document.getElementsByClassName("location-bottom-left")[0].children);
				const movie_bottom_list = document.getElementsByClassName("movie-bottom-list")[0];

				location_bottom_left_list.forEach((li, idx) => {
					li.addEventListener("click", () => {
						// 선택한 지역의 인덱스 담기
						l_idx = idx;
						l_d_idx = null;
						m_idx = null;
						// 모든 지역의 배경색 및 체크아이콘 초기화
						location_bottom_left_list.forEach(li => {
							li.classList.remove("check");
						})

						total_list.forEach((total_li, total_idx) => {
							if (idx === total_idx) {
								// 선택한 지역의 배경색 및 체크아이콘 적용
								li.classList.add("check");
								// 영화 리스트 초기화
								movie_bottom_list.innerHTML = "";
								// 세부지역 리스트 초기화
								location_bottom_right.innerHTML = "";
								// 선택한 지역에 해당하는 세부지역 표시
								total_li.forEach(li => {
									location_bottom_right.innerHTML += "<li>" + li + "</li>";
									// 동적으로 생성된 세부 지역명 적용을 위해 실행
									fetchMovieData();
								})
							}
						})
					})
				})
			})
			.catch(error => console.error("Error:", error));
	}
	// ------ end ------



	// ------ Movie Data 받아오는 메서드 ------
	function fetchMovieData() {
		fetch("reserve_data_movie")
			.then(response => response.json())
			.then(data => {
				const location_bottom_right_list = Array.from(document.getElementsByClassName("location-bottom-right")[0].children);
				const movie_bottom_list = document.getElementsByClassName("movie-bottom-list")[0];
				const datetime_bottom = document.getElementsByClassName("datetime-bottom")[0];

				movie_bottom_list.innerHTML = "영화관을 선택해주세요.";
				movie_bottom_list.classList.add("reset");
				datetime_bottom.innerHTML = "영화를 선택해주세요.";
				datetime_bottom.classList.add("reset");

				location_bottom_right_list.forEach((li, idx) => {
					li.addEventListener("click", () => {
						// 선택한 세부지역의 인덱스 담기
						l_d_idx = idx;
						m_idx = null;
						// 모든 세부지역의 배경색 및 체크아이콘 초기화
						location_bottom_right_list.forEach(li => {
							li.classList.remove("check");
						})
						// 선택한 지역의 배경색 및 체크아이콘 적용
						li.classList.add("check");
						// 영화 리스트 초기화
						movie_bottom_list.innerHTML = "";
						movie_bottom_list.classList.remove("reset");
						datetime_bottom.innerHTML = "영화를 선택해주세요.";
						datetime_bottom.classList.add("reset");
						// 선택한 세부지역에 헤딩하는 영화 리스트 표시
						data.forEach(data_li => {
							// 동적으로 생성된 영화 리스트 생성
							m_list.push(data_li.no);
							// 서버에서 받아온 제한연령 표시를 위한 변수
							let limit_age = "background:url('images/grade_" + data_li.limit_age + ".png') no-repeat center/cover";
							movie_bottom_list.innerHTML += `<li><span class="limit-age" style="${limit_age};"></span>` + data_li.title + "</li>";

							arr_limit_age.push(data_li.limit_age);
							arr_title.push(data_li.title);

							const movie_list = Array.from(document.getElementsByClassName("movie-bottom-list")[0].children);

							// 선택한 영화 리스트에 배경색 및 체크아이콘 적용
							movie_list.forEach((li, idx) => {
								li.addEventListener("click", () => {
									let limit_age = "background:url('images/grade_" + arr_limit_age[idx] + ".png') no-repeat center/cover";
									let htmlContent = `<p><span class="limit-age" style="${limit_age};"></span><strong>${arr_title[idx]}</strong></p>
                            							<div class='datetime-bottom-content'>
                                						<p>4D</p>
                               							<ul>`;
									for (let i = 0; i <= 16; i += 2) {
										htmlContent += `<li class='movie-time'>
                                        				<p class="time">${7 + i < 10 ? "0" + (7 + i) : 7 + i}:30</p>
														<div class='bottom-text-area'>
                                            			<span class="people">${i * 10}/160</span>
                                            			<span class="hall">${(i / 2 + 1).toFixed(0)}관</span>
	                                        			</div></li>`;
									}

									htmlContent += "</ul></div>";
									datetime_bottom.innerHTML = htmlContent;
									datetime_bottom.classList.remove("reset");
									// 선택한 영화의 인덱스 담기
									m_idx = idx;
									// 배경색 및 체크아이콘 초기화
									movie_list.forEach(li => {
										li.classList.remove("check");
									})
									li.classList.add("check");

									const movie_time = Array.from(document.getElementsByClassName("movie-time"))

									movie_time.forEach((li, idx) => {
										li.addEventListener("click", () => {
											loc = l_list[l_idx];
											loc_detail = l_d_list[l_idx][l_d_idx];
											movie_no = m_list[m_idx];

											start_year = document.getElementsByClassName("start-year")[0].value;
											start_month = document.getElementsByClassName("start-month")[0].value;
											start_day = document.getElementsByClassName("start-day")[0].value;

											const time = Array.from(document.getElementsByClassName("time"));
											start_time = time[idx].textContent;
											if (dto === "A") {
												alert("관리자로 로그인했습니다.");
												location.href = "main";
											} else if (dto === "") {
												alert("로그인이 필요합니다.");
												location.href = "login";
											} else {
												partition_content[1].click();
											}
										})
									})
								})
							});
						});

						// 영화 목록에서 특정 영화 예매하기를 누를 경우
						// 예매페이지에서 영화 이름 자동 선택
						data.forEach(data_li => {
							const movie_list = Array.from(document.getElementsByClassName("movie-bottom-list")[0].children);
							if (data_li.no == match_no) {
								movie_list[data_li.now_movie_count - 1].click();
							}
						});
					});
				});
			})
			.catch(error => console.error("Error:", error));
	}
	// ------ end ------



	// 페이지 로드 시 선택 가능 좌석 표시
	const choose_seat_content = document.getElementsByClassName("choose-seat-content")[0];
	for (let i = 1, j = 0; i <= total_seat; i++) {
		if (i % 16 === 1) {
			choose_seat_content.innerHTML += `<p class="row">${seat_row[j]}</p>`
		}

		choose_seat_content.innerHTML += `<span class="${seat_row[j]}">${i % 16 !== 0 ? i % 16 : 16}</span>`

		if (i % 16 === 0) {
			j++;
		}
	}



	const total_price_area = document.getElementsByClassName("total-price")[0];
	total_price_area.innerHTML = " " + total_price;

	const seats = Array.from(document.getElementsByClassName("choose-seat-content")[0].children);
	const people_count = document.getElementsByClassName("people-count")[0];
	const plus_btn = document.getElementsByClassName("plus-btn")[0];
	const minus_btn = document.getElementsByClassName("minus-btn")[0];

	people_count.innerHTML = count;


	fetch("reserve_data_seat")
		.then(response => response.json())
		.then(data => {
			data.forEach(data_li => {
				seats.forEach(li => {
					let temp = li.className.substring(0, 1) + li.textContent;
					if(temp === data_li.seat){
						li.classList.add("reserved");
					}
				})
			})
		})
		.catch(error => console.error("Error:", error));




	minus_btn.addEventListener("click", () => {

		if (count > 0) {
			count--;
		}

		if (count < choose_count) {
			choose_count = 0;
			choose_seat = [];
			seats.forEach(li => {
				li.classList.remove("choose");
				li.classList.remove("complete");
			})
		}

		if (count === choose_count) {
			seats.forEach(li => {
				if (!li.classList.contains("choose")) {
					li.classList.add("complete");
				}
			})
		}

		if (count === 0) {
			seats.forEach(li => {
				li.classList.remove("choose");
				li.classList.remove("complete");
			})
		}
		people_count.innerHTML = count;
		total_price = (ticket_price * count).toLocaleString()
		total_price_area.innerHTML = " " + total_price;
	})

	plus_btn.addEventListener("click", () => {

		if (count < max_seat) {
			count++;
			people_count.innerHTML = count;
			total_price = (ticket_price * count).toLocaleString();
			total_price_area.innerHTML = " " + total_price;
		} else {
			alert(`최대 인원수는 ${max_seat}명입니다.`);
		}

		if (choose_count !== count) {
			seats.forEach(li => {
				li.classList.remove("complete");
			})
		}
	})



	seats.forEach(li => {
		li.addEventListener("click", () => {
			if (!li.classList.contains("row") && !li.classList.contains("reserved")) {
				if (choose_count !== count) {
					if (li.classList.contains("choose")) {
						choose_count--;
						li.classList.remove("choose");
						choose_seat = choose_seat.filter(item => item !== li.className.substring(0, 1) + li.textContent)
					} else {
						choose_count++;
						li.classList.add("choose");
						choose_seat.push(li.className.substring(0, 1) + li.textContent);
					}

					if (choose_count === count) {
						seats.forEach(li => {
							if (!li.classList.contains("choose")) {
								li.classList.add("complete");
							}
						})
					}
				} else {
					if (li.classList.contains("choose")) {
						choose_count--;
						li.classList.remove("choose");
						choose_seat = choose_seat.filter(item => item !== li.className.substring(0, 1) + li.textContent)
						seats.forEach(li => {
							if (!li.classList.contains("choose")) {
								li.classList.remove("complete");
							}
						})
					}
				}
			}
		})
	})



	const go_payment_btn = document.getElementsByClassName("go-payment-btn")[0];
	go_payment_btn.addEventListener("click", () => {

		const payment_ticket_price = document.getElementsByClassName("payment-ticket-price")[0];
		const payment_ticket_count = document.getElementsByClassName("payment-ticket-count")[0];
		const payment_total_price = document.getElementsByClassName("payment-total-price")[0];

		payment_ticket_price.innerHTML = ticket_price.toLocaleString() + "<span> 원</span>";
		payment_ticket_count.innerHTML = choose_count + "<span> 매</span>";
		payment_total_price.innerHTML = total_price.toLocaleString() + "<span> 원</span>";

		if (count === 0) {
			alert("선택된 좌석이 없습니다.")
		} else if (choose_count !== count) {
			alert("선택한 좌석수와 인원수가 다릅니다.")
		} else {
			partition_content[2].click();
		}
	})



	const payment_method_bottom_btn_area = Array.from(document.getElementsByClassName("payment-method-bottom-btn-area")[0].children);
	payment_method_bottom_btn_area.forEach(li => {
		li.addEventListener("click", () => {
			payment_method_bottom_btn_area.forEach(li => {
				li.classList.remove("check");
			})

			if (li.classList.contains("check")) {
				li.classList.remove("check");
			} else {
				li.classList.add("check");
				payment_method = li.textContent;
			}
		})
	})



	const payment_ok_btn = document.getElementsByClassName("payment-ok-btn")[0];
	payment_ok_btn.addEventListener("click", () => {
		if (payment_method !== undefined) {
			fetch(`reserve_processing?loc=${loc}&loc_detail=${loc_detail}&movie_no=${movie_no}&movie_year=${start_year}&movie_month=${start_month}&movie_day=${start_day}&movie_time=${start_time}&count=${choose_count}&seat=${choose_seat}&price=${total_price}&method=${payment_method}`)
				.then(response => response.json())
				.then(data => {
					alert("결제 성공!");
					partition_content[3].click();
				})
				.catch(error => console.error("Error:", error));
		} else {
			alert("결제 방식을 선택해주세요.");
		}
	})




	const complete_btn = document.getElementsByClassName("complete-btn")[0];
	complete_btn.addEventListener("click", () => {
		alert("마이페이지로 이동합니다.");
		location.href = "mypage";
	})

});
