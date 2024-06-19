<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라떼씨네마</title>
</head>
<body>
	<c:import url="header" />

	<main class="area_main">
		<div class="area">
			<div class="area_h3">
				<h3 class="">${loc }</h3>
			</div>
			<div class="area_Balloon">
				<div class="area_Balloon_img"></div>
				<div class="">
					<div class="area_Balloon_tit"
						style="background: url('images/movie_image/5/poster.png') no-repeat; background-size: 130px 200px; background-position: 300px">
						<div class="area_Balloon_span">
							<strong>${loc }</strong>에서 <br> <span>퓨리오사: 매드맥스 사가</span><br>
							어떠세요 ?
						</div>
					</div>
				</div>
			</div>

			<div class="area_dl_list">
				<dl class="area_dl">
					<dt>총 상영관 수</dt>
					<dd>7개관</dd>
					<dt>총 좌석수</dt>
					<dd>1,397석</dd>
					<dd class="">충청남도 천안시 서북구 불당22대로 92 7층</dd>
				</dl>
			</div>

			<ul class="area_Public_transport">
				<li>
					<button class="area_modal_btn1">대중교통 안내</button>
				</li>
				<li>
					<button class="area_modal_btn2">자가용/주차안내</button>
				</li>
				<li>
					<button class="area_modal_btn3">지도보기</button>
				</li>
			</ul>


			<!-- 대중교통모달  -->
			<div class="area_header_modal1">
				<div class="area_header_modal_popup">
					<div class="area_header_modal_popup_content">
						<h5>버스로 오시는 길</h5>
						<p>롯데시네마 ${loc }은/는 3,21,90 은 시청 앞 사거리에서 하차,도보 5분 이동이며,</p>
						<p>990,1 은 불당상업지구 혹은 서울대정병원에서 하차하여 도보 3분 이동하여 정석프라자 4차 7층에 위치해
							있습니다.</p>
					</div>
				</div>
			</div>
			<!-- 대중교통 end -->

			<!-- 자가모달  -->
			<div class="area_header_modal2">
				<div class="area_header_modal_popup">
					<div class="area_header_modal_popup_content">
						<h5>자가용으로 오시는 길</h5>
						<p>충청남도 천안시 서북구 불당22대로 92 7층</p>
						<br>
						<ul>
							<li>영화 관람 후 지하주차장 엘리베이터 홀에 설치된 사전무인정산기에 차량 번호 입력 후</li>
							<li>지류티켓 하단의 주차권 바코드 또는 바로티켓/스마트티켓 왼쪽 상단에 있는 '주차권' 클릭 후</li>
							<li>바코드를 인식하시면 3시간 무료 주차 가능합니다.</li>
							<li>(회차 시간 포함이며, 1분이라도 초과 시 요금이 부과됩니다.)</li>
							<li>영화 관람 전 할인 등록, 출구 정산기 이용 시 요금이 부과될 수 있으며, 환불이 불가합니다.</li>
							<li>주차 미등록 후 결제 시에도 환불이 불가하오니, 유의하여 주시기 바랍니다.</li>
						</ul>

					</div>
				</div>
			</div>
			<!-- 자다모달 end -->

			<!-- 지도모달  -->
			<div class="area_header_modal3">
				<div class="area_header_modal_popup">
					<div class="area_header_modal_popup_content">
						<h5>지도보기</h5>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d1342.9685783874609!2d127.10845234292772!3d36.815270978814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z7LKc7JWI7Lu07ZOo7YSw7ZWZ7JuQLVNCU-yVhOy5tOuNsOuvuOy7tO2TqO2EsOyVhO2KuO2VmeybkA!5e0!3m2!1sko!2skr!4v1718324508035!5m2!1sko!2skr"
							style="border: 0; width: 100%; height: 450px;"></iframe>
					</div>
				</div>
			</div>
			<!-- 지도모달 end -->



			<div class="area_Timetable">
				<button class="area_Timetable_time">
					<span>상영시간표</span>
				</button>
				<button class="area_Timetable_price">
					<span>요금안내</span>
				</button>
			</div>

			<div class="area_price_list">
				<div class="area_price_box">
					<button class="tab_tit" data-target=".tab_con_ty2">일반관</button>
					<button class="tab_tit" data-target=".tab_con_ty3">스페셜관</button>
				</div>


				<div class="tab_con_ty2">
					<!-- 전체tab -->

					<div class="th_price_tit">
						<h5 class="tit">2D 일반석</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>


					<table class="th_price_table">
						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>

						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>10,000</td>
								<td>8,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>11,000</td>
								<td>8,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>14,000</td>
								<td>11,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>12,000</td>
								<td>9,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>13,000</td>
								<td>10,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>


					<div class="th_price_tit">
						<h5 class="tit">2D cineFamily</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">

						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>

					<div class="th_price_tit">
						<h5 class="tit">3D</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">
						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>12,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>13,000</td>
								<td>11,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>16,000</td>
								<td>13,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>17,000</td>
								<td>14,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>14,000</td>
								<td>11,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>

					<div class="th_price_tit">
						<h5 class="tit">3D cineFamily</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">
						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>30,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>25,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div class="tab_con_ty3">
					<div class="th_price_tit">
						<h5 class="tit">2D 씨네컴포트(리클라이너)</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">
						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>11,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>12,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>16,000</td>
								<td>13,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>13,000</td>
								<td>10,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>14,000</td>
								<td>11,000</td>
								<td>8,000</td>
								<td>6,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<div class="th_price_tit">
						<h5 class="tit">2D 일반석</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">

						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>10,000</td>
								<td>8,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>11,000</td>
								<td>8,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>14,000</td>
								<td>11,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>12,000</td>
								<td>9,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>13,000</td>
								<td>10,000</td>
								<td>7,000</td>
								<td>5,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>

					<div class="th_price_tit">
						<h5 class="tit">3D</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">

						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>12,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>13,000</td>
								<td>11,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>16,000</td>
								<td>13,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>17,000</td>
								<td>14,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>14,000</td>
								<td>11,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>9,000</td>
								<td>8,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>

					<div class="th_price_tit">
						<h5 class="tit">3D 씨네컴포트(리클라이너)</h5>
						<p>단, 공휴일은 주말요금 반영</p>
					</div>
					<table class="th_price_table">
						<thead>
							<tr>
								<th colspan="7">주중<span>(월~목)</span></th>
								<th colspan="7">주말<span>(금~일)</span></th>
							</tr>
						</thead>
						<tbody>
							<tr class="price_tabletoptitle">
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
								<th class="txtleft">구분</th>
								<th>성인</th>
								<th>청소년</th>
								<th>경로</th>
								<th>장애인</th>
								<th>어린이</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<th>조조</th>
								<td>13,000</td>
								<td>11,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>조조</th>
								<td>14,000</td>
								<td>12,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>일반</th>
								<td>17,000</td>
								<td>14,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>일반</th>
								<td>18,000</td>
								<td>15,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>심야</th>
								<td>15,000</td>
								<td>12,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
								<th>심야</th>
								<td>16,000</td>
								<td>13,000</td>
								<td>10,000</td>
								<td>9,000</td>
								<td>-</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!--공시사항 리스트 -->
				<div class="th_price_info_wrap">
					<div class="bx_para">
						<strong class="tit">[각 시간대별 기준]</strong>
						<ul class="list_txt">
							<li>조조 : ~ 10시 00분 까지</li>
							<li>일반 : 10시 01분 ~ 종료 시 까지</li>
						</ul>
						<br> <br> <strong class="tit">[요일 구분 기준]</strong>
						<ul class="list_txt">
							<li>주중 : 월~목</li>
							<li>주말 : 금~일(단, 공휴일은 주말요금 적용)</li>
						</ul>
						<br> <br> <strong class="tit">[청소년 할인]</strong>
						<ul class="list_txt">
							<li>만 4세이상~만 19세미만의 초ㆍ중ㆍ고등학생(청소년증 소지자) 및 미취학아동</li>
						</ul>
						<br> <br> <strong class="tit">[경로/장애 우대할인]</strong>
						<ul class="list_txt">
							<li>경로 : 만 65세 이상 고객(반드시 본인의 신분증 지참)</li>
							<li>현장에서 복지카드를 소지한 장애인(장애의 정도가 심한 장애인 : 동반 1인까지 적용(기존 1~3등급)
								/ 장애의 정도가 심하지 않은 장애인 : 본인에 한함(기존 4~6등급)</li>
						</ul>
						<br> <br> <strong class="tit">[기타 안내]</strong>
						<ul class="list_txt">
							<li>ATMOS 컨텐츠 상영시 1천원 추가요금이 책정됩니다.</li>
							<li>일부 스페셜관의 경우 장애 우대할인, 경로 우대할인이 적용되지 않습니다.</li>
							<li>48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료관람
								가능합니다.</li>
						</ul>
						<br> <br>

					</div>
				</div>
			</div>
			<!-- 공지사항 리스트 end -->
		</div>

		<div class="Calendar_table">
			<div class="Calendar_tit"></div>
		</div>

		<div class="Timetable_table">
			<div class="age_table"></div>

			<div class="age_tit">
				<span class="txt_grade">전체 관람가</span> <span class="txt_grade">만12세
					이상 관람가</span> <span class="txt_grade">만 15세 이상 관람가</span> <span
					class="txt_grade">청소년 관람불가</span>
			</div>

			<div class="Timetable_tit">
				<h5>원더랜드</h5>
				<p>2D 씨네컴포트(리클라이너)</p>
			</div>

			<dl class="cinema_cilck_box" onclick="location.href=''">
				<dd class="time">
					<strong>20:00</strong>
				</dd>
				<dd class="seat">
					<strong>0/ 60</strong>
				</dd>
				<dd class="hall">x관</dd>
			</dl>
		</div>
	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>