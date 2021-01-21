<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css1/skins/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css1/demo.css">
<style>
footer {
   position: fixed;
   left: 0px;
   bottom: 0px;
   width: 100%;
   background: grey;   
   color: white;
}
.lili a { color: white; }
</style>
<script>
$(function(){
	login();
});
function login(){
	var login= $('input[name="login"]').value;
	$.ajax({
		url:
	})
}
function kakaoLogout() {
	Kakao.Auth.logout(function(response) {
		alert(response + 'logout');
	}); 
}


</script>

</head>
<body>
<section class="login first grey" style="padding-top: 10px;">
         <div class="container">
            <div class="box-wrapper">            
               <div class="box box-border">
                  <div class="box-body">
                  	<div align="right">
                  	
                    	<input type="radio" name="login" class="login" value="user" checked /> 
                    		<label for="user">회원</label> 
                    	<input type="radio" name="login" class="login" value="fadmin" /> 
                    		<label for="fadmin">구장관리자</label> <br>
                    </div>
                    <br>
                     <h4 align="center">Login</h4>
                     <form action="${pageContext.request.contextPath}/logincheck">
                        <div class="form-group">
                           <label style="display: n">Id</label>
                           <input type="text" name="id" class="form-control" placeholder="아이디를 입력해주세요">
                        </div>
                        <div class="form-group">
                           <label class="fw">Password</label>
                           <input type="password" name="pw" class="form-control" placeholder="비밀번호를 입력해주세요">
                           <a href="forgot.html" class="pull-right" style="font-size: 15px;">비밀번호를 잊어버렸나요?</a>
                        </div>
                        <br>
                        <div class="form-group text-right" align="center">
                           <button class="btn btn-primary btn-block">로그인</button>
                              <td>${sessionScope.login}</td>
                        </div>
                        <br>
                        <div class="form-group text-center">
                           <span class="text-muted">아직 계정이 없으십니까?</span> <a href="register.html">가입하기</a>
                        </div>
                     
                        <div class="title-line">
                           or
                        </div>
                        <div align="center">
                 		<a href="#" class="btn btn-social btn-block facebook">
                 		<i class="ion-social-facebook"></i> Login with Facebook</a><br>
						<a id="custom-login-btn" href="${kakao_url}">
						<img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"width="222"/>
                     	</div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.migrate.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.js"></script>
      <script>var $target_end=$(".best-of-the-week");</script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/jquery-number/jquery.number.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/owl.carousel.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/easescroll/jquery.easeScroll.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/demo.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script>
</body>
</html>