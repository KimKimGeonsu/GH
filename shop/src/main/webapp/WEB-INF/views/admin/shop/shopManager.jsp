<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="/WEB-INF/views/admin/include_admin/head.jsp"/>

<script src="ad/vendor/jquery/jquery.min.js"></script>
<script src="ad/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="ad/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="ad/js/sb-admin-2.min.js"></script>
<style type="text/css">
body{
line-height: 1;

}
th, th, td{
text-align: center;
}
.table td, .table th{
vertical-align: middle;
}
img{
width: 150px;
height: 150px;
}
.table-striped{
 margin: 0;
}

.table-striped td,th{
 padding: 0.1rem;
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
            <a class="collapse-item" href="shopAdd.admin">상품등록</a>
            <a class="collapse-item active" href="shopList.admin">리스트/수정/삭제</a>
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

        <!-- Begin Page Content -->
        <!-- 본문 -->
        <div class="container-fluid">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
		
	<table id="cart" class="table table-hover table-condensed">
		<caption style="caption-side: top;text-align: center;font-size:xx-large; padding-bottom:40px">등록된상품</caption>
			
    				<thead>
    					<tr>
	    					<td style="border-top: none;">
		    					<div style="width: 100px">
		    						<button class="btn btn-danger">삭제</button>
		    					</div>
	    					</td>
    					</tr>
						<tr>
							<th style="width:7%"><div><input type="checkbox"></div></th>
							<th style="width:8%">번호</th>
							<th style="width:10%">이미지</th>
							<th style="width:10%">분류</th>
							<th style="width:20%">이름</th>
							<th style="width:25%">수량</th>
							<th style="width:10%" class="text-center">총 판매량</th>
							<th style="width:10%">수정/삭제</th>
						</tr>
					</thead>
					<!-- tbody라인 -->
					<tbody id="tbody"> 
						
					
					</tbody>
			<script>
					$.ajax({
						url:"ajaxlist.admin",
						type:"POST",
						data:{},
						dataType:"html",														
						success:function(result){										
							$("#tbody").append(result);
						},error:function(){
							
						}});//ajax 
					
					</script>
			
					<tfoot>
						<tr class="visible-xs">
							
						</tr>
						<tr>
							<td></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"></td>
							<td></td>
						</tr>
					</tfoot>
				</table>
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
