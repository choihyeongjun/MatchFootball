<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>유저관리페이지</title>

<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<!-- 모달 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.userProfileImg {
	width: 100%;
	display: inline;
	border-radius: 10px;
	float: left;
}

.userInfoTable {
	width: 50%;
	font-size: 25px;
}
</style>

</head>

<body class="sb-nav-fixed">
<body>
	<!-- 공지사항 -->
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">유저페이지</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="#">매니저신청현황</a></li>
					<li class="breadcrumb-item active"></li>
				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> 공지사항
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th style="width: 10px;">No.</th>
										<th style="text-align: center;">ID</th>
										<th style="text-align: center;">Name</th>
										<th style="text-align: center;">권한</th>
										<th style="text-align: center;">매너점수</th>
										<th style="text-align: center;">포인트</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th style="text-align: center;">No.</th>
										<th style="text-align: center;">ID</th>
										<th style="text-align: center;">Name</th>
										<th style="text-align: center;">권한</th>
										<th style="text-align: center;">매너점수</th>
										<th style="text-align: center;">포인트</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${members}" var="member">
										<tr>
											<td style="text-align: center;">1</td>
											<td style="text-align: center;"><a data-toggle="modal"
												data-target="#myModal">${member.id}</a></td>
											<td style="text-align: center;">${member.name}</td>
											<td style="text-align: center;"><select name="job">
													<option value="" selected="selected">선택</option>
													<option value="일반회원">일반회원</option>
													<option value="용병">용병</option>
											</select></td>
											<td style="text-align: center;">${member.manner}</td>
											<td style="text-align: center;">${member.point}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</main>

		<!-- The Modal -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h2 class="modal-title">땡땡님의 프로필 정보</h2>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">

						<div align="center">
							<img class="userProfileImg" alt="유저이미지" 
							src="${pageContext.request.contextPath}/resources/seemoo/img/1.jpg">
								<table class="userInfoTable" align="center">
									<tr>
										<th>아이디</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>이름</th>
										<td>:</td>
										<td>&nbsp;디디디디
										</td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>성별</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>연락처</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>권한</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>팀이름</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
									<tr>
										<th>포인트</th>
										<td>:</td>
										<td>&nbsp;디디디디</td>
									</tr>
								</table>
							</div>
						</div>


					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">수정</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
					</div>

				</div>
			</div>
		</div>
	</div>
</html>