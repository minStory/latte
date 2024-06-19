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
		<main class="admin_main">
			<div class="admin_member_specific">
				<table>
					<thead>
						<tr>
							<th>맴버번호</th>
							<th>맴버 아이디</th>
							<th>맴버 페스워드</th>
							<th>멤버 이름</th>
							<th>멤버 전화번호</th>
							<th>멤버 이메일</th>
							<th>멤버 마일리지</th>
							<th>멤버 등급</th>
							<th>멤버 가입일</th>
						</tr> 
					</thead>
					<tbody>
						<tr>
							<td>${memberSpecific.getMember_no() }</td>
							<td>${memberSpecific.getMember_id() }</td>
							<td>${memberSpecific.getMember_pwd() }</td>
							<td>${memberSpecific.getMember_name() }</td>
							<td>${memberSpecific.getMember_phone() }</td>
							<td>${memberSpecific.getMember_email() }</td>
							<td>${memberSpecific.getMember_mileage() }</td>
							<td>${memberSpecific.getMember_grade() }</td>
							<td>${memberSpecific.getMember_signup_date() }</td>
						</tr>
					</tbody>
				</table>
			</div>
		</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>