<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS 링크 -->
<link rel="stylesheet" href="css/common/style.css" />
<!-- 폰트 링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet" />
<!-- 자바스크립트 연동 -->
<script src="js/session.js"></script>
<!-- session.js 최상단 위치 -->
<script src="js/signup.js"></script>
<script src="js/header.js"></script>
<script src="js/modal.js"></script>
<script src="js/movie.js"></script>
<script src="js/reserve.js"></script>
<script src="js/main.js"></script>
<script src="js/admin_main.js"></script>
<script src="js/mypage.js"></script>
<script src="js/customer.js"></script>
<script src="js/logout.js"></script>
<script src="js/cinema.js"></script>
<script src="js/motion.js"></script>
<script src="js/timer.js"></script>
</head>
<body>
	<header class="header">
		<div class="header-image header-bg1" onclick="location.href='#'">
			<button class="header-arrow header-arrow-left"
				onclick="showPreviousImage()"></button>
			<button class="header-arrow header-arrow-right"
				onclick="showNextImage()"></button>
		</div>
		<div class="header-background">
			<div class="header-container">
				<div class="header-top">
					<ul>
						<li><a href="https://www.facebook.com" class="btn-facebook">페이스북</a></li>
						<li><a href="https://www.youtube.com" class="btn-youtube">유튜브</a></li>
						<li><a href="https://www.instagram.com" class="btn-instagram">인스타그램</a></li>
					</ul>

					<div class="header-top-logo">
						<a href="main">LATTE CINEMA</a>
					</div>

					<ul>
						<li><a href="#">멤버십</a></li>
						<li><a href="customer">고객센터</a></li>
						<li><a href="#">단체관람/대관문의</a></li>
						<li class="dto-field" data-value="${no }"></li>
					</ul>
				</div>

				<div class="header-bottom">
					<nav class="header-gnb">
						<ul class="header-gnb-list">
							<li onclick="location.href='reserve'">예매<span
								class="header-gnb-bar"></span></li>
							<li onclick="location.href='movie_list'">영화<span
								class="header-gnb-bar"></span></li>
							<li onclick="location.href='#'">영화관<span
								class="header-gnb-bar"></span></li>
							<li onclick="location.href='event'">이벤트<span
								class="header-gnb-bar"></span></li>
							<li onclick="location.href='#'">스토어<span
								class="header-gnb-bar test"></span></li>
						</ul>
					</nav>

					<c:if test="${no == 'M' }">
						<div class="member-check" data-value1="${dto.getMember_name() }"
							data-value2="${dto.getMember_mileage() }"
							data-value3="${dto.getMember_grade() }"></div>
					</c:if>
					<div class="header-util">
						<ul>
							<li class="session-field"><a href="#" class="btn-session"></a></li>
							<li class="name-field"></li>
							<li><a href="reserve" class="btn-reserve">바로 예매</a></li>
							<li><a class="header-modal-btn">≡</a></li>
						</ul>
					</div>
				</div>
			</div>

			<!-- 모달 팝업 영역 -->
			<div class="header-modal">
				<div class="header-modal-popup">
					<div class="header-modal-popup-content">
						<ul class="content-menu">
							<li>
								<p>예매</p> <span><a href="reserve">예매하기</a></span> <span><a
									href="#">상영시간표</a></span> <span><a href="#">할인안내</a></span>
							</li>
							<li>
								<p>영화</p> <span><a href="movie_list">홈</a></span> <span><a
									href="movie_schedule">현재상영작</a></span> <span><a
									href="movie_schedule?plan">상영예정작</a></span> <span><a href="#">아르떼</a></span>
							</li>
							<li>
								<p>영화관</p> <c:forEach var="i" begin="0"
									end="${localList.size() - 1 }">
									<span><a href="cinema?loc=${localList.get(i) }">${localList.get(i) }</a></span>
								</c:forEach>
							</li>
							<li>
								<p>이벤트</p> <span><a href="event">홈</a></span> <span><a
									href="#">영화</a></span> <span><a href="#">시사회/무대인사</a></span> <span><a
									href="#">HOT</a></span> <span><a href="#">제휴할인</a></span> <span><a
									href="#">우리동네영화관</a></span>
							</li>
							<li>
								<p>마이</p> <span><a href="mypage">MY 결제내역</a></span> <span><a
									href="mypage?coupon">MY 쿠폰함</a></span> <span><a
									href="mypage?inquiry">MY 문의</a></span> <span><a
									href="mypage?info">MY 정보 관리</a></span>
							</li>
							<li>
								<p>고객센터</p> <span><a href="customer">FAQ</a></span> <span><a
									href="customer?notice">공지사항</a></span> <span><a
									href="customer?inquiry">1:1 문의</a></span> <span><a href="#">단체관람/대관문의</a></span>
								<span><a href="#">분실물문의</a></span>
							</li>
							<li>
								<p>회원 서비스</p> <span><a href="login">로그인</a></span> <span><a
									href="signup">회원가입</a></span> <span><a href="#">아이디/비밀번호 찾기</a></span>
								<span><a href="company_tac">이용약관</a></span> <span><a
									href="company_privacy_policy">개인정보처리방침</a></span> <span><a
									href="#">이메일무단수집거부</a></span> <span><a href="#">L.POINT회원안내</a></span>
							</li>
							<li>
								<p>회사소개</p> <span><a href="company_introduce">회사소개</a></span> <span><a
									href="#">채용안내</a></span> <span><a href="#">광고/임대문의</a></span> <span><a
									href="#">사회적 책임</a></span>
							</li>
						</ul>
						<div class="header-modal-popup-content-myinfo"></div>
						<button type="button" class="close-btn"></button>
					</div>
				</div>
			</div>
			<!-- 모달 팝업 영역 end -->

			<div class="header-lnb">
				<ul class="header-lnb-reserve">
					<li onclick="location.href='reserve'">예매하기</li>
					<li onclick="location.href='#'">상영시간표</li>
					<li onclick="location.href='#'">할인안내</li>
				</ul>

				<ul class="header-lnb-movie">
					<li onclick="location.href='movie_list'">홈</li>
					<li onclick="location.href='movie_schedule'">현재상영작</li>
					<li onclick="location.href='movie_schedule?plan'">상영예정작</li>
					<li onclick="location.href='#'">아르떼</li>
				</ul>

				<ul class="header-lnb-cinema">
					<li onclick="location.href='#'">스페셜관</li>
					<c:forEach var="i" begin="0" end="${localList.size() - 1 }">
						<li onclick="location.href='#'">${localList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul class="header-lnb-event">
					<li onclick="location.href='event'">홈</li>
					<li onclick="location.href='#'">영화</li>
					<li onclick="location.href='#'">시사회/무대인사</li>
					<li onclick="location.href='#'">HOT</li>
					<li onclick="location.href='#'">제휴할인</li>
					<li onclick="location.href='#'">우리동네영화관</li>
				</ul>

				<ul class="header-lnb-store">
					<li onclick="location.href='#'">베스트</li>
					<li onclick="location.href='#'">관람권</li>
					<li onclick="location.href='#'">스낵음료</li>
					<li onclick="location.href='#'">포토카드</li>
				</ul>
			</div>

			<div class="header-lnb-lnb">
				<ul>
					<c:forEach var="i" begin="0" end="${specialHallList.size() - 1 }">
						<li onclick="location.href='#'">${specialHallList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0" end="${seoulList.size() - 1 }">
						<li onclick="location.href='cinema?loc=${seoulList.get(i) }'">${seoulList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0"
						end="${gyeonggiIncheonList.size() - 1 }">
						<li
							onclick="location.href='cinema?loc=${gyeonggiIncheonList.get(i) }'">${gyeonggiIncheonList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0"
						end="${chungCheongDaeJeonList.size() - 1 }">
						<li
							onclick="location.href='cinema?loc=${chungCheongDaeJeonList.get(i) }'">${chungCheongDaeJeonList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0" end="${jeollaGwangjuList.size() - 1 }">
						<li
							onclick="location.href='cinema?loc=${jeollaGwangjuList.get(i) }'">${jeollaGwangjuList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0"
						end="${gyeongbukDaeguList.size() - 1 }">
						<li
							onclick="location.href='cinema?loc=${gyeongbukDaeguList.get(i) }'">${gyeongbukDaeguList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0"
						end="${gyeongnamBusanUlsanList.size() - 1 }">
						<li
							onclick="location.href='cinema?loc=${gyeongnamBusanUlsanList.get(i) }'">${gyeongnamBusanUlsanList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0" end="${gangwonList.size() - 1 }">
						<li onclick="location.href='cinema?loc=${gangwonList.get(i) }'">${gangwonList.get(i) }</li>
					</c:forEach>
				</ul>

				<ul>
					<c:forEach var="i" begin="0" end="${jejuList.size() - 1 }">
						<li onclick="location.href='cinema?loc=${jejuList.get(i) }'">${jejuList.get(i) }</li>
					</c:forEach>
				</ul>
			</div>

			<div class="header-bottom-background"></div>
		</div>
	</header>
</body>
</html>