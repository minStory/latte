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
	<div class="company-container">
		<div class="headphoto">
			<div class="headphoto-textarea">
				<p>Leading Culture-makers</p>
				<h4>LATTE CULTUREWORKS</h4>
			</div>
		</div>
		<div class="business-area">
			<h4>Business Area</h4>
			<div class="ba">
				<div class="ba1">
					<div class="ba1-photo"></div>
					<ul>
						<li><strong>라떼시네마</strong></li>
						<li>
							<p>복합문화공간'컬처스퀘어(Culuture Square)'를 지향하며 관객들과</p>
							<p>함께 다양한 콘텐츠를 경험하고 소통과 교류를 통해 문화 콘텐츠를</p>
							<p>즐기며 새로운 트렌드를 형성해 나아가고 있습니다.</p>
						</li>
					</ul>
				</div>
				<div class="ba2">
					<div class="ba2-photo"></div>
					<ul>
						<li><strong>라떼엔터테인먼트</strong></li>
						<li>
							<p>창의적인 스토리텔링과 차별화된 라인업으로 관객들에게</p>
							<p>웃음과 감동을 선사하고 끊임없는 컨텐츠 개발로</p>
							<p>영화 산업의 생태계를 이끌어 가겠습니다.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="banner">
			<strong>Creating Shared Values</strong>
			<p>영화의 행복과 감동을 함께 나눕니다.</p>
		</div>
		<div class="subwrite">
			<strong>Latte Cultureworks PR Center</strong>
			<p>라떼시네마의 다양한 소식들을 전해드립니다.</p>
		</div>
		<div class="recruit">
			<strong>Recruit</strong>
			<p>21세기 영상산업을 선도하는 기업으로서 투명한 채용과 공정한 평가를 실시하여</p>
			<p>능력과 열정을 갖춘 인재를 모집합니다.</p>
			<div class="recruit-photo"></div>
			<a href="#">채용안내</a> <a href="#">채용공고</a>
		</div>
	</div>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>