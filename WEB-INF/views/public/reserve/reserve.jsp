<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="reserve-background">
	<c:import url="header" />

	<main>
		<div class="reserve reserve-container">
			<section class="partition">
				<ul class="partition-content">
					<li><div class="partition-text-area">
							01<br>상영시간
						</div></li>
					<li><div class="partition-text-area">
							02<br>인원/좌석
						</div></li>
					<li><div class="partition-text-area">
							03<br>결제
						</div></li>
					<li><div class="partition-text-area">
							04<br>결제완료
						</div></li>
				</ul>
			</section>

			<section class="screen_time reserve-content">
				<div class="location">
					<div class="location-top">
						<h3>영화관</h3>
					</div>

					<div class="location-middle">
						<h4>전체</h4>
					</div>

					<div class="location-bottom">
						<ul class="location-bottom-left">
						</ul>

						<ul class="location-bottom-right">
						</ul>
					</div>
				</div>

				<div class="movie">
					<div class="movie-top">
						<h3>영화 선택</h3>
					</div>

					<div class="movie-middle">
						<select class="movie-sequence">
							<option>예매순</option>
							<option>관객순</option>
						</select>
						<div class="movie-middle-btn-area">
							<button class="btn-view-txt"></button>
							<button class="btn-view-img"></button>
						</div>
					</div>

					<div class="movie-bottom">
						<ul class="movie-bottom-list">
						</ul>
					</div>
				</div>

				<div class="datetime">
					<div class="datetime-top">
						<h3>날짜/시간</h3>
					</div>

					<div class="datetime-middle">
						<select class="start-year" name="start_year">
							<c:forEach var="i" begin="2024" end="2025">
								<option>${i }</option>
							</c:forEach>
						</select> <select class="start-month" name="start_month">
							<c:forEach var="i" begin="1" end="12">
								<option>${i }</option>
							</c:forEach>
						</select> <select class="start-day" name="start_day">
							<c:forEach var="i" begin="1" end="31">
								<option>${i }</option>
							</c:forEach>
						</select>
					</div>

					<div class="datetime-bottom"></div>
				</div>
			</section>

			<section class="seat reserve-content">
				<div class="choose-people">
					<div class="choose-people-top">
						<h3>인원/좌석 선택</h3>
						<span>인원은 최대 8명까지 선택 가능합니다.</span>
					</div>
					<div class="choose-people-middle">
						<span class="choose-people-middle-text">인원수</span>
						<div class="btn-area">
							<button class="minus-btn">-</button>
							<span class="people-count"></span>
							<button class="plus-btn">+</button>
						</div>
					</div>
					<div class="choose-people-bottom">
						<p>인원을 선택하세요.</p>
					</div>
				</div>

				<div class="choose-seat">
					<div class="choose-seat-bar">S C R E E N</div>
					<div class="choose-seat-content"></div>
					<div class="choose-seat-type">
						<span>선택좌석</span> <span>선택가능</span> <span>예매완료/선택불가</span>
					</div>
				</div>

				<div class="go-payment">
					<div class="go-payment-amount">
						<p>
							총 합계<strong class="total-price"></strong>원
						</p>
					</div>
					<button class="go-payment-btn">결제하기</button>

				</div>
			</section>

			<section class="payment reserve-content">
				<div class="payment-reserve-info">
					<div class="payment-reserve-info-top">
						<h3>예매정보</h3>
					</div>
					<div class="payment-reserve-info-bottom"></div>
				</div>
				<div class="payment-method">
					<div class="payment-method-top">
						<h3>결제수단</h3>
					</div>
					<div class="payment-method-bottom">
						<p class="payment-method-bottom-title">최종 결제수단</p>
						<div class="payment-method-bottom-btn-area">
							<button>신용카드</button>
							<button>휴대폰결제</button>
						</div>

					</div>
				</div>
				<div class="payment-ok">
					<div class="payment-ok-top">
						<h3>결제하기</h3>
					</div>
					<div class="payment-ok-middle"></div>
					<div class="payment-ok-bottom">
						<div class="ticket-price-area">
							<div class="payment-ok-bottom-text">상품금액</div>
							<div class="payment-ok-bottom-price payment-ticket-price"></div>
						</div>
						<div class="ticket-count-area">
							<div class="payment-ok-bottom-text">티켓수</div>
							<div class="payment-ok-bottom-price payment-ticket-count"></div>
						</div>
						<div class="total-price-area">
							<div class="payment-ok-bottom-text">결제금액</div>
							<div class="payment-ok-bottom-price payment-total-price"></div>
						</div>
						<button class="payment-ok-btn">결제하기</button>
					</div>
				</div>
			</section>

			<section class="complete reserve-content">
				<h3>예매가 완료되었습니다.</h3>
				<br>
				<button class="complete-btn">예매내역 확인</button>
			</section>
		</div>

	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>