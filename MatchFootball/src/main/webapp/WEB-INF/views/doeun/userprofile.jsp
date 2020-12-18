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
.card h-1001{
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

	<div class="container">
		<div class="main-body">
			<div class="sidenav">
				<br> <a class="navbar-brand" href="#">마이페이지</a><br>
				<br>
				<hr>
				<nav class="nav nav-pills flex-column">
					<a class="nav-link" href="#">내 정보</a>
					<hr>
					<a class="nav-link" href="#">결제 | 쿠폰</a><br>
					<nav class="nav nav-pills flex-column">
						<a class="nav-link ms-3 my-1" href="#item-2-1">포인트 충전</a> <a
							class="nav-link ms-3 my-1" href="#item-2-2">내 쿠폰</a> <a
							class="nav-link ms-3 my-1" href="#item-2-3">환전</a>
					</nav>
					<hr>
					<a class="nav-link" href="#item-3">내역</a><br>
					<nav class="nav nav-pills flex-column">
						<a class="nav-link ms-3 my-1" href="#">포인트 사용 내역</a> <a
							class="nav-link ms-3 my-1" href="#">매치 신청 내역</a>
					</nav>
					<hr>
					<a class="nav-link" href="#item-4">게시글 | 쪽지</a><br>
					<nav class="nav nav-pills flex-column">
						<a class="nav-link ms-3 my-1" href="#">쪽지</a> <a
							class="nav-link ms-3 my-1" href="#">내가 쓴 게시글</a>
					</nav>
				</nav>
			</div>
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
								<div class="card-body" >
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
</body>
</html>