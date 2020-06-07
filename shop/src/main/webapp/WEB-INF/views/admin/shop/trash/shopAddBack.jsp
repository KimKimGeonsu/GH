<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<%-- <jsp:include page="../../include_main/header_css.jsp" /> --%>
<script src="resources/ckeditor/ckeditor.js"></script>
<body>

	<div class="wrapper">
		<%-- <jsp:include page="../../include_main/header.jsp" /> --%>
		<div class="banner-area hm1-banner pt-130 pb-107">
			<!-- divnanner -->
			<div class="container">
				<form role="form" method="post" autocomplete="off" action="shopAdd.admin" enctype="multipart/form-data">
				
				<div class="inputArea">
						<label for="gdsImg">대표이미지</label> <input type="file" id="MAIN_IMG"
							name="MAIN_IMG" accept="image/gif,image/jpeg,image/png" onchange="fileTypeCheck(this)"/>
					</div>
					<div class="inputArea">
						<label>1차 분류</label> <select class="category1" name="PD_CATEGORY_NO" id="PD_CATEGORY_NO">
						</select> 
					 <label>2차 분류</label> <select class="category2" name="PD_SUB_CATEGORY_NO" id="PD_SUB_CATEGORY_NO">
							<!-- <option value="">전체</option> -->
						</select>
					</div>
						<script type="text/javascript">
						
						$.ajax({
							url:"cate.admin",
							type:"POST",
							data:{cate: "1"},
							dataType:"json",														
							success:function(result){
								$("#PD_CATEGORY_NO").append("<option value=''>대분류</option>");
								 $.each(result,function(index,item){
									 $("#PD_CATEGORY_NO").append("<option value="+item.c_NO+">"+item.c_NAME+"</option>");
								 });																													
							},error:function(){
								alert('1차분류 오류');
							}
						}); 
						
					$("#PD_CATEGORY_NO").change(function() {					
						$("#PD_SUB_CATEGORY_NO").empty();	
						console.log($("#PD_CATEGORY_NO option:selected").val());
						 $.ajax({
							url:"cate.admin",
							type:"POST",
							data:{cate: $("#PD_CATEGORY_NO option:selected").val()},
							dataType:"json",														
							success:function(result){									
								 $.each(result,function(index,item){
									 $("#PD_SUB_CATEGORY_NO").append("<option value="+item.sc_NO+">"+item.sc_NAME+"</option>");
								 });																					
								
							},error:function(){
								alert('대분류를 정해주세요');
							}
						}); 
					});
					//유효성
					function fileTypeCheck(obj) {									
										pathpoint = obj.value.lastIndexOf('.');									
										filepoint = obj.value.substring(pathpoint+1,obj.length);									
										filetype = filepoint.toLowerCase();									
										if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {																										
										} else {									
											alert('이미지파일만 업로드가 가능합니다');									
											$("#MAIN_IMG").val("");								
											return false;			
										}
									
									}	
					</script>

					<div class="inputArea">
						<label for="gdsName">상품명</label> <input type="text" id="PD_NAME"
							name="PD_NAME" />
					</div>

					<div class="inputArea">
						<label for="gdsPrice">상품가격</label> <input type="number"
							id="PD_PRICE" name="PD_PRICE" />
					</div>

					<div class="inputArea">
						<label for="gdsStock">상품수량</label> <input type="number"
							id="PD_QUANTITY" name="PD_QUANTITY" />
					</div>

					<div class="inputArea">
						<label for="PD_INFO">상품소개</label>
						<textarea rows="5" cols="50" id="PD_INFO" name="PD_INFO"></textarea>
					</div>
					<script>
						 var ckeditor_config = {
						   resize_enaleb : false,
						   enterMode : CKEDITOR.ENTER_BR,
						   shiftEnterMode : CKEDITOR.ENTER_P,
						   filebrowserUploadUrl : "ckeditor.admin"
						 };
						 
						 CKEDITOR.replace("PD_INFO", ckeditor_config);
						</script>	

					<div class="inputArea">
						<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
					</div>

				</form>

			</div>
					
		</div>
		<!-- divbannerEnd -->
<%-- 
		<jsp:include page="../../include_main/footer.jsp" />

	</div>
	<!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />
 --%>
</body>
</html>