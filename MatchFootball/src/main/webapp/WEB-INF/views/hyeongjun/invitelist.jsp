<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">초대 리스트</h1>
				<div class="card mb-4">

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>초대한 ID</th>
										<th>초대한 날짜</th>
										<th>연락처</th>
										<th>제목</th>
										<th>내용</th>
										<th>팀이름</th>
										<th>수락여부</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${invite}" var="i">
										<tr>
											<td>${i.c_id}</td>
											<td>${i.s_date}</td>
											<td>${i.pnum}</td>
											<td>${i.title}</td>
											<td>${i.comm}</td>
											<td>${i.t_num}</td>
											
											
											<td width="10"><input type="button" value="프로필"
												onclick=""></td>
											<td width="10"><input type="button" value="수정"
												onclick=""></td>
											<td width="10"><input type="button" value="삭제"
												onclick=""></td>
										</tr>
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