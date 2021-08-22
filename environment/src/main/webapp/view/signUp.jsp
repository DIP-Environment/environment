<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
    <!------------------- Use nicepage.css, Page-2.css ------------------------------->
    <link rel="stylesheet" href="../css/signup-style.css">
   <!--  <link rel="stylesheet" href="../css/nicepage.css" media="screen"> -->

	<!------------------- Use jquery-1.9.1.min.js, nicepage.js ------------------------------->
    <!-- <script class="u-script" type="text/javascript" src="js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script> -->
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#navBar").load("navBar.html");  //헤더 인클루드
	});
	</script>
	
    <!------------------- Use font site connect------------------------------->
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
</head>
<body>
	<div id="navBar"></div>
	<div class="center">
		<h1><img id="logo" src="../images/login_logo.png"></h1>
		<form action="join.do" method="post">
			<div class="text-area">
				<label>이름</label>
				<input type="text" name="name" value="${param.name}">
			</div>
			<div class="text-area">
				<label>아이디</label>
				<input type="text" name="id" value="${param.id}">
			</div>
			<div class="text-area">
				<label>비밀번호</label>
				<input type="password" name="password">
			</div>
			<div class="text-area">
				<label>비밀번호 확인</label>
				<input type="password" name="confirmPassword">
			</div>
			<div class="text-area">
				<label>이메일</label>
				<input type="text" name="email" value="${param.email}">
			</div>
			<div class="button-area">
				<button type="button" onclick="location.href = '../index.html'">취소</button>
				<button type="submit">확인</button>
			</div>
			<c:if test="${errors.duplicateId or errors.password or errors.confirmPassword or errors.email}">
				<script type="text/javascript">
					alert('모든 입력칸을 체워주세요.');
				</script>
			</c:if>
			<c:if test="${errors.notMatch}">
				<script type="text/javascript">
					alert('암호와 확인이 일치하지 않습니다.');
				</script>
			</c:if>
		</form>
	</div>
</body>
</html>