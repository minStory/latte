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
				<h4>내 정보 변경</h4>
			</div>

			<form method="post" action="changeinfoOkaction" name="myForm" onsubmit="return validatePwd()">
				
				<ul class="signup-content">
						
					<li><label><em>*</em><span>아이디</span><input type="text" name="id" value="${dto.getMember_id() }" readonly></label></li>
					<li><label><em>*</em><span>이름</span><input type="text" name="name" value="${dto.getMember_name() }" required></label></li>
					<li><label><em>*</em><span>이메일주소</span><input type="text" name="email" value="${dto.getMember_email() }" required></label></li>
					
					<li class="signup-content-phone"><label><em>*</em><span>휴대폰번호</span>
							<select name="mobile_carrier">
								<option>${com }</option>
								<c:forEach var="i" begin="0" end="${mobileCarrierList.size() - 1 }">
								<c:if test="${mobileCarrierList.get(i) != com }">
									<option>${mobileCarrierList.get(i) }</option>
								</c:if>
								</c:forEach>
						</select>
						<input type="text" name="phone1" value="${snum }" required>-
						<input type="text" name="phone2" value="${mnum }" required>-
						<input type="text"name="phone3" value="${fnum }" required></label></li>
				</ul>

				<div class="signup-button">
					<input type="reset" value="취소" onclick="history.back()">
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		</main>
	
	<jsp:include page="/WEB-INF/include/footer.jsp" />

</body>
</html>