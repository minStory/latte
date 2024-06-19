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
				<h4>비밀번호 확인</h4>
			</div>

			<form method="post" action="ckpwd" name="myForm">
				<ul class="signup-content">

					<li><label><em>*</em><span>비밀번호</span><input
							type="password" name="pwd" placeholder="비밀번호를 입력해주세요." required></label></li>
			
				</ul>

				<div class="signup-button">
					<input type="reset" value="취소" onclick="history.back()"> 
					<input type="submit" value="확인" >
				</div>
			</form>
		</div>
		</main>
	
	<jsp:include page="/WEB-INF/include/footer.jsp" />

</body>
</html>