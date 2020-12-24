<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

</head>
<body>
	<div id="main">
		<div id="content">
			<div class="container">
				<div class="row has-sidebar">
					<div class="col-md-5 col-lg-4 col-xl-4 col-sidebar">
						<div id="sidebar" class="sidebar-left">
							<div class="sidebar_inner">
								<div class="agent-detail">
									<div class="text-center">
										<div id='profileimg'></div>
										<h4 class="main-name" style="color: #869E9E; font-weight: bold;"></h4>
									</div>
								</div>
								<div class="list-group no-border list-unstyled">
									<a href="#" class="list-group-item active">
										<i class="far fa-id-card"></i> 내 프로필
									</a> 
									<a href="#" class="list-group-item"><i class="fas fa-unlock-alt"></i>
									</a> 
									<a href="#" class="list-group-item"><i class="fas fa-h-square"></i> 
									</a> 
									<a href="#" class="list-group-item"><i class="fas fa-bookmark"></i>	관리
									</a> 
									<a href="#" class="list-group-item"><i class="fas fa-sliders-h"></i> 관리
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-7 col-lg-8 col-xl-8">
						<div class="page-header bordered">
							<h1>내 프로필<small>기본 정보</small></h1>
						</div>
						<div class="form-group">
							<label>이름</label> 
							<input type="text" class="form-control form-control-lg name" placeholder="" value="John">
						</div>
						<div class="form-group has-feedback">
							<label class="control-label" for="photo">프로필 사진</label>
							<div class="input-group mb-3">
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="fileupload"
												src='images/default.jpg' name="photo" method='post'
												autocomplete=off aria-describedby="inputGroupFileAddon01">
										<label class="custom-file-label photo" for="inputGroupFile01">파일을 선택하세요</label>
								</div>
							</div>
							<div id='images-div'></div>
							<p style="color: red">이미지을 삭제하시려면 이미지를 클릭해주세요</p>
							<span class="glyphicon glyphicon-ok form-control-feedback"></span>
						</div>
						<div class="form-group">
							<label>이메일</label> 
							<input type="text" class="form-control form-control-lg email"
										value="john.doe@email.com" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="email">전화번호</label>
								<div class="row form-group has-feedback in-line">
									<div class="col col-lg-8">
										<input class="form-control form-control-lg required"
												type="text" data-name='전화번호' name="tel" id="tel" />
									</div>
									<div class="col col-lg-4 tel-div">
										<button type='button' class='btn btn-primary' id='tel-btn'
												style="height: 48px">인증번호 받기</button>
									</div>
								</div>
								<div class="form-group">
									<label>주소</label> 
									<input type="text"
											class="form-control form-control-lg address" value="">
								</div>
								<div class="form-group">
									<label>활동지역</label> 
									<input type="text"
											class="form-control form-control-lg mian" value="">
								</div>
								<div id="sms-tag"></div>
								</div>

								<span class="glyphicon glyphicon-ok form-control-feedback"></span>
								<div class="form-group">
									<div class="row form-group has-feedback in-line" id='checktel'>
										<div class="col col-lg-8">
											<input class="form-control form-control-lg required"
												id='playtel' type="text" placeholder='인증번호를 입력해주세요'
												data-name='전화번호확인' readonly />
										</div>
										<div class="col col-lg-4 checkktel-div">
											<button type="button" class='btn btn-primary'
												disabled="disabled" id="checktel-btn" style="height: 48px">인증
												확인</button>
										</div>
										<span class="glyphicon glyphicon-ok form-control-feedback"></span>
									</div>
									<div class="form-group">
										<label>성별</label> 
										<
									</div>
									<div class="form-group">
										<label>생년월일</label> <input type="date"
											class="form-control form-control-lg birth" value="생년월일">
									</div>
									<div class="form-group">
										<label>포지션</label> <select id="position" name="position"></select>
									</div>
									<div class="form-group">
										<label>실력</label> <select id="level" name="level"></select>
									</div>
								</div>


								<div class="form-group action update">
									<button type="button" class="btn btn-primary" id='btn1'
										style="height: 48px">프로필 변경</button>
									<button type='button' class='btn btn-primary' id='file-btn1'
										style="height: 48px; display: none">프로필 변경</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<button class="btn btn-primary btn-circle" id="to-top" 
				style="visibility: visible; opacity: 1;"><!-- 위로가기버튼 -->
		<i class="fa fa-angle-up"></i>
	</button>

	<!-- <div id='heun-footer'></div>
  <script src='../common_profile.js'></script>
  <script src='js/my_profile.js'></script>
 -->
</body>
</html>