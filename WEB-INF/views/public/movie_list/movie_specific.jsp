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

	<main class="specific-container">
		<section class="spechead">
			<div class="spec_neck">
				<div class="spec_img"
					style="background: url('images/movie_image/${Specific.getMovie_no() }/poster.png') no-repeat center/cover;"></div>
				<div class="spec_write">
					<div class="spec_info">
						<strong>${Specific.getMovie_title() }</strong>
					</div>
					<ul class="booking_info">
						<li><b>${Specific.getMovie_release_date() }</b> 개봉 |</li>
						<li><img src="./images/clock_icon.png" alt="시계아이콘"></li>
						<li><b>${Specific.getMovie_screen_time() }</b>분 |</li>
						<c:if test="${Specific.getMovie_limit_age() == 0 }">
							<li><b style="color: green;">전체관람가 </b></li>
						</c:if>
						<c:if test="${Specific.getMovie_limit_age() == 12 }">
							<li><b style="color: #FFD732;">12세이상관람가 </b></li>
						</c:if>
						<c:if test="${Specific.getMovie_limit_age() == 15 }">
							<li><b style="color: orange;">15세이상관람가 </b></li>
						</c:if>
						<c:if test="${Specific.getMovie_limit_age() == 19 }">
							<li><b style="color: red;">19세이상관람가 </b></li>
						</c:if>
						<li>|<b> 1100만명</b></li>
					</ul>
					<div class="specific_button">
						<button>예고편 재생</button>
						&nbsp;&nbsp;
						<button>좋아요</button>
						<button></button>
					</div>
					<div class="text_bars">
						<div class="write_and_scroll">
							<p>${Specific.getMovie_content() }</p>
						</div>
					</div>
					<button class="ticket" onclick="location.href='reserve?movie_no=${Specific.getMovie_no() }'">예매하기</button>
				</div>
			</div>
		</section>
		<section>
			<div class="movieinfo_and_review">
				<div class="buttons">
					<div class="detail">상세정보</div>
					<div class="review">관람평</div>
				</div>
				<div class="movieinfo">
					<div class="info">
						<div>
							<p>영화정보</p>
							<ul>
								<li>장르 <b>${Specific.getMovie_genre() }</b></li>
								<li>감독 <a href="#">${Specific.getMovie_director() }</a></li>
								<li>출연 <a href="actor_specific">${Specific.getMovie_actor() }</a></li>
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
				<div class="reviewzone">
					<div class="insertzone">
						<div class="insertzone-top">
							<p>
								<b>영화 관람후 관람평 작성 시 L Point 50p를 적립</b>
							</p>
							<c:if test="${empty dto}">
								<button>
									<b>관람평작성</b>
								</button>
							</c:if>
							<c:if test="${!empty dto }">
								<form action="movie_insert_review" method="post">
									<div class="review-submit">
										<c:if test="${no.equals('M') }">
											<input type="hidden" value="${dto.getMember_no() }"
												name="moviermno">
											<input type="hidden" value="${dto.getMember_id() }"
												name="moviermid">
										</c:if>
										<input type="hidden" value="${Specific.getMovie_no() }"
											name="movierno"> <input type="hidden"
											value="${Specific.getMovie_title() }" name="moviername">
										<textarea name="moviercontent" rows="7" cols="25"
											placeholder="여기다가 작성하세요"></textarea>
										<input type="submit" value="작성하기">
									</div>
								</form>

							</c:if>
						</div>
						<div class="reviewzoneinside">
							<c:if test="${empty timeReview }">
								<h4>리뷰가 없습니다.</h4>
							</c:if>
							<c:if test="${!empty timeReview }">
								<div class="ributton">
									<button>최신순</button>
									<button>공감순</button>
								</div>
								<div class="reviewlist">
									<!-- 최신순  -->
									<div class="reviewuserlist reviewuserlisttime">

										<c:forEach begin="0" end="${timeReview.size()-1}" var="r">
											<div class="reviewuserlistinside">
												<div class="reviewuserlistinside-photo1"></div>
												<ul>
													<li><p>${timeReview.get(r).getMovie_review_writer_id()}</p></li>
													<li><p>${timeReview.get(r).getMovie_review_created_date()}</p></li>
													<li><p>${timeReview.get(r).getMovie_review_content()}</p></li>
												</ul>
												<div class="reviewuserlistinside-photo2"
													onclick="location.href='movie_review_likehit?no=${timeReview.get(r).getMovie_review_no()}'">
													<b>${timeReview.get(r).getMovie_review_recommend() }</b>
												</div>
											</div>
										</c:forEach>
										<button class="widebutton">펼쳐보기 ↓</button>
									</div>
									<div class="reviewuserlist reviewuserlistrecommend">

										<c:forEach begin="0" end="${recommendReview.size()-1}" var="r">
											<div class="reviewuserlistinside">
												<div class="reviewuserlistinside-photo1"></div>
												<ul>
													<li><p>${recommendReview.get(r).getMovie_review_writer_id()}</p></li>
													<li><p>${recommendReview.get(r).getMovie_review_created_date()}</p></li>
													<li><p>${recommendReview.get(r).getMovie_review_content()}</p></li>
												</ul>
												<div class="reviewuserlistinside-photo2"
													onclick="location.href='movie_review_likehit?no=${recommendReview.get(r).getMovie_review_no()}'">
													<b>${recommendReview.get(r).getMovie_review_recommend() }</b>
												</div>
											</div>
										</c:forEach>
										<button class="widebutton">펼쳐보기 ↓</button>
									</div>

								</div>
							</c:if>
							<div class="danger">
								<h3>유의사항</h3>
								<ul>
									<li>관람평 작성에 대한 L.POINT는 익일 적립되며, 관람 후 초기 1회에 대해서만 적립됩니다.</li>
									<li>수정/삭제 후 재등록 시에는 포인트 적립이 되지 않습니다.</li>
									<li>관람평은 관람 내역당 1회만 작성 가능하며, 상영종료된 영화의 관람평은 작성 불가합니다.</li>
									<li>작성하신 관람평은 마이페이지 > MY무비로그 > 내가 본 영화에서 확인하실 수 있습니다.</li>
									<li>관람 평점은 롯데시네마에서 실제 관람한 회원의 평점 입니다.</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
	<script type="text/javascript">
      /* $(".movieinfo").on("click",function(){
       $(".movieinfo>div").show();
       $(".reviewzone>div").hide();
       });
       $(".reviewzone").on("click",function(){
       $(".movieinfo>div").hide();
       $(".reviewzone>div").show();
       }); */
       
       document.addEventListener("DOMContentLoaded", () => {
          
          const ributton = Array.from(document.getElementsByClassName("ributton")[0].children);
          const reviewuserlisttime = document.getElementsByClassName("reviewuserlisttime")[0];
          const reviewuserlistrecommend = document.getElementsByClassName("reviewuserlistrecommend")[0];
          
          ributton.forEach((li, idx) => {
             reviewuserlistrecommend.style.display = "none";
             li.addEventListener("click", () => {
               if(idx == 1){
                  reviewuserlisttime.style.display = "none";
                   reviewuserlistrecommend.style.display = "block";
               }else{
                   reviewuserlistrecommend.style.display = "none";
                  reviewuserlisttime.style.display = "block";
               }          
                
             });
          })
       });
       
    document.addEventListener("DOMContentLoaded", () => {
          
          const buttons = Array.from(document.getElementsByClassName("buttons")[0].children);
          const movieinfo = document.getElementsByClassName("movieinfo")[0];
          const reviewzone = document.getElementsByClassName("reviewzone")[0];
          
          buttons.forEach((li, idx) => {
             reviewzone.style.display = "none";
             li.addEventListener("click", () => {
               if(idx == 1){
                  movieinfo.style.display = "none";
                  reviewzone.style.display = "block";
               }else{
                  reviewzone.style.display = "none";
                  movieinfo.style.display = "block";
               }          
                
             });
          })
       });
      
       
   </script>
</body>
</html>