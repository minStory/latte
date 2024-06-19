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
		<form action="admin_modify_notice_ok" method="post">
			<input type="hidden" name="no" value="${notice.getNotice_board_no() }">
			<div class="notice-specific-zone">
				<h3>관리자 공지사항 수정 페이지</h3>
				<h4><input type="text" name="title" value="${notice.getNotice_board_title() }"></h4>
				
				<div class="notice-specific-zone-top">
					<span>영화관 | <b>전체</b></span>
					<span>작성자 id | <b><input type="text" name="writerid"
						value="${dto.getAdmin_id() }" readonly></b></span>
					<span>작성자 no | <b><input type="text" name="writerno"
						value="${dto.getAdmin_no() }" readonly></b></span>
				</div>
				<div class="admin-notice-specific-zone-middle">
					<textarea rows="15" cols="140"name="content" >${notice.getNotice_board_content() }</textarea>
				</div>
				<div  class="admin-notice-specific-zone-bottom">
					<input type="submit" value="글쓰기">&nbsp;&nbsp;
					<input type="reset" value="초기화">
				</div>
			</div>
		</form>
		</main>
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>