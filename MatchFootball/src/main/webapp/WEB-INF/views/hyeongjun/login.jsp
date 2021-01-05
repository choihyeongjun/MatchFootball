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
<script>
function kakaoLogout() {
	Kakao.Auth.logout(function(response) {
		alert(response + 'logout');
	}); 
}
</script>
</head>
<body>
<section class="login first grey">
         <div class="container">
            <div class="box-wrapper">            
               <div class="box box-border">
                  <div class="box-body">
                     <h4>Login</h4>
                     <form action="${pageContext.request.contextPath}/logincheck">
                        <div class="form-group">
                           <label>Username</label>
                           <input type="text" name="id" class="form-control">
                        </div>
                        <div class="form-group">
                           <label class="fw">Password
                              <a href="forgot.html" class="pull-right">Forgot Password?</a>
                           </label>
                           <input type="password" name="pw" class="form-control">
                        </div>
                        <div class="form-group text-right">
                           <button class="btn btn-primary btn-block">Login</button>
                              <td>${sessionScope.login}</td>
                        </div>
                        <div class="form-group text-center">
                           <span class="text-muted">Don't have an account?</span> <a href="register.html">Create one</a>
                        </div>
                     
                        <div class="title-line">
                           or
                        </div>
                 <a href="#" class="btn btn-social btn-block facebook"><i class="ion-social-facebook"></i> Login with Facebook</a>
				<a id="custom-login-btn" href="${kakao_url}"><img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"width="222"/>
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