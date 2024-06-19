<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Latte Cinema</title>
</head>
<body>


	<c:import url="header" />
	
	<main class="signup">
		<div class="main-container">
			<h2>개인정보변경</h2>

			<div class="signup-title">
				<h4>비밀번호 변경</h4>
			</div>

			<form method="post" action="changeokpassword" name="myForm" onsubmit="return validatePwd1()">
				<ul class="signup-content">

					<li><label><em>*</em><span>현재 비밀번호</span><input
							type="password" name="pwd_now" placeholder="현재 비밀번호를 입력해주세요." required></label></li>
							
					<li><label><em>*</em><span>새로운 비밀번호</span><input
							type="password" name="pwd" placeholder="변경하실 비밀번호를 입력해주세요." required></label></li>
					<li><label><em>*</em><span>비밀번호 확인</span><input
							type="password" name="pwd_check"
							placeholder="입력하신 비밀번호를 다시 한번 입력해주세요." required></label></li>
					
				</ul>

				<div class="signup-button">
					<input type="reset" value="취소">
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		</main>
	
	
	<jsp:include page="/WEB-INF/include/footer.jsp" />

</body>
</html>