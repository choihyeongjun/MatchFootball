<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required Meta Tags -->
<meta charset="UTF-8">

<!-- Page Title -->
<title>Elements</title>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/logo/favicon.png"
	type="image/x-icon">

<!-- CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/animate-3.7.0.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/fonts/flat-icon/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/owl-carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">
</head>
<body>
<form action="teamMakeInsert" method="post" encType="multipart/form-data"><!-- encType 이미지 등록시 필수 -->>
	<div class="section-top-border" style="margin-left: 670px; width: 50%">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<h3>팀 생성</h3>
					<div class="mt-10">
						<input type="text" name="t_name" placeholder="팀명"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="t_max" placeholder="팀원수"
							class="single-input-accent">
					</div>
					<hr>
					<div class="input-group-icon mt-10">
						<div class="form-select" id="default-select" style="border: none; padding-right: 2px">
							<select name="t_address">
								<option value="중구">중구</option>
								<option value="서구">서구</option>
							</select>
						</div>
					</div>
					<hr>
					<div class="input-group-icon mt-10">
						<div class="form-select" id="default-select2"
							style="border: none;  padding-right: 2px">
							<select name="t_type">
								<option value="축구">축구</option>
								<option value="풋살">풋살</option>
							</select>
						</div>
					</div>
					<hr>
					<div class="mt-30">
						<textarea name="t_info" class="single-input-accent" placeholder="팀소개"></textarea>
					</div>
					<hr>
					첨부파일<input type="file" name="file" /><br /> 
						<p>팀원 공개 여부</p>
					<div class="switch-wrap d-flex justify-content-between">
						<div class="primary-switch">
							<input type="checkbox" id="default-switch"> <label
								for="default-switch"></label>
						</div>
					</div>
			</div>
		</div>
		<br>
		<button class="genric-btn info circle">확인</button>
	</div>
	</form>
	<!-- End Align Area -->

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/bootstrap-4.1.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/owl-carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/main.js"></script>
		
</body>
</html>
