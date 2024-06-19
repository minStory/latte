<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Latte Cinema</title>
</head>
<body>
	<c:import url="header" />
	<!-- 마이페이시 상단 -->
	<div class="mypage_main">
		<div class="mypage_top_infor mypage-container" id="mypage_top_infor">
			<div class="mypage_box">
				<div class="mypage_box_top">
					<h3 class="hidden">회원 등급 및 포인트</h3>
					<div class="my_info">
						<div class="grade_area">
							<span class="txt_rank_common ml5">일반</span>
							<p class="name">
								<strong>${member_name }님 </strong>반가워요!
							</p>
						</div>
						<div class="profile_set">
							<p class="tooltip_bk">닉네임을 설정해 주세요.</p>
							<button type="button" class="btn_txt_edit" title="레이어팝업 열기">편집</button>
						</div>
					</div>
					<div class="next_rank">
						<p>
							VIP까지 남은 금액 <em>260,000</em> 원
						</p>
					</div>
					<div class="bx_grade merge2020">
						<a href="#" class="btn_col5 ty5 rnd">MEMBERSHIP ZONE</a>
					</div>
				</div>
				<div class="mypage_box_bottom">
					<div class="btn_wrap_1">
						<a href="#" title="L.POINT 페이지 이동"><span
							class="txt_img">L.POINT : </span> <em>${member_mileage }P</em></a>
						<a href="#" title="쿠폰함 페이지 이동">쿠폰함 <em class="txt_color">0</em></a>
					</div>
				</div>
			</div>
			<div class="my_theater" id="my_theater">
				<div class="my_theater_top">
					<h3 class="tit">MY 영화관</h3>
					<button type="button" class="btn_setup" title="레이어팝업 열기">설정</button>
				</div>
				<ul class="theater_box">
					<li class="add" id="my_theater_1"><strong>1st</strong></li>
					<li class="add" id="my_theater_2"><strong>2nd</strong></li>
					<li class="add" id="my_theater_3"><strong>3rd</strong></li>
				</ul>
				<div class="banner_club">
					<a href="#"><img src="./images/mypage/my_club_315_bravo_230301.jpg" alt="BROVO CLUB 브라보"></a>
				</div>
			</div>
		</div>
	</div>
	<!-- 마이페이지 공통 메뉴 -->
	<div class="mypage_top_menu mypage-container">
		<ul class="mypage_top_menu_tab">
			<li><a><span>결제내역</span></a></li>
			<li><a><span>쿠폰함</span></a></li>
			<li><a><span>1:1문의</span></a></li>
			<li><a><span>MY정보관리</span></a></li>
		</ul>
	</div>

	<!-- 마이페이지 컨덴츠(결제내역) -->
	<div class="a">
		<div class="tab_con mypage-container">
			<h4 class="hidden">예매내역</h4>


			<div class="con_top_area ">
				<p class="txt_notice">
					<span class="txt_caution1">최근 70일 이내 정보만 조회가 가능합니다.</span>
				</p>
			</div>

			<div class="ticket_list">

				<ul class="ticket_info">
				<c:if test="${!empty tdto }">
					<c:forEach var="i" begin="0" end="${tdto.size() - 1 }">
						<li class="ticket_info1">

							<div class="ticket-btn">
								<div class="date">
									${tdto.get(i).getTicketing_history_movie_start_date() }<span
										class="week"> (<fmt:formatDate value="${startDateList.get(i) }" pattern="EEE"/>)</span>
								</div>
								<button type="button" title="열림" class="title0"
									aria-expanded="false">
									<strong class="tit">${tdto.get(i).getTicketing_history_movie_title() }</strong>
									<span class="sum"><em>${tdto.get(i).getTicketing_history_payment_amount() }</em>원</span>
									<span class="num">예매번호 <em>${tdto.get(i).getTicketing_history_no() }</em></span>
									<span class="txt_col7"><span class="txt_col7_1 ty2 cancel-1">취소가능</span></span>
								</button>
							</div>

							<div class="mypage-ticket">
								<div class="info_area">
									<div class="img">
										<img
											src="images/movie_image/${tdto.get(i).getTicketing_history_movie_no() }/poster.png"
											alt="">
									</div>
									<div class="info">
										<table class="info_table">
											<tr>
												<th>상영일시</th>
												<td>${tdto.get(i).getTicketing_history_movie_start_date() }</td>
												<td>${tdto.get(i).getTicketing_history_movie_start_time().substring(0,5) }
													~
													${endTimeList.get(i).substring(0,5) }</td>
												
											</tr>
											<tr>
												<th>상영관</th>
											
												<td>${tdto.get(i).getTicketing_history_region() } ${tdto.get(i).getTicketing_history_location() }</td>
												<td><a href="cinema?loc=${tdto.get(i).getTicketing_history_location() }" class="ticket_btn1">상영관보기</a></td>
											</tr>
											<tr>
												<th>관람인원</th>
												<td>${tdto.get(i).getTicketing_history_booking_count() }</td>
											</tr>
											<tr>
												<th>좌석</th>
												
												<td>${tdto.get(i).getTicketing_history_seat() }</td>
											</tr>
										</table>
										<div class="btn_wrap">
											<a href="ticket_delete?no=${tdto.get(i).getTicketing_history_no() }" class="btn_col3 ty5 cancel-2" onclick="return confirmTicketCancel()">결제취소</a> 
											<!-- <a href="#none" class="btn_col2 ty5">신용카드전표출력</a> 
											<a href="#none" class="btn_col1 ty5">모바일 바로티켓 받기</a> -->
										</div>
									</div>
								</div>
								<div class="payment_area">
									<dl class="date_pay">
										<dt>결제일시</dt>
										<dd>
											<em>${tdto.get(i).getTicketing_history_booking_date() }</em>
										</dd>
									</dl>
									<div class="total_pay">
										<div class="pay_area">
											<dl class="pay">
												<dt>주문금액</dt>
												<dd>
													<em>${tdto.get(i).getTicketing_history_payment_amount() }</em>원
												</dd>
											</dl>
										</div>
										<div class="pay_area dotline bgnone">
											<dl class="minus">
												<dt>할인금액</dt>
												<dd>
													<em>0</em>원
												</dd>
											</dl>
											<div class="discont"></div>
										</div>
										<div class="pay_area">
											<dl class="pay">
												<dt>총 결제 금액</dt>
												<dd class="txt_color">
													<em>${tdto.get(i).getTicketing_history_payment_amount() }</em>원
												</dd>
											</dl>
											<div class="number">
												<span class="txt_card1 ty1">${tdto.get(i).getTicketing_history_payment_method() }</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
					</c:if>
				<c:if test="${empty tdto }">
						<tr>
							<td colspan="6">
								<div class="bx_nodata">
									<p class="tit">예매 내역이 없습니다.</p>
								</div>
							</td>
						</tr>
			
				</c:if>
				</ul>

			</div>
		</div>

		<!-- 유의사항  -->
		<div class="txt_list_wrap mypage-container">
			<div class="list_bdr_box">
				<h5 class="title txt_caution2">유의사항</h5>
				<div class="list_inner_box">
					<strong class="tit">환불 안내</strong>
					<dl class="list_define">
						<dt>[신용카드]</dt>
						<dd>결제 후 3일 이내 취소 시 승인 취소 가능합니다.</dd>
						<dd>3일 이후 예매 취소 시 영업일 기준 3일 ~ 7일 이내 카드사에서 환불됩니다.</dd>
					</dl>
					<dl class="list_define">
						<dt>[체크카드]</dt>
						<dd>결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.</dd>
						<dd>3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 카드사에서 환불됩니다.</dd>
					</dl>
					<dl class="list_define">
						<dt>[휴대폰 결제]</dt>
						<dd>결제 일자 기준 당월(1일 ~ 말일까지) 취소만 가능합니다.</dd>
						<dd>익월 취소의 경우 라떼시네마 고객센터(1544-8855 유료)로 문의 주시기 바랍니다.</dd>
					</dl>
					<dl class="list_define">
						<dt>[모바일캐시비/티머니]</dt>
						<dd>모바일캐시비(선불형): 모바일캐시비 APP 선물함으로 취소금액이 충전됩니다.</dd>
						<dd>모바일티머니(선불형): 환불 SMS 수신 후 URL 클릭하시면 모바일티머니 APP이 자동으로 실행되어
							취소금액이 충전됩니다.</dd>
						<dd>모바일캐시비/티머니(후불형): 취소금액은 환불되지 않고, 신용카드 대금에서 청구 취소됩니다. (취소일
							7일 이내 카드사 청구내역에서 확인 가능합니다.)</dd>
						<dd>모바일캐시비/티머니(플라스틱카드): 교통카드충전결제 APP 실행 후, [환불내역]에서 카드 태깅하여
							카드로 충전됩니다.</dd>
					</dl>
					<dl class="list_define">
						<dt>[환불지연보상안내]</dt>
						<dd>환불 등에 필요한 조치가 지연된 때에는 그 지연기간에 대하여 「전자상거래등에서의 소비자보호에 관한
							법률」시행령이 정하는 지연이자율을 곱하여 신청한 지연이자를 지급합니다.</dd>
					</dl>
					<dl class="list_define">
						<dt class="tit">예매 취소 안내</dt>
						<dd>온라인 예매 내역 취소는 상영 20분 전까지 가능하며, 20분 이전부터는 현장 취소만 가능합니다.</dd>
						<dd>티켓에 표기된 상영시작시간 이후 환불은 불가합니다.</dd>
						<dd>무대인사, 스페셜상영회, GV, 라이브뷰잉 등 특별 상영 회차의 예매 취소는 상영전일 23시 59분
							59초까지만 취소 가능합니다.</dd>
						<dd>온라인 예매 후 현장에서 티켓 발권 시 온라인으로 예매 취소는 불가능하며, 현장 취소만 가능합니다.</dd>
						<dd>적립 예정 L.POINT는 영화 관람 다음 날 적립됩니다.</dd>
						<dd>예고편과 광고 상영으로 실제 영화 시작 시간이 10분 정도 차이 날 수 있습니다.</dd>
						<dd>SMS 수신을 이용하시면 예매내역을 휴대폰으로 받을 수 있습니다.</dd>
						<dd>부분 취소는 할 수 없습니다.(3장을 예매한 경우 3장 모두 취소만 할 수 있습니다.)</dd>
					</dl>
					<dl class="list_define">
						<dt class="tit">상품취소 안내</dt>
						<dd>스토어 상품의 취소기한은 구매일로부터 70일입니다. (취소 관련문의 : 고객센터 1544-8855
							유료)</dd>
						<dd>구매취소는 취소기한 내 마이시네마 &gt; 예매/구매내역에서만 가능합니다.(현장취소 불가)</dd>
						<dd>구매하신 상품은 부분환불 및 현금환불이 되지 않습니다.</dd>
						<dd>좌석 구매 시 함께 구매한 매점 상품은 영화 관람 완료 후에는 취소가 불가합니다.</dd>
						<dd>얼리버드 상품은 특별관람권이므로 구매 후 7일 이내 환불 가능합니다.</dd>
					</dl>
					<dl class="list_define">
						<dt class="tit">고객불만 처리</dt>
						<dd>고객의 불만사항은 회사의 전담조직에 처리하며, 홈페이지 고객센터 1:1문의 또는
							1544-8855(유료)로 문의주시기 바랍니다.</dd>
						<dd>고객과의 분쟁은 전자문서 및 전자거래기본법 제32조에 의하여 설치된 전자문서·전자분쟁조정위원회의 조정에
							따를 수 있습니다.</dd>
					</dl>
					<dl class="list_define">
						<dt class="tit">이용약관 안내</dt>
						<dd>
							이용약관은 다음의 링크에서 확인하실 수 있습니다.<a href="#" title="이용약관 확인하기 화면이동"
								class="txt_underline">이용약관 확인하기 <span class="arrowright">›</span></a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>


	<!-- 쿠폰함 -->
	<div class="mypage_coupon b mypage-container" id="mypage_coupon">
		<div class="bx_category_slct">
			<ul class="tab_wrap outer lft mid slct_group">
				<li class="active">

					<div class="tab_con" id="tab1">
						<h3 class="hidden">영화</h3>
						<div class="coupon_possible" style="right: 7px;">
							<dt>사용가능쿠폰 :</dt>
							<dd>
								<em>0</em>매
							</dd>
						</div>

						<fieldset class="search_wrap">
							<legend>쿠폰 검색하기</legend>
							<input type="checkbox" id="checkbox_01">

							<button class="btn_text">선택삭제</button>

							<select class="ty3" title="검색조건 구분 선택" id="tab1Mselect2">
								<option value="00">구분(전체)</option>
								<option value="10">관람(구매)권</option>
								<option value="20">할인권</option>
							</select> <select class="ty3" title="검색조건 사용가능 선택" id="tab1Mselect3">
								<option value="A">사용가능</option>
								<option value="C">사용완료</option>
								<option value="E">기간만료</option>
							</select>

							<button type="button" class="btn_bdr_refresh">새로 고침</button>

							<div class="btn_wrap">
								<button type="button" class="btn_col2">쿠폰등록</button>
							</div>
						</fieldset>


						<table class="tbl_list mypage-container" summary="쿠폰 리스트에 대한 표입니다">
							<caption>쿠폰 리스트</caption>
							<colgroup>
								<col style="width: 5%;">
								<col style="width: 10%;">
								<col style="width: 8%;">
								<col style="width: auto;">
								<col style="width: 23%;">
								<col style="width: 10%;">
							</colgroup>
							<thead>
								<tr>
									<th id="thead00" scope="col"></th>
									<th id="thead01" scope="col">분류</th>
									<th id="thead02" scope="col">구분</th>
									<th id="thead03" scope="col">쿠폰명</th>
									<th id="thead04" scope="col">유효기간</th>
									<th id="thead05" scope="col">쿠폰상태</th>
								</tr>
							</thead>
							<tbody id="tab01">

								<tr class="coupon-info">
									<td>공백</td>
									<td>분류</td>
									<td>구분</td>
									<td>쿠폰명</td>
									<td>유효기간</td>
									<td>쿠폰상태</td>
								</tr>

								<tr>
									<td colspan="6"><div class="bx_nodata">
											<p class="tit">사용 가능한 쿠폰이 없습니다.</p>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
			</ul>
		</div>
	</div>


	<!-- 1:1문의 -->
	<div class="customer-inquiry c mypage-container">
		<div class="customer-table">
			<h3 class="customer-table-title"></h3>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>분류</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="list" value="${inquiryList }" />
					<c:if test="${!empty list }">
						<c:forEach items="${list }" var="dto">

							<tr>
								<td>${dto.getInquiry_history_no() }</td>
								<td><a
									href="mypage_content?no=${dto.getInquiry_history_no() }">${dto.getInquiry_history_title() }</a></td>
								<td>${dto.getInquiry_history_created_date().substring(0,10) }</td>
								<td>${dto.getInquiry_history_type() }</td>
							</tr>

						</c:forEach>
					</c:if>
				</tbody>

				<c:if test="${empty list }">
					<tr>
						<td colspan="4" align="center">
							<h3>1대1문의 리스트가 없습니다</h3>
						</td>
					</tr>
				</c:if>
			</table>
		</div>
	</div>

	<!-- MY정보관리 -->
	<div class="myinfo d mypage-container">
		<div class="myinfo-tab">
			<ul class="myinfo-menubox">
				<li><a href="changeinfockpwd"> <span class="img"><img
							src="./images/mypage/ic_my_menu_1.png" alt="회원 정보 변경"></span> <span
						class="txt_rt_arrow">회원 정보 변경</span>
				</a></li>
				<li><a href="changepassword"> <span class="img"><img
							src="./images/mypage/ic_my_menu_2.png" alt="비밀 번호 변경"></span> <span
						class="txt_rt_arrow">비밀 번호 변경</span>
				</a></li>
				<li><a href="memberdelete"> <span class="img"><img
							src="./images/mypage/ic_my_menu_3.png" alt="회원 탈퇴"></span> <span
						class="txt_rt_arrow">회원 탈퇴</span>
				</a></li>
			</ul>

			<div class="list_bdr_box">
				<ul class="list_txt">
					<li>라떼시네마는 L.POINT 제휴 사이트입니다. 비밀번호/회원정보는 라떼멤버스㈜에서 관리되고 있으며,
						회원가입 시 등록하신 개인정보는 라떼멤버스㈜에서 변경하실 수 있습니다.</li>
					<li>라떼시네마 회원탈퇴를 원하시면 회원탈퇴 버튼을 클릭해주세요. 회원을 탈퇴하시면 등록되어 있던
						쿠폰/할인권/관람권/L.POINT카드 등 개인정보가 삭제되어 <br> 재가입 시 다시 입력하셔야 합니다.
					</li>

					<li>2024년 VIP 회원은 2023년 1월 1일부터 12월 31일 까지 관람한 영화의 VIP 승급금액 실적
						기준으로 이루어 집니다.
						<button type="button" class="btn_col4 ty3" title="레이어팝업 열기">광고
							수신동의 내역 확인 및 변경</button>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>