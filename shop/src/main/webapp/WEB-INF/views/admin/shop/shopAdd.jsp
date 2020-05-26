<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../../include_main/header_css.jsp" />
<script src="resources/ckeditor/ckeditor.js"></script>
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107">
			<!-- divnanner -->
			<div class="container">
				<form role="form" method="post" autocomplete="off" action="shopAdd.admin" enctype="multipart/form-data">
				
				<div class="inputArea">
						<label for="gdsImg">대표이미지</label> <input type="file" id="MAIN_IMG"
							name="MAIN_IMG" />
					</div>
					<div class="inputArea">
						<label>1차 분류</label> <select class="category1" name="PD_CATEGORY_NO">
							<option value="">전체</option>
							<option value="100">상의</option>
							<option value="상의">하의</option>
						</select> <label>2차 분류</label> <select class="category2" name="cateCode">
							<option value="">전체</option>
						</select>
					</div>

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

		<jsp:include page="../../include_main/footer.jsp" />

	</div>
	<!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>