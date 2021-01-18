<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel=" shortcut icon"
	href="${pageContext.request.contextPath}/resources/hyeongjun/calander/image/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/fullcalendar.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/select2.min.css' />
<link rel="stylesheet"
	href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap-datetimepicker.min.css' />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/calander/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footter.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style>
footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	width: 100%;
	background: grey;
	color: white;
}
</style>
</head>
<body>
	<ul class="hi">
		<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamInfo?t_num=${sessionScope.t_num }">팀 정보</a></li>
		</c:if>
		<c:if test="${sessionScope.t_num eq null }">
			<li><a href="teamMake">팀 생성</a></li>
		</c:if>
		<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamGallery?t_num=${sessionScope.t_num }">팀갤러리</a></li>
		</c:if>
		<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamNotice?t_num=${sessionScope.t_num }">팀 공지</a></li>
		</c:if>
		<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamInvite?t_num=${sessionScope.t_num }">팀 초대</a></li>
		</c:if>
		<li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
	</ul>
	<div class="card mb-4">
		<div class="card-header">
			<i class="fas fa-table mr-1"></i> 팀매치 신청 내역
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<div class="container" style="float: left;">
					<table class="table table-bordered" id="dataTable">
						<thead>
							<tr align="center">
								<th>타입</th>
								<th>구장명</th>
								<th>상세 주소</th>
								<th>구장 가격</th>
								<th>경기 날짜</th>
								<th>경기 시간</th>
								<th>경기 취소 여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${match }" var="match">
								<tr>
									<td class="text-center">${match.mtype}</td>
									<td class="text-center">${match.f_name}</td>
									<td class="text-center">${match.f_address}</td>
									<td class="text-center">${match.price}</td>
									<td class="text-center">${match.m_date}</td>
									<td class="text-center">${match.m_hour}</td>
									<c:if test="${match.so_num eq null}">
									<td align="center"><form action="teamMatchDelete" method="post">
									<input type="text" value="${match.m_no }" name="m_no">
									<input type="submit" value="경기취소"></form></td>
									</c:if>
									<c:if test="${match.so_num ne null}">
									<td align="center"><input type="button" value="매칭완료" disabled="disabled"></td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/ko.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/bootstrap-datetimepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/addEvent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/editEvent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/etcSetting.js"></script>

	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>