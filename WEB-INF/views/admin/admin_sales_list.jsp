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
		
	<div align="center">
	<h1>월별 매출</h1>
	    <table border="1">
	        <thead>
	            <tr>
	                <th>월</th>
	                <th>총 매출 금액</th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="totalSales" items="${monthlyTotalSales}" varStatus="status">
	                <tr>
	                    <td>${status.index + 1}월</td>
	                    <td>${totalSales}원</td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
		<p>총 매출 금액: ${totalSalesAmount}원</p>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>