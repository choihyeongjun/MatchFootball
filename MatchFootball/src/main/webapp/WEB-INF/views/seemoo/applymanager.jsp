<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>매니저관리페이지</title>

</head>
<body>
	<!-- 매니저관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">매니저 신청 승인대기</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/manager">매니저관리</a></li>
						<li class="breadcrumb-item active">매니저 신청관리 및 현재 매니저현황</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							 <a target="_blank" href="https://www.youtube.com/watch?v=hSEcM3McYyM">매니저 지원 영상</a>
							 <a>/</a>
							 <a target="_blank" href="https://www.kfa.or.kr/img_src/data_rule/2016futsal_laws.pdf">공식 경기규칙</a>
						</div>
					</div>
					
					<!-- 매니저 승인대기 현황 -->
						<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 매니저 승인대기 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th>ID</th>
											<th>Name</th>
											<th>연락처</th>
											<th>권한</th>
											<th>포부</th>
											<th>설문지</th>
											<th>이미지</th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>ID</th>
											<th>Name</th>
											<th>연락처</th>
											<th>권한</th>
											<th>포부</th>
											<th>설문지</th>
											<th>이미지</th>
										</tr>
									</tfoot>
									<tbody align="center">
										<tr>
											<td>1</td>
											<td>형준</td>
											<td>최형준</td>
											<td>010-1111-1234</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>2</td>
											<td>도은</td>
											<td>김도은</td>
											<td>010-2222-1234</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>3</td>
											<td>현동</td>
											<td>김현동</td>
											<td>010-3333-1234</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
</body>
</html>