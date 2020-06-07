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
            <a class="collapse-item" href="shopManager.admin">리스트/수정/삭제</a>
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
            <form method="post" autocomplete="off" action="shopAdd.admin" enctype="multipart/form-data" onsubmit="false">
                <h3>상품 등록하기</h3>
               <!-- <div class="row"> -->                    
                        <div class="form-group">
                            <input type="file" class="form-control" id="MAIN_IMG" name="MAIN_IMG" accept="image/gif,image/jpeg,image/png" 
                            placeholder="대표이미지"/>
                            <br>
                            <div><img id="img_M" style='height:100px;height:300px; display:none;'/></div>
                        <script>
                        $("#MAIN_IMG").change(function(){
                        	   if(this.files && this.files[0]) {
                        	    var reader = new FileReader;
                        	    reader.onload = function(data) {
                        	     $("#img_M").attr("src", data.target.result).width(500);        
                        	     $("#img_M").css("display","block");        
                        	    }
                        	    reader.readAsDataURL(this.files[0]);
                        	   }
                        	  });
                        </script>
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
						
						<script type="text/javascript">						
						$.ajax({
							url:"cate.admin",
							type:"POST",
							data:{cate: "1"},
							dataType:"json",														
							success:function(result){
								//$("#PD_CATEGORY_NO").append("<option value=''>대분류</option>");
								 $.each(result,function(index,item){									 
									 $("#PD_CATEGORY_NO").append("<option value="+item.c_NO+">"+item.c_NAME+"</option>");
								 });																													
							},error:function(){
								alert('1차분류 오류');
							}
						}); 
						
					$("#PD_CATEGORY_NO").change(function() {					
						$("#PD_SUB_CATEGORY_NO").empty();							
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
								 $("#PD_SUB_CATEGORY_NO").append("<option value=''>전체</option>");
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
						
						
			
						
					<!-- 체크박스하려다가 다른거?<div class="col-md-4">
						<div class="form-group">
						<p>색상</p>
                            <input type="checkbox">레드
                            <input type="checkbox">
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
                   </div> -->
                
                   <div class="form-group">
                   <span>색상</span>&nbsp;&nbsp;
                   <input type="text" size="10" id="color">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                   <span>사이즈</span>&nbsp;&nbsp;
                   <input type="text" size="10" id="size">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-secondary" id="Addbutton" type="button">추가</button>                   
                   </div>
                   
                  <script type="text/javascript">
                 
                  
                  var i= 0;
                  $("#Addbutton").click(function() {//유효성추가해야댐
                	  
					$("#tables").append("<tr><td><input type='hidden' name='list["+(i)+"].PD_COLOR' value='"+$("#color").val()+"'>"
							+$("#color").val()+"</td><td><input type='hidden' name='list["+(i)+"].PD_SIZE' value='"+$("#size").val()+"'>"+$("#size").val()+
							"</td><td><input type='text' name='list["+(i)+"].PD_QUANTITY' size='1' value='1'></td>"
							+"<td><button class='btn btn-danger' type='button' onclick='delB(this)'>삭제</button></td></tr>")
							i++;
					$("#color").val("");
					$("#size").val("");
				});
                  </script>
                   <div class="form-group">
                   <table class="table" id="tables">
                    <tr>
                   	   <th>색상</th>
                   	   <th>사이즈</th>
                   	   <th>수량</th>
                   	   <th></th>	
                  	</tr>
                  	 <!-- <tr id="sumAdd">
						     <td><input type="hidden" name="color"> 첫칸</td>
						    <td><input type="hidden" name="size">두번째 칸</td>
						    <td><input type="text" id="PD_QUANTITY" name="PD_QUANTITY" size="5"></td>
						    <td><button class="btn btn-danger" type="button">삭제</button></td> 
					</tr>  -->				
                   </table>                   
                   </div>
                   
                   <script type="text/javascript">                   
                   function delB(Del){                               	  
                	   $(Del).closest("tr").remove();
                	   i--;
                   }
                   </script>
                   
                 
           
             			<br> 
                        <div class="form-group">
                            <input type="text" id="PD_NAME" name="PD_NAME" class="form-control" placeholder="상품명"/>
                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control" id="PD_PRICE" name="PD_PRICE" placeholder="가격"/>
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
					
                            <input type="submit" name="btnSubmit" class="btnContact" value="Product registration" />
                         	<!-- <input type="reset" name="btnSubmit" class="btnContact" value="Reset" /> -->
                    	
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
    
<script>
//유효성
$('input').keydown(function() {
    if (event.keyCode === 13) {
        event.preventDefault();
	        
    }
});
</script>

</body>

</html>
