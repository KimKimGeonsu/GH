<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../../include_main/header_css.jsp" />
<head>
<style type="text/css">
 .list-group {
     
     margin:auto;
     float:left;
     padding-top:20px;
    }
    .lead {
     
     margin:auto;
     left:0;
     right:0;
     padding-top:10%;
    }
    
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $('.list-group-item').click(function(e) {
	    //e.preventDefault();
	    $('.list-group-item').removeClass('active');
	    $(this).addClass('active');
	  });
	});
</script>
</head>
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
			<div class="list-group">			   
			    <a href="shopAdd.admin" class="list-group-item active"><i class="fa fa-key"></i> <span>상품등록</span></a>
			    <a href="shopList.admin" class="list-group-item"><i class="fa fa-credit-card"></i> <span>상품리스트</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-question-circle"></i> <span>Support</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-arrow-circle-o-left"></i> <span>Sandbox Account</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-book"></i> <span>QuickStart Overview</span></a>
			    <a href="selectAll.admin" class="list-group-item"><i class="fa fa-compass"></i> <span>회원관리</span></a>						
			  </div>
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
		
		
		         
            </div><!-- divbannerEnd -->

		<jsp:include page="../../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>