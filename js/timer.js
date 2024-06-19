// ------ 타이머 실행 영역 ------
const timers = [];
const timer1 = addTimer(showNextImage, img_second); // 메인페이지 영상 자동 넘김 (5초)
const timer2 = addTimer(fetchCurrentTime, 1000); // 세션 시간 갱신 (1초)
const timer3 = addTimer(checkSession, 1000); // 세션 만료 여부 확인 (1초)
// ------ end ------



// ------ 타이머 조작 메서드 정의 영역 ------
// 타이머 추가
function addTimer(callback, interval){
	let timerId = setInterval(callback, interval);
	timers.push(timerId);
	return timerId;
}

// 특정 타이머 중지
function stopTimer(timerID) {
    clearInterval(timerID);
    timers = timers.filter(id => id !== timerID);
}

// 모든 타이머 중지
function stopAllTimers() {
    timers.forEach(timerID => clearInterval(timerID));
    timers = [];
}
// ------ end ------