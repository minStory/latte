<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<c:import url="header" />

	<main class="login">
		<div class="main-container">
			<h2>로그인</h2>

			<div class="login-title">
				<h4>로그인 정보 입력</h4>
			</div>

			<form method="post" action="login_ok">
				<ul class="login-content">

					<li><label><span>아이디</span><input type="text"
							name="id" placeholder="아이디를 입력해주세요." required></label></li>
					<li><label><span>비밀번호</span><input type="password"
							name="pwd" placeholder="비밀번호를 입력해주세요." required></label></li>
				</ul>

				<div class="login-button">
					<input type="reset" value="취소"> <input type="submit"
						value="로그인">
				</div>
			</form>
		</div>
	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>