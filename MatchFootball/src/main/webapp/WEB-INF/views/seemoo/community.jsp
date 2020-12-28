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

<title>커뮤니티 페이지</title>

</head>

<body>
	<!-- 커뮤니티 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">통합 커뮤니티</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="#">무엇을???</a></li>
						<li class="breadcrumb-item active">무엇을???</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							DataTables is a third party plugin that is used to generate the
							demo table below. For more information about DataTables, please
							visit the <a target="_blank" href="https://datatables.net/">official
								DataTables documentation</a> .
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 통합 커뮤니티
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td>형준</td>
											<td>최형준</td>
											<td>최행배</td>
											<td>2020.01.01</td>
											<td>10</td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>2</td>
											<td>도은</td>
											<td>김도은</td>
											<td>나무늘보</td>
											<td>2020.01.01</td>
											<td>10</td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
										<tr>
											<td>3</td>
											<td>현동</td>
											<td>김현동</td>
											<td>김텐동</td>
											<td>2020.01.01</td>
											<td>10</td>
											<td width="10"><input type="button" value="수정" onclick=""></td>
											<td width="10"><input type="button" value="삭제" onclick=""></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
			
			
			<div align="center">
			<select id="community" style="width: 120px">
  				<option value="1:1고객센터">1:1고객센터</option>
 				<option value="자유게시판">자유게시판</option>
			</select>
			</div>
</body>
</html>