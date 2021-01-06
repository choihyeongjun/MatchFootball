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

<title>쿠폰&포인트관리</title>

</head>
		<body>
		
		<!--팀관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">포인트관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="#">포인트관리</a></li>
						<li class="breadcrumb-item active">포인트관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							무엇을 적을까? <a target="_blank" href="#">포인트관리</a> .
						</div>
					</div>
					
					<!-- 팀현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 포인트관리
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th>팀이름</th>
											<th>팀평균레벨</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th></th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀평균레벨</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th></th>
										</tr>
									</tfoot>
									<tbody align="center">
										<tr>
											<td>1</td>
											<td>형준와 아이들</td>
											<td>최형준</td>
											<td>11</td>
											<td></td>
											<td></td>
											<td>
											<input type="button" value="상세프로필" onclick="">
											<input type="button" value="수정" onclick="">
											<input type="button" value="삭제" onclick="">
											</td>
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