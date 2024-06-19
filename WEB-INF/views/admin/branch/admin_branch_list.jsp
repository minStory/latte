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

	<h3>admin_branch_list</h3>
	
	<button onclick="location.href='admin_insert_branch'">지점 추가</button>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>