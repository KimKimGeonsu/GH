<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>

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
	  
	 $.ajax({
				url:"ajaxlist.admin",
				type:"POST",
				data:{},
				dataType:"html",														
				success:function(result){
																										
					console.log(result);
					$("#ajaxpage").append(result);
				},error:function(){
					
				}
			}); 
	 
	 
	 
	 //버튼
		$("#selectcate").find($("label>input[type=checkbox]")).click(function() {
			console.log($(this).val());
		});

	 
	 
	  
	});//onload
	

	

	

	
</script>
</head>
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
			<div class="list-group">			   
			    <a href="shopList.admin" class="list-group-item active"><i class="fa fa-key"></i> <span>상픔리스트</span></a>
			    <a href="shopAdd.admin" class="list-group-item"><i class="fa fa-credit-card"></i> <span>상품등록</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-question-circle"></i> <span>Support</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-arrow-circle-o-left"></i> <span>Sandbox Account</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-book"></i> <span>QuickStart Overview</span></a>
			    <a href="selectAll.admin" class="list-group-item"><i class="fa fa-compass"></i> <span>회원관리</span></a>						
			  </div>
			  <div>
			  <button id="buttt">뭔데</button>
			  </div>

			  
			  <div id="selectcate" class="container">
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="100">상의
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="200">하의
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="300">겉옷
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="400">신발
				</label>				
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="101">반팔
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="102">긴팔
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="103">맨투맨/후드
				</label>
				<br>
								
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="301">자켓
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="302">코트/블레이저
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="303">가디건/조끼
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="304">패딩
				</label>
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="201">반바지
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="202">슬랙스
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="203">청바지
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="204">면바지
				</label>
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="401">운동화/스니커즈
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="402">구두/로퍼
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="inlineCheckbox3" value="403">샌들/슬리퍼
				</label>				
				<br>
				
				</div>
				
				
			  
			  <div id="ajaxpage"><!-- ajax -->
	
			</div>
		
		         
            </div><!-- divbannerEnd -->

		<jsp:include page="../../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>