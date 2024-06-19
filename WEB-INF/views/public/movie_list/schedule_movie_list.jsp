<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header" />
	<main class="movie">
		<div class="movie-list-container">
			<br>
			<div class="movie-buttons">
				<div class="now">현재 상영작</div>
				<div class="plan">상영 예정작</div>
			</div>
			<br>
			<div class="movingnow">
				<section class="movie-list">
					<br>
					<ul class="ms1">
						<c:forEach var="i" begin="0" end="${NowList.size() - 1 }">

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
				</section>
			</div>
			<div class="movingplan">
				<section class="movie-list">
					<br>
					<ul class="ms1">
						<c:forEach var="i" begin="0" end="${PlanList.size() - 1 }">

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
		</div>
	</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
	<script type="text/javascript">
	 document.addEventListener("DOMContentLoaded", () => {
		 
		 const movie_buttons = Array.from(document.getElementsByClassName("movie-buttons")[0].children);
		 const now = document.getElementsByClassName("movingnow")[0];
		 const plan = document.getElementsByClassName("movingplan")[0];
		 
		 if(!window.location.href.includes("plan")){
			 movie_buttons[0].style.borderBottom = "3px solid red";
			 now.style.display = "block";
			 plan.style.display = "none";
		 }else{
			 movie_buttons[1].style.borderBottom = "3px solid red";
			 now.style.display = "none";
			 plan.style.display = "block";
		 }
		 
		 movie_buttons.forEach((li, idx) => {
		 	li.addEventListener("click", () => {
				if(idx == 0){
					now.style.display = "block";
					plan.style.display = "none";
					movie_buttons[1].style.border = "none"; 
					movie_buttons[0].style.borderBottom = "3px solid red"; 
				}else{
					now.style.display = "none";
					plan.style.display = "block";
					movie_buttons[0].style.border = "none"; 
					movie_buttons[1].style.borderBottom = "3px solid red"; 
				}	 		
		 		
		 	});
		 })
	 });
	</script>
</body>
</html>