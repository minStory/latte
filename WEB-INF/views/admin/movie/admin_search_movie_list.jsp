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
	<div class="admin-search-notice-box">
		<div class="admin">

			<!--3-->
			<div class="admin-search-quick">
				<form method="post" action="admin_notice_board_search">
					<select name="notice_field">
						<option value="search_title">제목</option>
						<option value="search_cont">내용</option>
						<option value="search_title_cont">제목+내용</option>
					</select> <input type="text" name="notice_keyword" placeholder="검색어를 입력해주세요">
					<input type="submit" value="검색">
				</form>
			</div>

			<div class="admin-notice-table">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>구분</th>
							<th>제목</th>
							<th>등록일</th>
							<th colspan="2">비고</th>
						</tr>
					</thead>
					<c:if test="${!empty searchNoticeList }">
						<tbody>
							<c:forEach var="s" begin="0" end="${searchNoticeList.size() -1 }">
								<tr>
									<td>${searchNoticeList.get(s).getNotice_board_no() }</td>
									<td>전체</td>
									<td><button
											onclick="location.href='notice_content?no=${searchNoticeList.get(s).getNotice_board_no()}'">${searchNoticeList.get(s).getNotice_board_title() }</button></td>
									<td><c:if
											test="${empty searchNoticeList.get(s).getNotice_board_updated_date() }">
							${searchNoticeList.get(s).getNotice_board_created_date() }
						</c:if> <c:if
											test="${!empty searchNoticeList.get(s).getNotice_board_updated_date() }">
							${searchNoticeList.get(s).getNotice_board_updated_date() }
						</c:if></td>
									<td><button
											onclick="location.href='admin_delete_notice_ok?noticeNo=${searchNoticeList.get(s).getNotice_board_no()}'">삭제</button></td>
									<td><button
											onclick="location.href='admin_modify_notice?noticeNo=${searchNoticeList.get(s).getNotice_board_no()}'">수정</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</c:if>
				</table>
				<c:if test="${empty searchNoticeList }">
						<h3>검색결과가 없습니다.</h3>
					</c:if>
				<c:if test="${!empty searchNoticeList }">
				<div class="admin-notice-table-btn">
					<a href="admin_main?page=1">first</a><a
						href="admin_main?page=${page - 1 }">previous</a>
					<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
						<a href="admin_main?page=${i}">${i}</a>
					</c:forEach>
					<c:if test="${endBlock < allPage }">
						<a href="admin_main?page=${page + 1 }">next</a>
						<a href="admin_main?page=${allPage }">last</a>
					</c:if>
				</div>
				</c:if>
			</div>

		</div>
	</div>
	<!--notice end  -->
	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>