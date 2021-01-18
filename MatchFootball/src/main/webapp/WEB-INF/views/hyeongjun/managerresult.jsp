<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매니저 신청 결과</title>
</head>
<body>
<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">매니저 매치 신청리스트</h1>
				<div class="card mb-4">

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>게임 타입</th>
										<th>경기장 주소</th>
										<th>상세주소</th>
										<th>게임 시작시간</th>
										<th>게임 종료시간</th>
										<th>승인여부</th>
									
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${list}" var="i">
									<form id="dd">
										<tr>
											<td>${i.type}</td>
											<td>${i.f_name}</td>
											<td>${i.f_address}</td>
											<td>${i.m_date}</td>
											<td>${i.m_hour}</td>
											<td>${i.chk}</td>		
										</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>