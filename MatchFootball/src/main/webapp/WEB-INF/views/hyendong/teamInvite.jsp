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
</head>
<body>
	<ul class="hi">
	  <li><a href="http://localhost/MatchFootball/teamInfo">팀 정보</a></li>
	  <li><a href="http://localhost/MatchFootball/teamGallery">팀 갤러리</a></li>
	  <li><a href="http://localhost/MatchFootball/teamNotice">팀 공지</a></li>
	  <li><a href="http://localhost/MatchFootball/#">팀 초대</a></li>
	  <li><a href="http://localhost/MatchFootball/#">팀 리스트</a></li>
	</ul>
	<form action="teamUpdateUpdate" method="post">
	<div align="center">
		<div>
			<h1>팀 초 대</h1>
		</div>
		<hr />
		<div>
		<input type="text" name="t_num" value="${teamUpdate.t_num }" style="display:none" />
			<div class="input-group mb-3" style="width: 30%">
				<span class="input-group-text" id="basic-addon1" style="width: 16%">초&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대</span>
				<input type="text" class="form-control"
					aria-label="Username" aria-describedby="basic-addon1" name="t_name" value="${teamUpdate.t_name}">
					<button type="button" class="input-group-text">검색</button>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">팀 수정</button>
		<button type="button" class="btn btn-primary">뒤로</button>
	</div>
	</form>
</body>
</html>