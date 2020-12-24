<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>My Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	
<link rel="shortcut icon" href="/heunheuntrip/img/favicon.ico">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	 <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/selectric.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/myStyle.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/colors/blue.css" rel="stylesheet">
<link href="../../../lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../../../lib/aos/aos.css" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" rel="stylesheet">


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>
<style>
body {
	margin-top: 20px;
	color: #1a202c;
	text-align: center;
	background-color: white;
}

.main-body {
	padding: 15px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.card h-1001 {
	width: 600px;
}

.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 1rem;
}

.gutters-sm {
	margin-right: -8px;
	margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
	padding-right: 8px;
	padding-left: 8px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
}

.bg-gray-300 {
	background-color: #e2e8f0;
}

.h-100 {
	height: 100% !important;
}

.shadow-none {
	box-shadow: none !important;
}

.sidenav {
	width: 250px;
	position: fixed;
	left: 0;
}
</style>

</head>
<body>

	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-lg-4 col-xl-4 col-sidebar">
					<div id="sidebar" class="sidebar-left">
						<div class="sidebar_inner">
							<div class="agent-detail">
								<div class="text-center">
									<div id='profileimg'></div>
									<h4 class="main-name"
										style="color: #869E9E; font-weight: bold;"></h4>
								</div>
							</div>
							<div class="list-group no-border list-unstyled">
								<a href="#" class="list-group-item active"> <i
									class="far fa-id-card"></i> 내 프로필
								</a> <a href="#" class="list-group-item"><i
									class="fas fa-unlock-alt"></i> </a> <a href="#"
									class="list-group-item"><i class="fas fa-h-square"></i> </a> <a
									href="#" class="list-group-item"><i class="fas fa-bookmark"></i>관리
								</a> <a href="#" class="list-group-item"><i
									class="fas fa-sliders-h"></i> 관리 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-7 col-lg-8 col-xl-8">
					<div class="row gutters-sm">
						<div class="col-md-4 mb-3">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center text-center">
										<br> <img
											src="https://bootdey.com/img/Content/avatar/avatar7.png"
											alt="Admin" class="rounded-circle" width="150">
										<div class="mt-3">
											<h4>이름</h4>
											<p class="text-secondary mb-1">활동지역</p>
											<p class="text-muted font-size-sm">포지션</p>
											<button class="btn btn-primary">수정</button>
											<button class="btn btn-outline-primary">Message</button>
											<br>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="card mb-3">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">성별</h6>
										</div>
										<div class="col-sm-9 text-secondary">남/여</div>
									</div>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">주소</h6>
										</div>
										<div class="col-sm-9 text-secondary">대구시 웅앵웅</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Email</h6>
										</div>
										<div class="col-sm-9 text-secondary">fip@jukmuh.al</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Phone</h6>
										</div>
										<div class="col-sm-9 text-secondary">(239) 816-9029</div>
									</div>
									<hr>

									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0"></h6>
										</div>
										<div class="col-sm-9 text-secondary">Bay Area, San
											Francisco, CA</div>
									</div>
									<hr>

								</div>
							</div>
							<div class="row gutters-sm">
								<div class="col-md-8">
									<div class="card mb-3">
										<div class="card-body">
											<h6 class="d-flex align-items-center mb-3">
												<i class="material-icons text-info mr-2">assignment</i>경기 승률
											</h6>
											<small>매너점수</small>
											<div class="progress mb-3" style="height: 5px">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: 80%" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
											<small></small>
											<div class="progress mb-3" style="height: 5px">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: 72%" aria-valuenow="72" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
											<small></small>
											<div class="progress mb-3" style="height: 5px">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: 89%" aria-valuenow="89" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
											<small></small>
											<div class="progress mb-3" style="height: 5px">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: 55%" aria-valuenow="55" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
											<small></small>
											<div class="progress mb-3" style="height: 5px">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: 66%" aria-valuenow="66" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>