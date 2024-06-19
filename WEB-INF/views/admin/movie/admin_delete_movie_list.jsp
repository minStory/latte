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
	<div align="center">
		<h3>현재 상영작</h3>
		<table border="1" width="600">
			<c:forEach var="i" begin="0" end="${NowList.size() -1 }">
				<thead>
					<tr>
						<th>${NowList.get(i).getMovie_title() }</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td onclick="location.href='admin_movie_delete_ok?MovieNo=${NowList.get(i).getMovie_no()}'">삭제</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
			<h3>상영 예정작</h3>
		<table border="1" width="600">
			<c:forEach var="l" begin="0" end="${PlanList.size() -1 }">
				<thead>
					<tr>
						<th>${PlanList.get(l).getMovie_title() }</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td onclick="location.href='admin_movie_delete_ok?MovieNo=${PlanList.get(i).getMovie_no()}'">삭제</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>