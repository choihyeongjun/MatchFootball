<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>블랙리스트팀관리페이지</title>

</head>
		<body>
		
		<!--팀관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">블랙리스트 팀관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/team">팀관리</a></li>
						<li class="breadcrumb-item active">블랙리스트 팀관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							무엇을 적을까? <a target="_blank" href="https://datatables.net/">무엇을 적을까</a> .
						</div>
					</div>
					
					<!-- 팀현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 블랙리스트 팀현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th style="width: 300px;">팀이름</th>
											<th>팀레벨</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th>정지날짜</th>
											<th style="width: 500px;">블랙사유</th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀레벨</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th>정지날짜</th>
											<th>블랙사유</th>
										</tr>
									</tfoot>
									<tbody align="center">
									<c:forEach items="${teams}" var="team">
										<tr>
											<td>1</td>
											<td>${team.t_name}</td>
											<td>${team.t_level}</td>
											<td>
												<select name="job">
													<option value="" selected="selected">선택</option>
													<option value="일반">일반</option>
													<option value="블랙">블랙</option>
												</select>
											</td>
											<td>${team.t_m}</td>
											<td></td>
											<td></td>
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