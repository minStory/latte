<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<c:import url="header" />

	<main class="signup">
		<div class="main-container">
			<h2>회원가입</h2>

			<div class="signup-title">
				<h4>회원 정보 입력</h4>
			</div>

			<form method="post" action="signup_ok" name="myForm"
				onsubmit="return validate()">
				<ul class="signup-content">
					<li><label><em>*</em><span>아이디</span><input
							type="text" class="id" name="id" placeholder="아이디를 입력해주세요."
							required>
							<button type="button" class="duplicate">중복확인</button> <span
							class="id-text"></span></label></li>
					<li><label><em>*</em><span>이름</span><input type="text"
							class="name" name="name" placeholder="한글 또는 영문으로 입력해주세요."
							required></label></li>
					<li><label><em>*</em><span>이메일주소</span><input
							type="text" name="email" placeholder="이메일주소를 입력해주세요." required></label></li>
					<li><label><em>*</em><span>비밀번호</span><input
							type="password" class="pwd" name="pwd"
							placeholder="비밀번호를 입력해주세요." required><span
							class="pwd-text1"></span></label></li>
					<li><label><em>*</em><span>비밀번호 확인</span><input
							type="password" class="pwd_check" name="pwd_check"
							placeholder="비밀번호를 다시 한 번 입력해주세요." required><span
							class="pwd-text2"></span></label></li>
					<li class="signup-content-phone"><label><em>*</em><span>휴대폰번호</span>
							<select name="mobile_carrier">
								<option>LGU+</option>
								<option>SKT</option>
								<option>KT</option>
						</select><input type="text" class="phone" name="phone1"
							oninput="movePhoneBox()" maxlength="3" required>-<input
							type="text" class="phone" name="phone2" oninput="movePhoneBox()"
							maxlength="4" required>-<input type="text" class="phone"
							name="phone3" oninput="movePhoneBox()" maxlength="4" required></label></li>
				</ul>

				<div class="signup-button">
					<input type="reset" value="취소"> <input type="submit"
						value="가입">
				</div>
			</form>
		</div>
	</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>