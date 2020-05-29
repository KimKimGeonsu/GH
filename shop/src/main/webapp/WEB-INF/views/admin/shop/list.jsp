<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<table border="1">
		<tr>
			<th>상품ID</th>
			<th>상품이미지</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<td>
				${row.PD_NO}
			</td>
			<td>
				<a>
					<img src="shopImg/${row.PD_IMG}" width="120ox" height="110px">
				</a>
			</td>
			<td align="center"><a href="shop.admin/${row.PD_NO}">${row.PD_NAME }</a>				
			</td>
			<td>
				<fmt:formatNumber value="${row.PD_PRICE}" pattern="###,###,###"/>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>