<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>팀 매치 신청내역</title>

<link rel="shortcut icon" href="/heunheuntrip/img/favicon.ico">
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
	href="${pageContext.request.contextPath}/resources/css/review.css">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	rel="stylesheet">


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>
</head>

<style>
.mb50 {
	margin-bottom: 10px !important;
}

.text-success {
	color: #d3d3d3 !important;
}

.main-title {
	margin-bottom: 15px;
	line-height: 34px;
	color: #777777;
}
</style>
<script>
	function goPage(q) {
		location.href = "teamMatching?page=" + q;
	}
</script>
<body>
	<div id="main" style="height: 850px">

		<div class="clearfix"></div>
		<div id="content">
			<div class="container">
				<div class="row justify-content-md-center">
					<div class="col col-lg-12 col-xl-10">
						<div class="row has-sidebar">

							<jsp:include page="Mybar.jsp"></jsp:include>
							<div class="col-md-7 col-lg-8 col-xl-8">
								<div class="page-header bordered">
									<h1>
										매치 신청내역<small>APPLICATION MATCH</small>
									</h1>
								</div>
								<div align="right">
									<a href="matching"> 개인 매칭 </a><a href="teamMatching"> | 용병
										매칭 참가 </a>
								</div>
								<br>
									<div id="tr-template">
								<c:forEach items="${tmat}" var="tmat" begin="0">
									<div style="border: 1px">
										<div class="media mt-0" style="margin-bottom: 10px;">
											<div class="media-left">
												<img class="media-object rounded-circle" src="${pageContext.request.contextPath}/images/${tmat.T_LOGO }" width="100"
													height="100" >
											</div>
											<div class="media-body row" style="position: relative; margin-top: 10px;" >
												<div style="margin-bottom: 10px;">
													<div>
														<div align="right" style="float: left;">${tmat.F_NAME}</div>
														<div class="text-muted" align="right">${tmat.T_NAME} VS ${tmat.SO_NAME}</div>
													</div>
												</div>
												<p class="text-muted">
													<i class="fas fa-map-marker-alt"> ${tmat.F_ADDRESS}</i>
												</p>
												<p class="text-muted">경기일 및 경기 시간: ${tmat.M_DATE}</p>

											</div>
										</div>
									</div>
								</c:forEach>
									</div>
								<div align="center">
									<my:paging paging="${paging}" jsfunc="goPage" />
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
</body>

</html>