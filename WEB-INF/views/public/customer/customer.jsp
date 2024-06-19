<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Latte_Cinema</title>
</head>
<body>
	<c:import url="header" />

	<main class="customer_main">
		<div class="customer">

			<!--1-->
			<h3>고객센터</h3>

			<!--2-->
			<div class="customer_tab">
				<button type="button" onclick="#" class="customer_btn1">FAQ</button>
				<button type="button" onclick="#" class="customer_btn2">공지사항</button>
				<button type="button" onclick="#" class="customer_btn3">1:1문의</button>
			</div>

			<div class="customer_box">
				<div class="customer_icon">
					<button>영화관 이용</button>
					<button>스페셜관</button>
					<button>L.POINT</button>
					<button>회원</button>
					<button>멤버십</button>
					<button>온라인</button>
					<button>할인혜택</button>
					<button>관람권</button>
					<button>스토어</button>
				</div>

				<!--3-->
				<div class="customer_quick">
					<form>
						<input type="search" name="" placeholder="찾고 싶은 검색어를 입력해주세요">
						<input type="submit" value="검색">
					</form>
				</div>

				<!--4-->
				<div class="faq">
					<div class="faq_title">
						<p>
							<b>구분</b>
						</p>
						<p>
							<b>질문 내용</b>
						</p>
					</div>

					<dl>
						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>소방 할인은 어떻게 받나요?</span>
							</button>
						</dt>

						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									<p>
										[소방할인] 소방공무원 고객님들에게 할인혜택을 제공하고 있습니다.<br> 대상 : 소방공무원 및 소방청
										소속 공무원
									</p>
									<ul>
										<li>■ 티켓 : 영화 5,000원 할인</li>
										<li>■ 매점 : 콤보 2,000원 할인</li>
									</ul>
									<small>* 일부 영화관의 경우 매점혜택 적용 불가</small>
								</div>
							</div>
						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>군인 할인은 어떻게 받나요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									대한민국 군장병(ROTC, 사관생도, 부사관후보생, 상근예비역, 간부포함) / 대한민국 예비군 1~2년차 /<br>
									국방부 공,군무원, 한국 국방연구원, 병무청 전직원 / 방위사업청, 방위산업기술지원센터, 국방과학연<br>
									구소 전직원 / 20년 이상 복무 후 전역한 예비역, 군인공제회 전직원 / 사회복무요원, 병역명문가 병역<br>
									이행자 및 가족 / 주한미군, 한국전 참전국 주한군인, 국방부 공무직
								</div>
							</div>

						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>경찰 할인은 어떻게 받나요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									경찰관 및 경찰청(해양경찰청 포함) 소속 공무원, 의무경찰, 신임경찰교육생,<br> 민간해양구조대,
									국민방제대, 구조협회
								</div>
							</div>

						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>영화 경품(굿즈) 수량은 어떻게 하나요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									각 영화 경품(굿즈) 증정 이벤트 페이지 하단 [잔여수량확인] 탭을 통해 확인 가능하며,<br>
									[홈페이지/모바일] > [이벤트] > [영화] > 이벤트페이지 클릭 후 하단의 [잔여수량확인] 탭<br>
									확인 및 영화 경품(굿즈) 증정 이벤트를 진행하는 영화관에 한해 조회가 가능합니다.
								</div>
							</div>
						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>카드로 결제할 경우 환불은 언제 되나요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									결제 후 3일 이내 취소시 승인취소 가능하며<br> 3일 이후 예매 취소 시 영업일 기준 3일 ~7일
									이내 카드사에서 환불됩니다.
								</div>
							</div>
						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>국가유공자 할인은 어떻게 받나요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									국가보훈처에서 지정한 보훈대상임을 증명할 수 있는 국가유공자증 및 유족증 소지자 본인에 한해<br> 일반
									2D 영화 5천원, 3D 영화 8천원 관람이 가능합니다. (특수관의 경우, 일부 추가금액이 발생할 수<br>
									있으나, SUPERㅣ MX4D는 할인 불가합니다.)
								</div>
							</div>
						</dd>

						<dt>
							<button class="faq_btn">
								<b>영화관이용</b><span>Q</span><span>SWEET SPOT이 무엇인가요?</span>
							</button>
						</dt>
						<dd class="faq_content">
							<div>
								<span>A</span>
								<div>
									SWEET SPOT이란, 스크린 가운데에서 상영관 뒤 벽까지 직선 거리의 2/3 지점으로, 롯데시네마가<br>
									추천하는 최적의 화면과 사운드를 즐길 수 있는 좌석입니다.별도의 추가 요금은 없습니다.
								</div>
							</div>
						</dd>
					</dl>
				</div>
			</div>

			<!-- notice  -->
			<div class="customer_notice_box">
				<div class="customer">

					<!--3-->
					<div class="notice_quick">
						<select>
							<option value="제목">제목</option>
							<option value="내용">내용</option>
							<option value="제목+내용">제목+내용</option>
						</select>
						<form>
							<input type="search" name="" placeholder="검색어를 입력해주세요"> <input
								type="submit" value="검색">
						</form>
					</div>

					<div class="notice_table">
						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>구분</th>
									<th>제목</th>
									<th>등록일</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="i" begin="0" end="${notice.size() -1 }">
									<tr>
										<td>${notice.get(i).getNotice_board_no() }</td>
										<td>전체</td>
										<td><button
												onclick="location.href='notice_content?no=${notice.get(i).getNotice_board_no()}'">${notice.get(i).getNotice_board_title() }</button></td>
										<td><c:if
												test="${empty notice.get(i).getNotice_board_updated_date() }">
                     ${notice.get(i).getNotice_board_created_date() }
                  </c:if> <c:if
												test="${!empty notice.get(i).getNotice_board_updated_date() }">
                     ${notice.get(i).getNotice_board_updated_date() }
                  </c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="notice_table_btn">
							<a href="customer?notice&page=1">first</a><a
								href="customer?notice&page=${page - 1 }">previous</a>
							<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
								<a href="customer?notice&page=${i}">${i}</a>
							</c:forEach>
							<c:if test="${endBlock < allPage }">
								<a href="customer?notice&page=${page + 1 }">next</a>
								<a href="customer?notice&page=${allPage }">last</a>
							</c:if>
						</div>

					</div>

				</div>
			</div>
			<!--notice end  -->



			<!-- 고객 문의 박스 -->
			<div class="customer_inquiry_box">
				<!-- 고객 정보 -->
				<div class="customer">

					<!-- FAQ 상자 -->
					<div class="inquiry_faq_box">
						<div>
							<span>FAQ를 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.</span><br> <a
								href="#" class="">FAQ바로가기</a>
							<ul>
								<li>1:1 문의글 답변 운영시간 : 평일 09:00~18:00</li>
								<li>주말/공휴일 미운영하며, 영업시간 내 순차적 답변 처리됩니다.</li>
							</ul>
						</div>
					</div>

					<!-- 문의 설명 -->
					<div>
						<dl class="inquiry_txt1">
							<dt>
								고객님의 문의에 <span class="span_red">답변하는 직원은 고객 여러분의 가족 중 한
									사람</span>일 수 있습니다.
							</dt>
							<dd>고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라
								수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</dd>
						</dl>

					</div>

					<!-- 문의 내용 -->
					<div>
						<div class="inquiry_title">
							<h4>문의내용</h4>
							<div>
								<span class="span_red">*필수입력</span>
							</div>
						</div>
					</div>

					<form method="post" action="customer_insert_inquiry"
						enctype="multipart/form-data" onsubmit="return validateForm()">

						<table class="inquiry_table">
							<colgroup>
								<col style="width: 15%;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="req">분류<span class="span_red">*</span></th>
									<td><select name="type_etc">
											<option>분류 선택</option>
											<option>영화관</option>
											<option>영화</option>
											<option>멤버십</option>
											<option>예매/결제</option>
											<option>이벤트/시사회/무대인사</option>
											<option>홈페이지/모바일</option>
											<option>개인정보</option>
											<option>관람권/할인권</option>
									</select> <select name="type">
											<option>문의 종류</option>
											<option>문의</option>
											<option>칭찬</option>
											<option>불만</option>
											<option>건의</option>
									</select></td>
								</tr>
								<tr>
									<th scope="row" class="req">제목<span class="span_red">*</span></th>
									<td>
										<div>
											<textarea class="writer_box" name="title"
												placeholder="제목을 입력해주세요" id="titletextarea" data-length="50"></textarea>
											<p>
												<span class="counterSpan">0</span>/50
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row" class="req">내용<span class="span_red">*</span></th>
									<td>
										<div class="textarea_box">
											<textarea cols="10" rows="10" class="text_box" name="content"
												placeholder="내용 및 첨부파일에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해주세요."
												id="contentTextarea" data-length="2000"></textarea>
											<div class="span_red">
												현재 페이지 내 ‘클릭/타이핑’ 없이 머무르는 경우, <br> 20분 후 접속이 자동 종료되며
												작업한 내용은 저장이 되지 않습니다.
											</div>
											<p>
												<span class="counterSpan">0</span>/2000
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td>
										<div>
											<input type="file" name="faq_image">
											<div></div>
										</div> <span>첨부 파일형식 : jpg / jpeg / png / bmp / gif / pdf
											(5MB 1개)</span>
									</td>
								</tr>
							</tbody>
						</table>

						<div class="inquiry_title">
							<h4>고객정보</h4>
						</div>

						<table class="inquiry_tables">
							<colgroup>
								<col style="width: 15%;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">성명</th>
									<td><c:if test="${!empty dto}">
											<input type="text" name="name"
												value="${dto.getMember_name()}">
										</c:if> <c:if test="${empty dto}">
											<input type="text" name="name">
										</c:if></td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td><c:if test="${!empty dto}">
											<select name="mobile_carrier">
												<option>${company}</option>
												<c:forEach var="carrier" items="${mobileCarrierList}">
													<c:if test="${company != carrier}">
														<option>${carrier}</option>
													</c:if>
												</c:forEach>
											</select>
											<input name="phone1" value="${snum}" maxlength="3"
												oninput="movePhoneBox()" required>
											<input name="phone2" value="${mnum}" maxlength="4"
												oninput="movePhoneBox()" required>
											<input name="phone3" value="${fnum}" maxlength="4"
												oninput="movePhoneBox()" required>
										</c:if> <c:if test="${empty dto}">
											<select name="mobile_carrier">
												<c:forEach var="carrier" items="${mobileCarrierList}">
													<option>${carrier}</option>
												</c:forEach>
											</select>
											<input class="phone" name="phone1" maxlength="3"
												oninput="movePhoneBox()" required>
											<input class="phone" name="phone2" maxlength="4"
												oninput="movePhoneBox()" required>
											<input class="phone" name="phone3" maxlength="4"
												oninput="movePhoneBox()" required>
										</c:if></td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td><c:if test="${!empty dto}">
											<input class="email_input" type="text" name="email"
												value="${dto.getMember_email()}">
										</c:if> <c:if test="${empty dto}">
											<input class="email_input" type="text" name="email">
										</c:if></td>
								</tr>
							</tbody>
						</table>

						<div class="inquiry_scroll_title">
							<h4>개인정보 수집에 대한 동의</h4>
							<div>
								<p>문의를 통해 아래의 개인정보를 수집합니다. 수집된 개인정보는 문의 외 목적으로 사용하지 않습니다.</p>
							</div>
						</div>

						<div class="text_scroll">
							<p>
								개인정보의 수집목적 및 항목<br> ① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련
							</p>
							<p>
								의사소통 경로 확보<br>② 수집 항목<br> *필수입력사항<br> -이용자 식별을 위한
							</p>
							<p>항목 : 성명, 연락처, 이메일, 아이디(로그인 시 수집)</p>
							<br> <br> <span class="span_red">개인정보의 보유 및 이용기간<br>
								입력하신 개인정보는 소비자 보호에 관한 법률 등 관계 법률에 의해 다음과 같이 보유합니다.<br> 보유기간
								: 문의접수 후 처리 완료시점으로 부터 3년
							</span><br> <br>
							<p>※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을
								경우 서비스 이용이 제한됩니다.</p>
						</div>
						<div class="inquiry_radio_box">
							<input type="radio" name="rdo_agreement" id="rdo_agree"><label
								for="rdo_agree">동의</label> <input type="radio"
								name="rdo_agreement" id="rdo_disagree"><label
								for="rdo_disagree">동의하지 않음</label>
						</div>
						<div class="inquiry_bth">
							<input type="reset" value="취소"> <input type="submit"
								value="확인">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- inquiry end  -->
	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>
