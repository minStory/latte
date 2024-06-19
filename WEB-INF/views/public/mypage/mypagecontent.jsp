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

	<div align="center" class="mypage_content">
		<h3>1:1문의 상세 내역</h3>
		<form method="post" action="mypage_content_ok"
			enctype="multipart/form-data">
			<c:set var="dto" value="${InquiryContent }" />

			<input type="hidden" name="history_no"
				value="${dto.getInquiry_history_no() }">

			<table class="mypage_content_table">
				<colgroup>
					<col style="width: 15%;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="req">제목</th>
						<td>
							<div>
								<input type="text" name="title" readonly class="content_title"
									value="${dto.getInquiry_history_title() }">
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row" class="req">내용</th>
						<td>
							<div class="content_textarea_box">
								<textarea rows="7" cols="25" name="content" readonly
									class="content_box">${dto.getInquiry_history_content() }</textarea>
							</div>
						</td>
					</tr>

					<tr>
						<th scope="row">첨부파일</th>

						<td>
							<div>
								<c:choose>
									<c:when test="${empty dto.inquiry_history_file}">
						                파일 없음
						            </c:when>
									<c:otherwise>
										<a href="images/customer_inquiry/${dto.inquiry_history_file}"
											target="_blank">${dto.inquiry_history_file}</a>
									</c:otherwise>
								</c:choose>
							</div>

						</td>
					</tr>
				</tbody>
			</table>

			<div class="content_end_box">
				<input type="button" value="삭제"
					onclick="location.href ='inquiry_delete?no=${dto.getInquiry_history_no() }'">
				<input type="button" value="목록보기"
					onclick="location.href ='mypage?inquiry'">
			</div>
		</form>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>