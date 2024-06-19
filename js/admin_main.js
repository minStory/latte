document.addEventListener("DOMContentLoaded", () => {

	const monthly_arr = []; // 서블릿에서 가져온 매출을 담을 배열

	fetch("admin_data")
		.then(response => response.json())
		.then(data => {
			data.forEach(data_li => {
				monthly_arr.push(data_li.monthly);
			})

			// Chart.js를 사용하여 그래프 생성 매출그래프
			let context = document.getElementById('saleschart').getContext('2d');
			let saleschart = new Chart(
				context,
				{
					type: 'bar', // 차트의 형태
					data: {
						labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월'], // x 축 레이블
						datasets: [{
							label: '월별 매출', // 차트 제목
							data: monthly_arr, // 데이터 값 (각 월의 매출 금액)
							backgroundColor: 'rgba(54, 162, 235, 0.2)', // 막대 색상 (파란색)
							borderColor: 'rgba(54, 162, 235, 1)', // 막대 테두리 색상 (진한 파란색)
							borderWidth: 1
							// 테두리 굵기
						}]
					},
					options: {
						scales: {
							yAxes: [{
								ticks: {
									beginAtZero: true, // y 축 시작값을 0으로 설정
									callback: function(value) {
										return value.toLocaleString() + '원';
									} // y 축 값 포맷팅 (금액 단위)
								}
							}]
						},
						tooltips: {
							callbacks: {
								label: function(tooltipItem, data) {
									let value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
									return value.toLocaleString() + '원'; // 툴팁 값 포맷팅 (금액 단위)
								}
							}
						}
					}
				});

		})
		.catch(error => console.error("Error:", error));

	// Chart.js를 사용하여 그래프 생성
	let mc = document.getElementById('memberchart').getContext('2d');
	let memberchart = new Chart(mc, {
		type: 'doughnut', // 차트의 형태
		data: {
			labels: ['VIP', 'VVIP', 'GOLD', 'PLATINUM'], // 레이블
			datasets: [{
				label: '멤버 등급 분포도', // 차트 제목
				data: [10, 20, 30, 40], // 데이터 값
				backgroundColor: ['rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)'], // 각 섹션의 배경 색상
				borderColor: ['rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)'], // 각 섹션의 테두리 색상
				borderWidth: 1
				// 테두리 굵기
			}]
		},
		options: {
			responsive: true, // 차트 반응형 설정
			plugins: {
				tooltip: {
					callbacks: {
						label: function(tooltipItem) {
							let value = tooltipItem.raw;
							return value.toLocaleString() + '명'; // 툴팁 값 포맷팅 (명 단위)
						}
					}
				}
			}
		}
	});



	const a = document.getElementsByClassName("a")[0];
	const b = document.getElementsByClassName("b")[0];
	const c = document.getElementsByClassName("c")[0];
	const d = document.getElementsByClassName("d")[0];

	const mypage_top_menu_tab = Array.from(document.getElementsByClassName("adminpage_top_menu_tab")[0].children);

	if (window.location.href.includes("movie")) {
		a.style.display = "none";
		c.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[1].classList.add("bar");
		window.scrollTo(0, 700);
	} else if (window.location.href.includes("inquiry")) {
		a.style.display = "none";
		b.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[2].classList.add("bar");
		window.scrollTo(0, 700);
	} else if (window.location.href.includes("memberinfo")) {
		a.style.display = "none";
		b.style.display = "none";
		c.style.display = "none";
		mypage_top_menu_tab[3].classList.add("bar");
		window.scrollTo(0, 700);
	} else {
		b.style.display = "none";
		c.style.display = "none";
		d.style.display = "none";
		mypage_top_menu_tab[0].classList.add("bar");
		window.scrollTo(0, 700);
	}


	mypage_top_menu_tab.forEach((li, idx) => {
		li.addEventListener("click", () => {
			mypage_top_menu_tab.forEach((li) => {
				li.classList.remove("bar");
			});

			if (idx === 0) {
				a.style.display = "block";
				b.style.display = "none";
				c.style.display = "none";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, window.location.pathname);
			} else if (idx === 1) {
				a.style.display = "none";
				b.style.display = "block";
				c.style.display = "none";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, '?movie');
			} else if (idx === 2) {
				a.style.display = "none";
				b.style.display = "none";
				c.style.display = "block";
				d.style.display = "none";
				li.classList.add("bar");
				window.history.replaceState({}, document.title, '?inquiry');
			} else if (idx === 3) {
				a.style.display = "none";
				b.style.display = "none";
				c.style.display = "none";
				d.style.display = "block";
				li.classList.add("bar");
				const scroll = document.documentElement.scrollTop;
				save_scroll = scroll; // 팝업을 열 때 현재 스크롤 저장
				window.history.replaceState({}, document.title, '?memberinfo');
			}
		});
	});
});