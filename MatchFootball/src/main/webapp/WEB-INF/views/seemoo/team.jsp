<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="index.html">팀관리 페이지</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		
		<!--Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
		
		<!--ABC-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" 
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">세팅</a> 
					<a class="dropdown-item" href="#">엑티비티 로그</a>
				<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="login.html">로그아웃</a>
				</div></li>
		</ul>
	</nav>
	
	<!--사이드 메뉴 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Home</div>
						<a class="nav-link" href="${pageContext.request.contextPath}/admin">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 메인페이지
						</a>
						<div class="sb-sidenav-menu-heading">고객관리</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 고객관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${pageContext.request.contextPath}/admin/user">유저관리</a> 
								<a class="nav-link" href="${pageContext.request.contextPath}/admin/team">팀관리</a> 
								<a class="nav-link" href="${pageContext.request.contextPath}/admin/manager">매니저</a>
							</nav>
						</div>

						<div class="sb-sidenav-menu-heading">경기관리</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts1" aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 경기관리 <div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts1" aria-labelledby="heading" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">매치관리</a> 
								<a class="nav-link" href="#">토너먼트관리</a> 
								<a class="nav-link" href="#">경기장관리</a>
							</nav>
						</div>

						<div class="sb-sidenav-menu-heading">전체게시판</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 게시판 	<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						
						<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-toggle="collapse" 
								data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth"> 
								커뮤니티 <div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="#">공지사항</a> 
										<a class="nav-link" href="#">커뮤니티</a> 
										<a class="nav-link" href="#">리뷰관리</a>
									</nav>
								</div>
								
								<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError"> 
								쇼핑 <div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
									</div>
								</a>
								
								<div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="#">유니폼제작</a> 
										<a class="nav-link" href="#">유니폼판매</a> 
										<a class="nav-link" href="#">중고판매</a>
									</nav>
								</div>

							</nav>
						</div>
						
						<!-- 수익관리 -->
						<div class="sb-sidenav-menu-heading">통계관리</div>
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 통계관리 </a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>

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
									<thead>
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<th>팀인원</th>
											<th>팀승률</th>
											<th>팀권한</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀주장</th>
											<th>팀인원</th>
											<th>팀승률</th>
											<th>팀권한</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td>형준와 아이들</td>
											<td>최형준</td>
											<td>11</td>
											<td></td>
											<td></td>
											<td width="10"><input type="button" value="상세프로필" onclick=""></td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>2</td>
											<td>도은와 성준</td>
											<td>허성준</td>
											<td>2</td>
											<td></td>
											<td></td>
											<td width="10"><input type="button" value="상세프로필" onclick=""></td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>3</td>
											<td>현동와 재형이</td>
											<td>김현동</td>
											<td>7</td>
											<td></td>
											<td></td>
											<td width="10"><input type="button" value="상세프로필" onclick=""></td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
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
			
			
			
			<!-- footer -->
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
			
			
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script> 
</body>
</html>