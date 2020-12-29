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
<form>
	<div id="main">
		<div id="content">
			<div class="container">
				<div class="row has-sidebar">
							<jsp:include page="Mybar.jsp"></jsp:include>

					<div class="col-md-7 col-lg-8 col-xl-8">
						<div class="page-header bordered">
							<h1>내 프로필<small>기본 정보 수정</small></h1>
						</div>
						<div class="form-group">
							<label>이름</label> 
							<input type="text" class="form-control form-control-lg name" placeholder="" value="${mb.name}">
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
										value="${mb.email}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="tel">전화번호</label>
								<div class="row form-group has-feedback in-line">
									<div class="col col-lg-8">
										<input class="form-control form-control-lg required"
												type="text" data-name='전화번호' name="tel" id="tel" width="100%"/>
									</div>
									<div class="col col-lg-4 tel-div" align="right">
										<button type='button' class='btn btn-primary' id='tel-btn' style="height: 48px">인증번호 받기</button>
									</div>
								</div>
								<div class="form-group">
									<label>주소</label> 
									<input type="text"
											class="form-control form-control-lg address" value="${mb.location1}">
								</div>
								<div class="form-group">
									<label>활동지역</label> 
									<input type="text"
											class="form-control form-control-lg mian" value="${mb.location2}">
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
										<label>성별</label> <br>
										<input type="radio" name="gender" id="" value="남">남 <input type="radio" name="gender" id="" value="여">여
									</div>
									<div class="form-group">
										<label>생년월일</label> <input type="date"
											class="form-control form-control-lg birth" value="${mb.birth}">
									</div>
									<div class="form-group">
										<label>포지션</label> 
										<select id="position" name="position" checked="">
										<option value="${mb.pos }">${mb.pos}</option>
										</select>
									</div>
									<div class="form-group">
										<label>실력</label> <br>
										<input type="radio" name="level" id="" value="상">상 <input type="radio" name="level" id="" value="중">중 <input type="radio" name="level" id="" value="하">하
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
				style="visibility: visible; opacity: 0.5;"><!-- 위로가기버튼 -->
		<i class="fa fa-angle-up"></i>
	</button>
</form>
	<!-- <div id='heun-footer'></div>
  <script src='../common_profile.js'></script>
  <script src='js/my_profile.js'></script>
 -->
</body>
</html>