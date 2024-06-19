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

	<main class="modify-specific-container">
		<form action="admin_modify_movie_ok" method="post">
			<input type="hidden" name="movie_no" value="${specific.getMovie_no() }">
			<input type="submit" class="modify_movie_submit" value="수정하기">
			<section class="spechead">
			<div class="modify-spec_neck">
				<div class="modify-spec_img"
					style="background: url('images/movie_image/${specific.getMovie_no()}/poster.png') no-repeat center/cover;"></div>
				<div class="modify-spec_write">
					<div class="modify-spec_info">
						<b>영화 제목</b><input type="text" name="title" value="${specific.getMovie_title() }" style="width: 100px">
					</div>
					<ul class="modify_booking_info">
						<li><b>개봉일</b><input type="text" name="date" value="${specific.getMovie_release_date() }" style="width: 100px"></li>
						<li><b>상영시간</b><input type="text" name="screentime" value="${specific.getMovie_screen_time() }" style="width: 100px"></li>
						<li><b>관람연령제한</b><input type="text" name="age" value="${specific.getMovie_limit_age() }" style="width: 100px"></li>
					</ul>
							<textarea class="movie_modify_cont"name="content">${specific.getMovie_content() }</textarea>
				</div>
			</div>
		</section>
			<div class="modify-movieinfo_and_modify-review">
				<div class="buttons">
					<div class="detail">상세정보</div>
					<div class="modify-review">관람평</div>
				</div>
				<div class="modify-movieinfo">
					<div class="info">
						<div>
							<p>영화정보</p>
							<ul>
								<li><b>장르</b><input type="text" name="genre" value="${specific.getMovie_genre() }"></li>
								<li><b>감독</b><input type="text" name="director" value="${specific.getMovie_director() }"></li>
								<li><b>출연</b><input type="text" name="actor" value="${specific.getMovie_actor() }"></li>
							</ul>
						</div>
					</div>
					<h4>트레일러</h4>
					<div class="trailer">
						<div class=Frame>
							<div class="Framemovie fm1">
								<a></a>
							</div>
							<p>티저 예고편</p>
						</div>
						<div class=Frame>
							<div class="Framemovie fm2">
								<a></a>
							</div>
							<p>메인 예고편</p>
						</div>
						<div class=Frame>
							<div class="Framemovie fm3">
								<a></a>
							</div>
							<p>30초 예고편</p>
						</div>
					</div>
					<h4>스틸컷</h4>
					<div class="stealcut">
						<div>
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
				</div>
				</div>
				</form>
				<div class="modify-reviewzone">
						<div class="modify-reviewzoneinside">
							<c:if test="${empty timeReview }">
								<h4>리뷰가 없습니다.</h4>
							</c:if>
							<c:if test="${!empty timeReview }">
								<div class="ributton">
									<button>최신순</button>
									<button>공감순</button>
								</div>
								<div class="modify-reviewlist">
									<!-- 최신순  -->
									<div class="modify-reviewuserlist">

										<c:forEach begin="0" end="${timeReview.size()-1}" var="r">
											<div class="modify-reviewuserlistinside">
												<div class="modify-reviewuserlistinside-photo1"></div>
												<ul>
													<li><p>${timeReview.get(r).getMovie_review_writer_id()}</p></li>
													<li><p>${timeReview.get(r).getMovie_review_created_date()}</p></li>
													<li><p>${timeReview.get(r).getMovie_review_content()}</p></li>
												</ul>
												<div class="modify-reviewuserlistinside-photo2"
													onclick="return test()">
													<b>${timeReview.get(r).getMovie_review_recommend() }</b>
												</div>
												<button onclick="location.href='admin_delete_review?no=${timeReview.get(r).getMovie_review_no()}&MovieNo=${specific.getMovie_no() }'">삭제</button>
											</div>
										</c:forEach>
									</div>
									<button class="widebutton">펼쳐보기 ↓</button>
								</div>
							</c:if>
						</div>
					</div>
		
	</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
	<script type="text/javascript">
		/* $(".modify-movieinfo").on("click",function(){
		 $(".modify-movieinfo>div").show();
		 $(".modify-reviewzone>div").hide();
		 });
		 $(".modify-reviewzone").on("click",function(){
		 $(".modify-movieinfo>div").hide();
		 $(".modify-reviewzone>div").show();
		 }); */
		 
		 document.addEventListener("DOMContentLoaded", () => {
			 
			 const buttons = Array.from(document.getElementsByClassName("buttons")[0].children);
			 const modify_movieinfo = document.getElementsByClassName("modify-movieinfo")[0];
			 const modify_reviewzone = document.getElementsByClassName("modify-reviewzone")[0];
			 
			 buttons.forEach((li, idx) => {
				 modify_reviewzone.style.display = "none";
			 	li.addEventListener("click", () => {
					if(idx == 1){
						modify_movieinfo.style.display = "none";
						modify_reviewzone.style.display = "block";
					}else{
						modify_reviewzone.style.display = "none";
						modify_movieinfo.style.display = "block";
					}	 		
			 		
			 	});
			 })
		 });
		 
		 function test(){
			 
		 }
		 
	</script>
</body>
</html>