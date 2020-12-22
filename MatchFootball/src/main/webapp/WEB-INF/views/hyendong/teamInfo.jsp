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
	  <li ><a href="http://localhost/MatchFootball/teamInfo">팀 정보</a></li>
	  <li ><a href="http://localhost/MatchFootball/teamGallery">팀 갤러리</a></li>
	  <li ><a href="http://localhost/MatchFootball/teamNotice">팀 공지</a></li>
	  <li ><a href="http://localhost/MatchFootball/#">팀 초대</a></li>
	  <li ><a href="http://localhost/MatchFootball/#">팀 리스트</a></li>
	</ul>
	<div align="center">
		<div>
			<h1>팀 정 보</h1>
		</div>
		<hr />
		<div style="float:left; margin-left:30%" >
			<img src="resources/to.png" class="img-thumbnail" width="350px" height="350px">
			<table class="table table-bordered">
					<tr>
						<th scope="col">팀명</th>
						<td>토트넘</td>
						<th scope="col">연령대</th>
						<td>10세</td>
					</tr>
					<tr>
						<th scope="row">팀원수</th>
						<td>10/22</td>
						<th scope="row">실력</th>
						<td>중상</td>
					</tr>
					<tr>
						<th scope="row">지역</th>
						<td>대구 서구</td>
						<th scope="row">승률</th>
						<td>75%</td>
					</tr>
					 <tr>
				      <th scope="row">경기유형</th>
				      <td colspan="3">축구</td>
				    </tr>
					 <tr>
				      <th scope="row">팀 소개</th>
				      <td colspan="3">어서 옵쇼 하하하하하</td>
				    </tr>
			</table>
		</div>
		
		<div style="float:left; margin-left:10%">
			<table class="table table-hover">
				<thead>
					<tr class="table-secondary">
						<th scope="col">#</th>
						<th scope="col">이름</th>
						<th scope="col">포지션</th>
						<th scope="col">역할</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div style="float:bottom">
		<button type="button" class="btn btn-primary">팀 정보 변경</button>
		</div>
	</div>
</body>
</html>