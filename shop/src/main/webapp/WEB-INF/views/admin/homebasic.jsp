<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include_admin/head.jsp"/>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
	<!-- 사이드바 -->
	<jsp:include page="include_admin/sidebar.jsp"/>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

          
		<!-- 헤더부분 -->
		<jsp:include page="include_admin/header.jsp"/>
		
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>

        </div>
        <!-- /.container-fluid -->
        

      </div>
      <!-- End of Main Content -->

     <!-- 푸터 -->
     <jsp:include page="include_admin/footer.jsp"/>
     
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->


  <jsp:include page="include_admin/scrolltop.jsp"/>
  <jsp:include page="include_admin/bootjs.jsp"/>

</body>

</html>
