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
			<form action="admin_member_modify_ok" method="post">
				<div class="admin_member_specific">
					<table class="modifymembertable">
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
								<th></th>
							</tr> 
						</thead>
						<tbody>
							<tr>
								<td><input type="text" name="no" value="${mdmember.getMember_no() }" readonly></td>
								<td><input type="text" name="id" value="${mdmember.getMember_id() }" readonly></td>
								<td><input type="text" name="pwd" value="${mdmember.getMember_pwd() }"></td>
								<td><input type="text" name="name" value="${mdmember.getMember_name() }" readonly></td>
								<td><input type="text" name="phone" value="${mdmember.getMember_phone() }"></td>
								<td><input type="text" name="email" value="${mdmember.getMember_email() }"></td>
								<td><input type="text" name="mileage" value="${mdmember.getMember_mileage() }"></td>
								<td><input type="text" name="grade" value="${mdmember.getMember_grade() }" readonly></td>
								<td><input type="text" name="date" value="${mdmember.getMember_signup_date() }" readonly></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="수정"> 
									<input type="reset" value="다시작성">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>