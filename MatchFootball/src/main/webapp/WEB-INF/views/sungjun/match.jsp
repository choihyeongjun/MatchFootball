<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
 <div class="container">
	<table class="table table-hover">
		<tbody>
			<tr>
				<td scope="col" align="center" style="font-weight: bold">?? 개의 매치</td>
				<th scope="col"></th>
				<th scope="col" align="center"><button type="button" class="btn btn-light">모든 매치</button></th>
			</tr>
			<tr>
				<td scope="row" align="center" style="font-weight: bold">시간</td>
				<td><div >경기장 이름</div>
					<div >경기 정보</div></td>
				<td align="center"><button type="button" class="btn btn-info" >신청 가능</button></button></td>
			</tr>
			<tr>
				<td scope="row" align="center" style="font-weight: bold">13:00</td>
				<td><div >대구 성준 풋살장</div>
					<div >남성 6vs6매치 일반1~3Lv</div></td>
				<td align="center"><button type="button" class="btn btn-danger" >매칭 완료</button></td>
			</tr>
		</tbody>
	</table>


	<div>
		<ul>
			<li>
			<a style ="display:flex;">
			<div style="padding-right: 10px;"><p>시간</p></div>
			<div>
			<div>경기장 이름</div>
			<div>경기정보</div>
			</div>
			<div align="center"><button type="button" align="center">매칭 완료</button></div>
			</a>
			</li>
		</ul>
	</div>
</div>
</body>
</html>