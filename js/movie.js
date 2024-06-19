let release_year;
let release_month
let release_day;

// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {

	// ------ 영화 추가 페이지 날짜 select box ------
	release_year = document.getElementsByClassName("release-year")[0];
	release_month = document.getElementsByClassName("release-month")[0];
	release_day = document.getElementsByClassName("release-day")[0];

	const now = new Date();
	const year = now.getFullYear();

	for (let i = year + 1; i >= 1970; i--) {
		addOption(release_year, i, i);
	}

	for (let i = 1; i <= 12; i++) {
		addOption(release_month, i, i);
	}

	for (let i = 1; i <= 31; i++) {
		addOption(release_day, i, i);
	}
	// ------ end ------
});
// ------ DOMContentLoaded end ------



// 년을 선택하면 월, 일을 초기화하는 메서드
function updateReleaseMonth() {
	// 년을 선택하면 월, 일 비워주기
	clearOption(release_month);
	clearOption(release_day);

	// 1월부터 12월까지 추가
	for (let i = 1; i <= 12; i++) {
		addOption(release_month, i, i);
	}

	// 1일부터 31일까지 추가
	for (let i = 1; i <= 31; i++) {
		addOption(release_day, i, i);
	}
}
// 선택한 월에 따라 일수가 변경되는 메서드
function updateReleaseDay() {
	// 월을 선택할 때 마다 일 수 비워주기
	clearOption(release_day);

	// 1일부터 31일까지 추가
	for (let i = 1; i <= 31; i++) {
		addOption(release_day, i, i);
	}

	// 월에 맞게 일 수 제거
	if (release_month.value === "2") {
		// 윤년이 아닌 경우 29일 제거하지 않기
		if (!((release_year.value % 4 === 0 && release_year.value % 100 !== 0) || (release_year.value % 400 === 0))) {
			removeOption(release_day, "29");
		}
		removeOption(release_day, "30");
		removeOption(release_day, "31");
	} else if (release_month.value === "4"
		|| release_month.value === "6"
		|| release_month.value === "9"
		|| release_month.value === "11") {
		removeOption(release_day, "31");
	}
}

// select box에 option을 추가하는 메서드
function addOption(selectElement, text, value) {
	let option = document.createElement("option");
	option.text = text;
	option.value = value;
	selectElement.add(option);
}

// select box에 option을 제거하는 메서드
function removeOption(selectElement, value) {
	for (let i = 0; i < selectElement.options.length; i++) {
		if (selectElement.options[i].value === value) {
			selectElement.remove(i);
		}
	}
}

// select box의 option을 모두 제거하는 메서드
function clearOption(selectElement) {
	selectElement.innerHTML = "";
}
		// ------ end ------