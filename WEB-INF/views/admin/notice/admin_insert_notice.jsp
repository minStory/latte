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
		<main class="customer_main">
		<form action="<%=request.getContextPath() %>/admin_insert_notice_ok" method="post">
			<div class="notice-specific-zone">
				<h3>관리자 공지사항 추가 페이지</h3>
				<h4><input type="text" name="board_title" placeholder="제목을 입력하세요"></h4>
				
				<div class="notice-specific-zone-top">
					<span>영화관 | <b>전체</b></span>
					<span>작성자 id | <b><input type="text" name="board_writer_id"
						value="${dto.getAdmin_id() }" readonly></b></span>
					<span>작성자 no | <b><input type="text" name="board_writer_no"
						value="${dto.getAdmin_no() }" readonly></b></span>
				</div>
				<div class="admin-notice-specific-zone-middle">
					<textarea rows="15" cols="140"name="board_content" placeholder="글을 작성해주세요" ></textarea>
				</div>
				<c:set var="p" value="${notice.getNotice_board_no() }" />
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