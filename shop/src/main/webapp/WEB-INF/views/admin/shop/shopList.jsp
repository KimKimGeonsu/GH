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
    .admin-ch{
    	height: 20px;
    	display:none;
    }
    #ch-wrap{
    	width: 50%;
		max-width: 66.66667%;
		margin: 0 auto;
    }
    label{
     flex: auto!important;
     width: 24%!important;
     text-align: center;
     padding: 15px;
    }
   input[type=checkbox], input[type=radio]{
   height: 16px;
   }
      .checkbox-inline:hover{
   	font-weight:900!important;
   	cursor:pointer!important;
   	color:#007bff!important;
   }
  .checkbox-inline:active{
   font-weight:900!important;
   	cursor:pointer!important;
   	color:#007bff!important;
   } 
   
   .checkbox-inline:visited{
   font-weight:900!important;
   	cursor:pointer!important;
   	color:#007bff!important;
   }
   .table td{
   vertical-align: middle;
   }

</style>
<script type="text/javascript">
function ajaxlist(){
					var tall = [];  
					
				    $('input[name="tall"]:checked').each(function(i){
				    	tall.push($(this).val());
				    	});

					var small =[];
					
					 $('input[name="small"]:checked').each(function(i){
						 small.push($(this).val());
									 });																 					 					 
					  $.ajax({
							url:"ajaxlist.admin",
							type:"POST",
							data:{"tall":tall,"small":small},
							dataType:"html",														
							success:function(result){										
								$("#ajaxpage").append(result);
							},error:function(){
								
							}});//ajax 
				}

$(document).ready(function() {
	  $('.list-group-item').click(function(e) {
	    //e.preventDefault();
	    $('.list-group-item').removeClass('active');
	    $(this).addClass('active');
	  });
	  
	  
	 //심심풀이용 
	/*  $.ajax({
			url:"ajaxlist2.admin",
			type:"GET",
			data:{},			
			dataType:"JSON",
			contentType: "application/json",														
			success:function(result){										
				console.log('asdasd'+JSON.stringify(result));
				console.log(result)
			},error:function(){
				
			}});//ajax 
			
			
			 	
			$.ajax({
				url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=aa66c5868406af2e316790e9ab3eadb7&targetDt=20200601",
				type:"GET",
				data:{},			
				dataType:"JSON",				
				success:function(result){										
					console.log('asdasd'+JSON.stringify(result));
					console.log(result)
				},error:function(){
					
				}});//ajax  */
	  
	  
	  ajaxlist();

	  
	  
	  
	  //상품리스트
/* 	  $.ajax({
				url:"ajaxlist.admin",
				type:"POST",
				data:{},
				dataType:"html",														
				success:function(result){																												
					$("#ajaxpage").append(result);
				},error:function(){
					
				}
			});   */
	
			
	$("#101,#102,#103,#201,#202,#203,#204,#301,#302,#303,#304,#401,#402,#403").click(function() {
				 if($(this).val()<200){
					 $("#100").prop("checked", true);
				 }else if($(this).val()>200 && $(this).val()<300){
					 $("#200").prop("checked", true);
				 }else if($(this).val()>300 && $(this).val()<400){
					 $("#300").prop("checked", true);
				 }else if($(this).val()>400 && $(this).val()<500){
					 $("#400").prop("checked", true);
				 }
				 
			});
	$("#keyword").keyup(function() {
			var tall = [];  			
		    $('input[name="tall"]:checked').each(function(i){
		    	tall.push($(this).val());});
	
			var small =[];			
			 $('input[name="small"]:checked').each(function(i){
				 small.push($(this).val());});		
		$.ajax({
			url:"ajaxlist.admin",
			type:"POST",
			data:{"keyword":$("#keyword").val(),"keysel":$("#keysel").val(),"tall":tall,"small":small},
			dataType:"html",														
			success:function(result){
				$("#ajaxpage").empty();
				$("#ajaxpage").append(result);
			},error:function(){
				
			}
		}); 
	})
			


			 
			
	
	 
	 
	 //체크박스 에이잭스
	$("#selectcate").find($("label>input[type=checkbox]")).click(function() {			
			//console.log($("label>input[type=checkbox]:checked").val()); --체크확인						
			$("#ajaxpage").empty();			
			 ajaxlist();
		});

		
		
		
	 
	 //삭제함수 --컨트롤러만들어야함 체크박스 선택은 고려
	 function shopdelete(pd_no) {
		 if(confirm(pd_no+"를 삭제하시겠습니까?")){
			    $.ajax({
			        type: "GET",
			        url:"shopdelete.admin",
			        data:{pd_no: pd_no},
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
			}
		 };

	 
	 
	  
	});//onload
	

	

	

	
</script>
</head>
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
			<div class="list-group">			   
			    <a href="shopList.admin" class="list-group-item active"><i class="fa fa-key"></i> <span>상픔리스트</span></a>
			    <a target="_blank" href="shopAdd.admin" class="list-group-item"><i class="fa fa-credit-card"></i> <span>상품등록</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-question-circle"></i> <span>주문배송</span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-arrow-circle-o-left"></i> <span></span></a>
			    <a href="#" class="list-group-item"><i class="fa fa-book"></i> <span>공지,질문답변</span></a>
			    <a href="selectAll.admin" class="list-group-item"><i class="fa fa-compass"></i> <span>회원관리</span></a>						
			  </div>


			<div id="ch-wrap">
			  <div id="selectcate" class="container">
				<label class="checkbox-inline">
				  <input type="checkbox" id="100" class="admin-ch" name="tall" value="100">상의
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="200" class="admin-ch" name="tall" value="200">하의
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="300" class="admin-ch" name="tall" value="300">겉옷
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="400" class="admin-ch" name="tall" value="400">신발
				</label>				
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="101" class="admin-ch" name="small" value="101">반팔
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="102" class="admin-ch" name="small" value="102">긴팔
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="103" class="admin-ch" name="small" value="103">맨투맨/후드
				</label>
				<br>
								
				<label class="checkbox-inline">
				  <input type="checkbox" id="301" class="admin-ch" name="small" value="301">자켓
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="302" class="admin-ch" name="small" value="302">코트/블레이저
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="303" class="admin-ch" name="small" value="303">가디건/조끼
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="304" class="admin-ch" name="small" value="304">패딩
				</label>
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="201" class="admin-ch" name="small" value="201">반바지
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="202" class="admin-ch" name="small" value="202">슬랙스
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="203" class="admin-ch" name="small" value="203">청바지
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="204" class="admin-ch" name="small" value="204">면바지
				</label>
				<br>
				
				<label class="checkbox-inline">
				  <input type="checkbox" id="401" class="admin-ch" name="small" value="401">운동화/스니커즈
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="402" class="admin-ch" name="small" value="402">구두/로퍼
				</label>
				<label class="checkbox-inline">
				  <input type="checkbox" id="403" class="admin-ch" name="small" value="403">샌들/슬리퍼
				</label>				
				<br>
				</div>
			</div>
					<!-- keyword -->
				<div class="container">
					<select name="keysel" id="keysel">					   
					    <option value="PD_NO">상품번호</option>
					    <option value="PD_NAME">상품명</option>					    
					</select>
				<input type="text" id="keyword" name="keyword" value="" placeholder="검색검색">
				</div>
				
				
				
			  <div id="ajaxpage" class="container"><!-- ajax -->
				
				
			</div>
	 
		         
            </div><!-- divbannerEnd -->

		<jsp:include page="../../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>