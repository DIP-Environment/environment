<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Nam ultrices ultrices nec tortor pulvinar esteras loremips est orem.">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Join</title>
    <!-- <link rel="stylesheet" href="css/nicepage.css" media="screen"> -->
	<link rel="stylesheet" href="css/Join.css" media="screen">
    <!-- <script class="u-script" type="text/javascript" src="js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script> -->
    <meta name="generator" content="Nicepage 3.23.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <!-- 네비게이션바 include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#navBar").load("view/navBar.html");  //nav include
	});
	</script>
	
	<!-- footer include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#footer").load("view/footer.html");  //nav include
	});
	</script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../images/2743b7d2-73a2-42ac-e1ba-e365b897d6ea.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Join">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body">
  	<!-- navBar -->
  	<div id="navBar"></div>
  	<!-- section1 -->
    <section class="u-clearfix u-image u-section-1" id="sec-ef0d" data-image-width="1280" data-image-height="719">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-group u-opacity u-opacity-80 u-radius-30 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-palette-1-base u-text-1">Let's Start!</h1>
            
            <%-- <div class="u-form u-form-1">
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
			</div> --%>
            <div class="u-form u-form-1">
            <!-- class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" -->
              <form action="join.do" method="post">
                <input type="hidden" id="siteId" name="siteId" value="618681">
                <input type="hidden" id="pageId" name="pageId" value="619405">
                <div class="u-form-group u-form-name">
                
                <div class="u-form-group u-form-group-2">
                  <label for="text-0ad8" class="u-label">ID</label>
                  <input type="text" placeholder="Enter your ID" value="${param.id}" id="text-0ad8" name="id" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                  <label for="name-ebf3" class="u-label">Name</label>
                  <input type="text" placeholder="Enter your Name" value="${param.name}" id="name-ebf3" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                
                <div class="u-form-group u-form-group-3">
                  <label for="text-485b" class="u-label">Password</label>
                  <input type="password" id="text-485b" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Enter your Password">
                </div>
                <div class="u-form-group u-form-group-4">
                  <label for="text-8310" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="Check your Password" id="text-8310" name="confirmPassword" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-email u-form-group">
                  <label for="email-ebf3" class="u-label">Email</label>
                  <input type="email" placeholder="Enter a valid email address" value="${param.email}" id="email-ebf3" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                
                <span class="u-align-center u-form-group u-form-submit" style="margin-left: 80px">
                <!-- <div>
	                <button type="button" onclick="location.href = '../index.html'">취소</button>
					<input type="submit">확인</button>
                </div> -->
                  <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-20 u-btn-1">Enter<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                  <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-20 u-btn-1">cancel<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </span>
                <c:if test="${errors.password or errors.confirmPassword or errors.email}">
				<script type="text/javascript">
					alert('모든 입력칸을 채워주세요.');
				</script>
				</c:if>
				<c:if test="${errors.duplicateId}">
				<script type="text/javascript">
					alert('아이디 중복이 발생하였습니다.');
				</script>
				</c:if>
				<c:if test="${errors.notMatch}">
					<script type="text/javascript">
						alert('암호와 확인이 일치하지 않습니다.');
					</script>
				</c:if>
				
				<!-- <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse"> -->
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <!-- <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9377"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">대구디지털산업진흥원 DIP</p>
        <p class="u-small-text u-text u-text-variant u-text-2"> 대구 수성구 알파시티1로 170(대흥동) 대구디지털산업진흥원</p>
        <p class="u-small-text u-text u-text-variant u-text-3"> 대표전화 : 053-655-5600 / 팩스 : 053-655-3501</p>
      </div></footer> -->
    <div id="footer"></div>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/" target="_blank">
        <span>Offline Website Builder</span>
      </a>. 
    </section>
  </body>
</html>