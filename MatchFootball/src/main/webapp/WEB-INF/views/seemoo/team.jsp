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

<title>팀관리페이지</title>

</head>
		<body>
		
		<!--팀관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">팀관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="#">경기일정</a></li>
						<li class="breadcrumb-item active">월별 경기일정 및 토너먼트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							무엇을 적을까? <a target="_blank" href="https://datatables.net/">무엇을 적을까</a> .
						</div>
					</div>
					
					<!-- 팀현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 현재 팀 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th></th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<th>팀승률</th>
											<th>팀권한</th>
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
											<td>
											<input type="button" value="상세프로필" onclick="">
											<input type="button" value="수정" onclick="">
											<input type="button" value="삭제" onclick="">
											</td>
											
										</tr>
										<tr>
											<td>2</td>
											<td>도은와 성준</td>
											<td>허성준</td>
											<td>2</td>
											<td></td>
											<td>
											<input type="button" value="상세프로필" onclick="">
											<input type="button" value="수정" onclick="">
											<input type="button" value="삭제" onclick="">
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>현동와 재형이</td>
											<td>김현동</td>
											<td>7</td>
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
					
					<!-- 블랙리스트 팀관리 -->
						<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 블랙리스트 팀현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<td>팀인원</td>
											<th>블랙사유</th>
											<th>남은기간</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<td>팀인원</td>
											<th>블랙사유</th>
											<th>남은기간</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td>앰팽깡</td>
											<td>염평강</td>
											<td>11</td>
											<td>지랄맞아서</td>
											<td>12일</td>
											<td width="10"><input type="button" value="복귀" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>2</td>
											<td>북한김정은</td>
											<td>이정은</td>
											<td>11</td>
											<td>남한적화통일</td>
											<td>12일</td>
											<td width="10"><input type="button" value="복귀" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>3</td>
											<td>똥광희</td>
											<td>동광희</td>
											<td>11</td>
											<td>찡찡밥먹자고찡찡</td>
											<td>12일</td>
											<td width="10"><input type="button" value="복귀" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
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