<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../include_main/header_css.jsp" />
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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
	    e.preventDefault();
	    $('.list-group-item').removeClass('active');
	    $(this).addClass('active');
	  });
	});
</script>

</head>
<body>



	<div class="wrapper">
		<jsp:include page="../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
		 <div class="list-group">
   
    <a href="shopAdd.admin" class="list-group-item active"><i class="fa fa-key"></i> <span>상품등록</span></a>
    <a href="shopList.admin" class="list-group-item"><i class="fa fa-credit-card"></i> <span>상품리스트</span></a>
    <a href="selectAll.admin" class="list-group-item"><i class="fa fa-question-circle"></i> <span>Support</span></a>
    <a href="#" class="list-group-item"><i class="fa fa-arrow-circle-o-left"></i> <span>Sandbox Account</span></a>
    <a href="#" class="list-group-item"><i class="fa fa-book"></i> <span>QuickStart Overview</span></a>
    <a href="selectAll.admin" class="list-group-item"><i class="fa fa-compass"></i> <span>회원관리</span></a>


  </div>
		         
            </div><!-- divbannerEnd -->

		<jsp:include page="../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	
	
	
	
	
	<jsp:include page="../include_main/footer_js.jsp" />

</body>
</html>