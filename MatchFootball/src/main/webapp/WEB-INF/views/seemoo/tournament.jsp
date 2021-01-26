<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/logo/favicon.png"
	type="image/x-icon">
<link rel="stylesheet" href="resources/css/teamMenu.css">
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
<style>
.single-input-accent {
    display: block;
    width: 40%;
    line-height: 40px;
    border: 1px solid transparent;
    outline: none;
    background: #f9f9ff;
    padding: 0 20px;
}
</style>
<body>
	<form action="tournamentInsertt" method="post"
		encType="multipart/form-data">
		<!-- encType 이미지 등록시 필수 -->
		${sessionScope.kemail } ${sessionScope.id } ${member.t_num }
		${member.pos }
		<div class="section-top-border" style="margin-left: 670px; width: 70%; padding-top: 70px">
			<div class="row">
				<div class="col-lg-8 col-md-8" style="width: 1500px">
					<h3>토너먼트 생성</h3>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px">대&nbsp;&nbsp;회&nbsp;&nbsp;&nbsp;명</div>
						<input type="text" name="title" placeholder="대회명" class="single-input-accent" style="float: left;">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px; padding-left: 50px">참가팀 수</div>
						<input type="text" name="t_max" value="8" class="single-input-accent" readonly>
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px">구&nbsp;&nbsp;장&nbsp;&nbsp;&nbsp;명</div>
						<input type="text" name="location" placeholder="구장명" class="single-input-accent" style="float: left;">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px; padding-left: 50px">구장 주소</div>
						<input type="text" name="address" placeholder="구장 상세 주소" class="single-input-accent">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px">시작 날짜</div>
						<input type="date" name="s_date" placeholder="시작 날짜" class="single-input-accent" style="float: left;">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px; padding-left: 50px">종료 날짜</div>
						<input type="date" name="e_date" placeholder="종료 날짜" class="single-input-accent">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px">기본 상금</div>
						<input type="text" name="t_point" placeholder="기본 상금"
							class="single-input-accent">
					</div>
					<div class="mt-10">
						<div style="float: left; padding-top: 10px; padding-right: 10px">사진 등록</div>
						<input type="file" id="files" name="file" placeholder="토너먼트 사진" class="single-input-accent"><br> 
						<img id="image" style="height: 200px; width: 300px; border: none; padding-left: 70px;" />
						<script>
							document.getElementById("files").onchange = function() {
								var reader = new FileReader();

								reader.onload = function(e) {
									document.getElementById("image").src = e.target.result;
								};
								reader.readAsDataURL(this.files[0]);
							};
						</script>
					</div>
				</div>
			</div>
			<br> <input type="text" value="${sessionScope.id }" name="a_id" style="display: none"> 
			<input type="submit" class="genric-btn info circle" value="토너먼트 생성" />
		</div>
	</form>
</body>
</html>