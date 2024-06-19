<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LatteCinema</title>
</head>
<body>
	<c:import url="header" />
		<main class="event">
			<div class="event-container">
				<div class="name-eventbuttons">
					<h3>전체 이벤트</h3>
					<div class="eventbuttons">
						<button>당첨자 발표</button>
						<button>응모내역</button>
						<button>지난 이벤트</button>
					</div>
				</div>	
				<section class="movie-event">
					<h4>영화</h4>
					<div class="movie-event-list">
						<div class="mvev">
							<div class="eventphotoes mep1"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes mep2"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes mep3"></div>
							<p>date</p>
						</div>
					</div>
				</section>
				<section class="movie-event">
					<h4>시사회/무대인사</h4>
					<div class="movie-event-list">
						<div class="mvev">
							<div class="eventphotoes aep1"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes aep2"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes aep3"></div>
							<p>date</p>
						</div>
					</div>
				</section>
				<section class="movie-event">
					<h4>HOT</h4>
					<div class="movie-event-list">
						<div class="mvev">
							<div class="eventphotoes meh1"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes meh2"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes meh3"></div>
							<p>date</p>
						</div>
					</div>
				</section>
				<section class="movie-event">
					<h4>제휴할인</h4>
					<div class="movie-event-list">
						<div class="mvev">
							<div class="eventphotoes med1"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes med2"></div>
							<p>date</p>
						</div>
						<div class="mvev">
							<div class="eventphotoes med3"></div>
							<p>date</p>
						</div>
					</div>
				</section>
				<section class="localcinema">
					<h4>우리동네영화관</h4>
					<div class="localcinemaboard">
						<div class="lcb">
							<div class="loc-write" onclick="#">
								<span>수유</span>
								<p>[수유] 조조시간 확대 시행(~12시까지)</p>
							</div> 
							<div class="loc-date">
								<p>date</p>
							</div>
						</div>
						<div class="lcb">
							<div class="loc-write" onclick="#">
								<p>[대구] 라떼시네마X이월드 프로모션</p>
							</div> 
							<div class="loc-date">
								<p>date</p>
							</div>
						</div>
						<div class="lcb">
							<div class="loc-write" onclick="#">
								<span>파주운정</span>
								<p>[파주운정]어린이요금 신설 및 청소년 요금 인하</p>
							</div> 
							<div class="loc-date">
								<p>date</p>
							</div>
						</div>
						<div class="lcb">
							<div class="loc-write" onclick="#">
								<span>별내</span>
								<p>11시까지 조조시간 확대!!</p>
							</div> 
							<div class="loc-date">
								<p>date</p>
							</div>
						</div>
					</div>
				</section>
				
			</div>
		</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>