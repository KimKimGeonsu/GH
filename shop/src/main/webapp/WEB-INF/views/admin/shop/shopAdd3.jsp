<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="resources/ckeditor/ckeditor.js"></script>
<jsp:include page="/WEB-INF/views/admin/include_admin/head.jsp"/>
<!-- Bootstrap core JavaScript-->
  <script src="ad/vendor/jquery/jquery.min.js"></script>
  <script src="ad/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="ad/vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="ad/js/sb-admin-2.min.js"></script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    	<!-- 사이드바 -->
	<!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      
	  <jsp:include page="/WEB-INF/views/admin/include_admin/side_A.jsp"/>
	  <!--  <li class="nav-item active">
			<a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
			<div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar" style="">
			<a class="collapse-item active" href="blank.html">Blank Page</a> -->
	  
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>상품관리</span>
        </a>
        <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar" style="">
          <div class="bg-white py-2 collapse-inner rounded">           
            <a class="collapse-item active" href="shopAdd.admin">상품등록</a>
            <a class="collapse-item" href="shopList.admin">리스트</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>
      
       <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>판매관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
          </div>
        </div>
      </li>
      
       <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>배너관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li>
     

      <!-- Nav Item - Charts -->
      <jsp:include page="/WEB-INF/views/admin/include_admin/side_B.jsp"/>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- 헤더부분 -->
		<jsp:include page="/WEB-INF/views/admin/include_admin/header.jsp"/>
		
		<!-- 요기 -->
        <!-- Begin Page Content -->
        <div class="container-fluid">
					<div class="container-fluid">
					<!-- divnanner -->				
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
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

		  <!-- 푸터 -->
		     <jsp:include page="/WEB-INF/views/admin/include_admin/footer.jsp"/>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
  <jsp:include page="/WEB-INF/views/admin/include_admin/scrolltop.jsp"/>
    
  

</body>

</html>
