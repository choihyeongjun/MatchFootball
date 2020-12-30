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
					<h1 class="mt-4">매니저관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/applymanager">매니저신청 | 승인대기</a>
						<li class="breadcrumb-item active"></li>
						<a href="${pageContext.request.contextPath}/manageremploy">매니저지원페이지</a></li>
						</li>
					</ol>
					
					<div class="card mb-4">
						<div class="card-body">
							 <a target="_blank" href="https://www.youtube.com/watch?v=hSEcM3McYyM">매니저 지원 영상</a>
							 <a>/</a>
							 <a target="_blank" href="https://www.kfa.or.kr/img_src/data_rule/2016futsal_laws.pdf">공식 경기규칙</a>
						</div>
					</div>
					
					<!-- 매니저현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 매니저 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th style="width: 80px;">ID</th>
											<th>이름</th>
											<th>성별</th>
											<th>연락처</th>
											<th>권한</th>
											<th>심판내역</th>
											<th>포인트</th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>ID</th>
											<th>이름</th>
											<th>성별</th>
											<th>연락처</th>
											<th>권한</th>
											<th>심판내역</th>
											<th>포인트</th>
										</tr>
									</tfoot>
									<tbody align="center">
									<c:forEach items="${managers}" var="manager">
										<tr>
											<td></td>
											<td>${manager.id}</td>
											<td>${manager.name}</td>
											<td>${manager.gender}</td>
											<td>${manager.pnum}</td>
											<td>
												<select name="manager">
													<option value="" selected="selected">선택</option>
													<option value="일반회원">일반회원</option>
													<option value="매니저">매니저</option>
													<option value="매니저대기">매니저대기</option>
													<option value="매니저정지">매니저정지</option>
												</select>
											</td>
											<td>${manager.comm}</td>
											<td>${manager.point}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
</body>
</html>