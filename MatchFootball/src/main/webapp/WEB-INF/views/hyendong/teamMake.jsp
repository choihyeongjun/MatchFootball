<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
</style>
</head>
<body>
	<ul class="hi">
	  <li><a href="http://localhost/MatchFootball/teamInfo">팀 정보</a></li>
	  <li><a href="http://localhost/MatchFootball/teamGallery">팀 갤러리</a></li>
	  <li><a href="http://localhost/MatchFootball/teamNotice">팀 공지</a></li>
	  <li><a href="http://localhost/MatchFootball/#">팀 초대</a></li>
	  <li><a href="http://localhost/MatchFootball/#">팀 리스트</a></li>
	</ul>
	<script type="text/javascript">
		function register() {
			alert("팀 생성이 완료되었습니다");
		}
	</script>
	<div align="center">
		<div>
			<h1>팀 생 성</h1>
		</div>
		<hr />
		<div>
			<div class="input-group mb-3" style="width: 30%">
				<span class="input-group-text" id="basic-addon1" style="width: 16%">팀&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</span>
				<input type="text" class="form-control" placeholder="TeamName"
					aria-label="Username" aria-describedby="basic-addon1">
			</div>

			<div class="input-group mb-3" style="width: 30%">
				<span class="input-group-text" id="basic-addon1" style="width: 16%">팀
					&nbsp;원&nbsp;수</span> <input type="text" class="form-control"
					placeholder="TeamMax" aria-label="Username"
					aria-describedby="basic-addon1">
			</div>
			
			<div style="width: 30%">
				<span class="input-group-text" id="basic-addon1" style="width: 16%">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역</span>
				<select class="form-select" aria-label="Default select example" style="float:left">
					<option selected>선택</option>
					<option value="1">중구</option>
					<option value="2">수성구</option>
				</select> 
			</div>
			
			<div style="width: 30%">
				<span class="input-group-text" id="basic-addon1" style="width: 16%">경기 유형</span>
				<select class="form-select" aria-label="Default select example">
					<option selected>선택</option>
					<option value="1">축구</option>
					<option value="2">풋살</option>
				</select>
			</div>
			<br>
			<div class="input-group" style="width: 30%">
				<input type="file" class="form-control" id="inputGroupFile04"
					aria-describedby="inputGroupFileAddon04" aria-label="Upload">
			</div>
			<br>
			<div class="input-group" style="width: 30%">
				<span class="input-group-text" style="width: 16%">팀
					&nbsp;소&nbsp;개</span>
				<textarea class="form-control" aria-label="With textarea"></textarea>
			</div>
			<br>
		</div>
		<button type="button" class="btn btn-primary">팀 생성</button>
		<button type="button" class="btn btn-primary">뒤로</button>
	</div>
</body>
</html>