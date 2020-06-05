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
  <style type="text/css">
  body{
    background: -webkit-linear-gradient(left, #0072ff, #00c6ff);
}
.contact-form{
    background: #fff;
    margin-top: 5%;
    margin-bottom: 5%;
    width: 70%;
}
.contact-form .form-control{
    border-radius:1rem;
}
.contact-image{
    text-align: center;
}
.contact-image img{
    border-radius: 6rem;
    width: 11%;
    margin-top: -3%;
    transform: rotate(29deg);
}
.contact-form form{
    padding: 14%;
}
.contact-form form .row{
    margin-bottom: -7%;
}
.contact-form h3{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #0062cc;
}
.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}
.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}
  
  </style>
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
					<div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <!-- <div class="col-md-6"> -->
            <form method="post">
                <h3>상품 등록하기</h3>
               <!-- <div class="row"> -->                    
                        <div class="form-group">
                            <input type="file" class="form-control" placeholder="대표이미지"/>
                        </div>  
                        <div class="form-group">                
		                        <label>1차 분류</label> 
		                        <select class="category1" name="PD_CATEGORY_NO" id="PD_CATEGORY_NO">
		                        	<option value="">전체</option>
								</select> 
								 <label>2차 분류</label> 
							 	<select class="category2" name="PD_SUB_CATEGORY_NO" id="PD_SUB_CATEGORY_NO">
									<option value="">전체</option>
								</select>
						</div>
			<div class="form-group">
				<div class="row">		
					<div class="col-md-4">
						<div class="form-group">
						<p>색상</p>
                            <input type="checkbox">빨
                            <input type="checkbox">주
                            <input type="checkbox">노
                            <input type="checkbox">초
                            <input type="checkbox">파
                            <input type="checkbox">파
                            <input type="checkbox">파
                            <input type="checkbox">파
                            <input type="checkbox">파
                            <input type="checkbox">단일
                        </div>
                        
                        <div class="form-group">
                        <p>사이즈</p>
                            <input type="checkbox">S
                            <input type="checkbox">M
                            <input type="checkbox">L
                            <input type="checkbox">XL                            
                        </div>
                        
                        <div class="form-group">
                        <button class="btn">추가</button>
                        </div>
                   </div>
                   
                   <div class="col-md-8">
                   <table class="table">
                    <tr>
                   	   <th>색상</th>
                   	   <th>사이즈</th>
                   	   <th>수량</th>	
                  	</tr>
                  	<tr>
						    <td>첫번째 칸</td>
						    <td>두번째 칸</td>
						    <td><input type="text" size="5"></td>
					</tr>
					<tr>
						    <td>첫번째 칸</td>
						    <td>두번째 칸</td>
						    <td><input type="text" size="5"></td>
					</tr>
					<tr>
						    <td>첫번째 칸</td>
						    <td>두번째 칸</td>
						    <td><input type="text" size="5"></td>
					</tr>
					<tr>
						    <td>첫번째 칸</td>
						    <td>두번째 칸</td>
						    <td><input type="text" size="5"></td>
					</tr>
					
                   </table>                   
                   </div>
                   
                   
                 </div>
             </div>     
             			<br><br> 
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="상품명"/>
                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control" placeholder="가격"/>
                        </div>                                               
                          <div class="form-group">
                            <textarea name="PD_INFO" id="PD_INFO" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
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
					
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                    	
                    <!-- </div> -->
				
              
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
