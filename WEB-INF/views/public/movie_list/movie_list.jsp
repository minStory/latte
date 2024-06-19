<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>영화</title>
</head>
<body>
	<c:import url="header" />

	<main class="movie">
		<div class="movie-list-container">
			<section class="movie-list">
				<br>
				<h3>현재상영작</h3>
				<h3 style="color: red">Top 5</h3>
				<a href="#">더 보기</a> <br>
				<ul class="ms1">
					<c:forEach var="i" begin="0" end="4">
						<li>
							<div class="movie-list-photo"
								style="background: url('images/movie_image/${NowList.get(i).getMovie_no()}/poster.png') no-repeat center/cover;">
								<div class="m1">
									<a href="movie_specific?no=${NowList.get(i).getMovie_no() }">상세정보</a>
									<a href="reserve?movie_no=${NowList.get(i).getMovie_no()}">예매하기</a>
								</div>
							</div>
							<div class="movie-list-title">
								<span
									style="background: url('images/grade_${NowList.get(i).getMovie_limit_age() }.png') no-repeat;">${NowList.get(i).getMovie_title() }</span>
							</div>
							<div class="movie-list-util">
								<span>예매율</span> <span>평점</span>
							</div>
						</li>
					</c:forEach>
				</ul>
				<br> <br>
				<h3>상영 예정작</h3>
				<h3 style="color: red">Top 5</h3>
				<a href="#">더 보기</a> <br>
				<ul class="ms1">
					<c:forEach var="i" begin="0" end="4">
						<li>
							<div class="movie-list-photo"
								style="background: url('images/movie_image/${PlanList.get(i).getMovie_no()}/poster.png') no-repeat center/cover;">
								<div class="m1">
									<a href="movie_specific?no=${PlanList.get(i).getMovie_no() }">상세정보</a>
									<a href="reserve?movie_no=${PlanList.get(i).getMovie_no()}">예매하기</a>
								</div>
							</div>
							<div class="movie-list-title">
								<span
									style="background: url('images/grade_${PlanList.get(i).getMovie_limit_age() }.png') no-repeat;">${PlanList.get(i).getMovie_title() }</span>
							</div>
							<div class="movie-list-util">
								<span>예매율</span> <span>평점</span>
							</div>
						</li>
					</c:forEach>
				</ul>
			</section>
		</div>
	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>