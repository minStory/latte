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
	<div class="admininfo d adminpage-container">
		<div class="admin-view-member-table">
			<div class="admin-top-name-insert">
				<h3>가입 멤버 정보</h3>
			</div>
			<div class="admin-view-member-inside">
				<div class="admin-search-quick">
					<form method="post" action="admin_member_search">
						<select name="member_field">
							<option value="member_name">회원이름</option>
							<option value="member_id">아이디</option>
						</select> <input type="text" name="member_keyword"
							placeholder="검색어를 입력해주세요"> <input type="submit"
							value="검색">
					</form>
				</div>
				<table>
					<thead>
						<tr>
							<th>맴버번호</th>
							<th>맴버 아이디</th>
							<th>멤버 이름</th>
							<th>멤버 마일리지</th>
							<th>멤버 등급</th>
							<th>멤버 가입일</th>
							<th colspan="2">비고</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach begin="0" end="${searchMemberList.size()-1 }"
							var="m">
							<tr>
								<td>${searchMemberList.get(m).getMember_no() }</td>
								<td>${searchMemberList.get(m).getMember_id() }</td>
								<td><a href="admin_member_content?memberid=${searchMemberList.get(m).getMember_id() }">${searchMemberList.get(m).getMember_name() }</a></td>
								<td>${searchMemberList.get(m).getMember_mileage() }</td>
								<td>${searchMemberList.get(m).getMember_grade() }</td>
								<td>${searchMemberList.get(m).getMember_signup_date().substring(0,10) }</td>
								<td><button>삭제</button>
									<button>수정</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>