<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../../include_main/header_css.jsp" />
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
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
			<td align="center">
				${row.PD_NAME }
			</td>
			<td>
				<fmt:formatNumber value="${row.PD_PRICE}" pattern="###,###,###"/>
			</td>
		</tr>
		</c:forEach>
	</table>
		
		
		         
            </div><!-- divbannerEnd -->

		<jsp:include page="../../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>