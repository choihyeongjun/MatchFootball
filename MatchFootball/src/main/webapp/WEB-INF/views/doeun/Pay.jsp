<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Pay</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/selectric.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/myStyle.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/colors/blue.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/my_profile.css">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	rel="stylesheet">


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="https://kit.fontawesome.com/e15da187be.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>
<script type="text/javascript">
	function goTop() {
		$(document).animate({
			scrollTop : 0
		})
	}
</script>
</head>
<body>
	<form id="MyPayFrm">
		<div id="main">
			<div id="content">
				<div class="container">
					<div class="row">
						<jsp:include page="Mybar.jsp"></jsp:include>
						<div class="col-md-7 col-lg-8 col-xl-8 col-sidebar">
							<div class="page-header bordered">
								<h1 id="item-2">
									결제 | 쿠폰<small>payment</small>
								</h1>
							</div>
							<div>
								<br>

								<h4 id="item-2-1">포인트 결제</h4>
								<div id="">
									<p>
									<table style="width: 100%">
										<tr>
											<td><input type="checkbox"></td>
											<td>구매포인트</td>
											<td>보너스 쿠폰</td>
											<td>결제금액</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>구매포인트</td>
											<td>보너스 쿠폰</td>
											<td>결제금액</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>구매포인트</td>
											<td>보너스 쿠폰</td>
											<td>결제금액</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>구매포인트</td>
											<td>보너스 쿠폰</td>
											<td>결제금액</td>
										</tr>
									</table>
									<br>
									<div align="right">
										<button type="submit" class="btn btn-primary">결제</button>
									</div>
								</div>
								<hr>
								
								<h4 id="item-2-3">포인트 환전</h4>
								<br>
								<div>
									<p>내 포인트</p>
									<br>
									<p>환전 가능한 포인트</p>
									<div align="right">
										<button type="button" class="btn btn-primary">환전</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="btn btn-primary btn-circle" id="to-top"
			style="visibility: visible; opacity: 0.5;" onclick="toTop()">
			<!-- 위로가기버튼 -->
			<i class="fa fa-angle-up"></i>
		</button>
	</form>
</body>
</html>