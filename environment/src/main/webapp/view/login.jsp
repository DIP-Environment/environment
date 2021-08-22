<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
    <!------------------- Use nicepage.css, Page-2.css ------------------------------->
    <link rel="stylesheet" href="../css/login-style.css">
    <!-- <link rel="stylesheet" href="../css/nicepage.css" media="screen"> -->

	<!------------------- Use jquery-1.9.1.min.js, nicepage.js ------------------------------->
    <!-- <script class="u-script" type="text/javascript" src="../js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script> -->
    
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
	<!-- <header class="u-black u-clearfix u-header u-header" id="sec-5d34" ><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h3 class="u-align-left-xs u-headline u-text u-text-1">
        로고
          <a href="/">Ecology</a>
        </h3>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link u-text-body-alt-color" href="#" style="padding: 8px 0px;">
            맨 위 라인의 네비여는 아이콘
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302"><use xlink:href="#svg-a760"></use></svg>
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302"><use xlink:href="#svg-a760"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-a760" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-spacing-25 u-unstyled">
            	<li class="u-nav-item">
            		<a class="u-btn-text u-button-style u-nav-link" href="Page-2.html" style="padding: 8px 0px;">Page 2</a>
				</li>
			</ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
               	<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
               		<li class="u-nav-item">
               			<a class="u-btn-text u-button-style u-nav-link" href="index.html" style="padding: 8px 0px;">Page 2</a>
               		</li>
               	</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div>
    </header> -->
	<div class="center">
		<h1><img id="logo" src="../images/login_logo.png"></h1>
		<form action="login.do" method="post">
		<c:if test="${errors.idOrPwNotMatch}">
			<script type="text/javascript">
					alert('아이디와 암호가 일치하지 않습니다.');
			</script>
		</c:if>
			<div class="text-area">
				<label>아이디</label>
				<input type="text" name="id" value="${param.id}">
				<c:if test="${errors.id}">
					<script type="text/javascript">
						alert('ID를 입력하세요.');
					</script>
				</c:if>
			</div>
			<div class="text-area">
				<label>비밀번호</label>
				<input type="password" name="password" value="${param.password}">
				<c:if test="${errors.password}">
					<script type="text/javascript">
						alert('암호를 입력하세요.');
					</script>
				</c:if>
			</div>
			<div class="singup">
				<a href="signUp.jsp">회원가입하기</a>
			</div>
			<div class="button-area">
				<button type="button" onclick="location.href = '../index.html'">취소</button>
				<button type="submit">확인</button>
			</div>
		</form>
	</div>
</body>
</html>