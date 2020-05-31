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
			<th>삭제</th>
		</tr>
		<c:forEach var="vo" items="${list}">
		<tr>
			<td>
				${vo.PD_NO}
			</td>
			<td>
				<a>
					<img src="shopImg/${vo.PD_IMG}" width="120ox" height="110px">
				</a>
			</td>
			<td align="center"><a href="shop.admin/${vo.PD_NO}">${vo.PD_NAME }</a>				
			</td>
			<td>
				<fmt:formatNumber value="${vo.PD_PRICE}" pattern="###,###,###"/>
			</td>
			<td align="center"><input type="button" value="삭제" style="color:black" class='btn' onclick="shopdelete('${vo.PD_NO}')"></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>