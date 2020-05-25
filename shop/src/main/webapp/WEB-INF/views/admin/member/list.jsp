<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../../include_main/header_css.jsp" />
<script>
function Memeberdelete(id){
	if(confirm(id+"를 추방하시겠습니까?")){
	    $.ajax({
	        type: "GET",
	        url:"delete.admin",
	        data:{id: id},
	        success : function(result){
	            if(result==1){
	                alert('로케이션성공하였습니다');
	                location.href = "selectAll.admin";
	            }else{
	                alert('실패했습니다');
	            }},
	        error : function(){
	            alert('실패');
	        }
	    });
	} else {
	    return false;
	}};

</script>
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107">
                <div class="container">
					  
						<table class="table table-bordered table-hover">
     	 <caption style="caption-side: top;text-align: center;">회원목록</caption>
        <thead>
            <tr>
                <th>#</th>
                <th>아이디</th>
                <th>이메일</th>
                <th>생성날짜</th>
                <th>회원탈퇴</th>                
            </tr>
        </thead>
        <tbody>  
            <c:forEach var="vo" items="${list}" varStatus="status">
            			<tr>
            			<td>${status.count}</td>
						<td>${vo.userId }</td>
						<td>${vo.email }</td>
						<td>${vo.regDate }</td>
						<td align="center"><input type="button" value="삭제" style="color:black" class='btn' onclick="Memeberdelete('${vo.userId}')"></td>
						</tr>
			</c:forEach>     
        </tbody>
    </table>	
                </div>
            </div>

		<jsp:include page="../../include_main/footer.jsp" />
		<!-- modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span class="ion-android-close" aria-hidden="true"></span>
			</button>
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<div class="qwick-view-left">
							<div class="quick-view-learg-img">
								<div class="quick-view-tab-content tab-content">
									<div class="tab-pane active show fade" id="modal1"
										role="tabpanel">
										<img src="assets/img/quick-view/l1.jpg" alt="">
									</div>
									<div class="tab-pane fade" id="modal2" role="tabpanel">
										<img src="assets/img/quick-view/l2.jpg" alt="">
									</div>
									<div class="tab-pane fade" id="modal3" role="tabpanel">
										<img src="assets/img/quick-view/l3.jpg" alt="">
									</div>
								</div>
							</div>
							<div class="quick-view-list nav" role="tablist">
								<a class="active" href="#modal1" data-toggle="tab" role="tab"
									aria-selected="true" aria-controls="home1"> <img
									src="assets/img/quick-view/s1.jpg" alt="">
								</a> <a href="#modal2" data-toggle="tab" role="tab"
									aria-selected="false" aria-controls="home2"> <img
									src="assets/img/quick-view/s2.jpg" alt="">
								</a> <a href="#modal3" data-toggle="tab" role="tab"
									aria-selected="false" aria-controls="home3"> <img
									src="assets/img/quick-view/s3.jpg" alt="">
								</a>
							</div>
						</div>
						<div class="qwick-view-right">
							<div class="qwick-view-content">
								<h3>Handcrafted Supper Mug</h3>
								<div class="price">
									<span class="new">$90.00</span> <span class="old">$120.00
									</span>
								</div>
								<div class="rating-number">
									<div class="quick-view-rating">
										<i class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i>
									</div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do
									tempor incididun ut labore et dolore magna aliqua. Ut enim ad
									mi , quis nostrud veniam exercitation .</p>
								<div class="quick-view-select">
									<div class="select-option-part">
										<label>Size*</label> <select class="select">
											<option value="">- Please Select -</option>
											<option value="">900</option>
											<option value="">700</option>
										</select>
									</div>
									<div class="select-option-part">
										<label>Color*</label> <select class="select">
											<option value="">- Please Select -</option>
											<option value="">orange</option>
											<option value="">pink</option>
											<option value="">yellow</option>
										</select>
									</div>
								</div>
								<div class="quickview-plus-minus">
									<div class="cart-plus-minus">
										<input type="text" value="02" name="qtybutton"
											class="cart-plus-minus-box">
									</div>
									<div class="quickview-btn-cart">
										<a class="btn-style cr-btn" href="#"><span>add to
												cart</span></a>
									</div>
									<div class="quickview-btn-wishlist">
										<a class="btn-hover cr-btn" href="#"><span><i
												class="ion-ios-heart-outline"></i></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>