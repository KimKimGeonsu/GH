<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<link href="assets/css/join.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="js/joinjs.js" charset="utf-8"></script>
<!-- 유효성검사  -->
<script src="assets/js/address.js"></script>
<!-- 우편번호 검색 -->
<script>
//체크빡스 체크용
$(function(){
	$('#joinform').submit(function(){
		var birth = $('#year').val() + "-" + $('#month').val() + "-" + $('#day').val();
		$('#USER_BIRTH').val(birth);
		
		var email = $('#email').val() + "@" + $('#domain').val();
		$('#USER_EMAIL').val(email);
	})
})
</script>
<style>
	body{font-family:'Rubik', sans-serif;}	
</style>
</head>
<body>
<div class="out_container">
	<div class="join_line">
	<form method="post" action="joinAction" id="joinform">
		<!-- birth, email val -->
		<input type="hidden" id="USER_BIRTH" name="USER_BIRTH">
		<input type="hidden" id="USER_EMAIL" name="USER_EMAIL">
	
		<fieldset class="HY_legend">
			<legend><a href="/GH" class="HY_a"><img src="assets/img/logo/logo.png"></a></legend>
				<label class="HY_label" for="id">ID</label><br>
				<input class="HY_input" type="text" placeholder="ID" size="10" maxLength="10" name="USER_ID" id="id" autocomplete="off">
				<!-- <input class="HY_input" type="button" value="ID중복검사" id="idcheck"> --><br>
				<span class="HY_span idMessage"></span>
				
				<label class="HY_label" for="pass">Password</label><br>
				<input class="HY_input" type="password" placeholder="Password" maxLength="20" name="USER_PASS" id="pass"><br>
				<span class="HY_span passMessage"></span>
				
				<label class="HY_label" for="name">Name</label><br>
				<input class="HY_input" type="text" placeholder="Name" maxLength="10" name="USER_NAME" id="name" autocomplete="off"><br>
				<span class="HY_span nameMessage"></span>
				
				<label for="" class="HY_label">생년월일</label><br>
				<input class="HY_input" type="text" size="4" maxLength="4" name="year" id="year" placeholder="Year" autocomplete="off">
				<!-- <input class="HY_input" type="text" size="2" maxLength="2" name="month" id="month" placeholder="Month"> -->
				<select name="month" id="month">
					<option value="">Month</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<input class="HY_input" type="text" size="2" maxLength="2" name="day" id="day" placeholder="Day"><br>
				<span class="HY_span birthMessage"></span>
								
				<!-- <input type="text" size="6" maxLength="6" name="jumin1" id="jumin1"
						placeholder="주민번호 앞자리"> -
				<input type="text" size="7" maxLength="7" name="jumin2" id="jumin2"
						placeholder="주민번호 뒷자리"><br> -->
				<!-- 생년월일 -->
				
				<label class="HY_label">E-mail</label><br>
				<input class="HY_input" type="text" name="email" id="email" maxlength="20"> @
				<input class="HY_input" type="text" name="domain" id="domain">
				<select name=sel id="sel">
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
				</select>
				<span class="HY_span emailMessage"></span>		
				<!-- E-mail -->
				
				<label class="HY_label">우편번호</label><br>
				<input class="HY_input" type="text" name="USER_POSTCODE" id="post1" readonly>
				<input class="HY_input" id="postbtn" type="button" value="우편검색" onclick="Postcode()"><br>
				<span class="HY_span postMessage"></span>
				<!-- 우편번호 -->
				
				<label class="HY_label">주소</label><br>
				<input class="HY_input" type="text" name="USER_ADDRESS" id="address" readonly><br>
				<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
				<span class="HY_span addressMessage"></span>
				<!-- 주소 -->
				
				<label class="HY_label">휴대폰 번호</label><br>
				<input class="HY_input" type="text" maxLength="11" name="USER_PHONE" id="phone" placeholder="- 없이 숫자만 입력" autocomplete="off"><br>
				<span class="HY_span phoneMessage"></span>				
				
				<button class="HY_button" id="submit_btn" type="submit" value="회원가입">회원가입</button>
				<button class="HY_button" type="button" value="취소" onClick="history.go(-1)">취소</button>	
		</fieldset>
	</form>
	</div>
</div>
</body>
</html>