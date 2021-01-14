<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 초대</title>
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
	<div style="padding-bottom: 150px;">
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
	<div class="card mb-4" style="width: 60%; float: left;">
		<div class="card-header">
			<i class="fas fa-table mr-1"></i> 전체 회원 목록
		</div>
		<div class="card-body" >
			<div class="table-responsive">
				<div class="container" style="float: left;">
					<table class="table table-bordered" id="dataTable" >
						<thead>
							<tr style="width: 10px">
								<th>아이디</th>
								<th>이름</th>
								<th>성별</th>
								<th>주소</th>
								<th>매너도</th>
								<th>실력</th>
								<th>포지션</th>
								<th>초대</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="f" items="${members}">
                     <tr>
                        <td>${f.id}</td>
                        <td>${f.name}</td>
                        <td>${f.gender}</td>
                        <td>${f.location1}</td>
                        <td>${f.manner}</td>
                        <td>${f.lv}</td>
                        <td>${f.pos}</td>
                        <td><button type="button" id="button">팀초대</button></td>
                     </tr>
                     
                    </c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<h2 class="table text-center">팀 가입 현황</h2>
	<br>
	<div class="container" style="float: left; width: 40%">
		<table class="table text-center">
			<tr class="tr1">
				<th class="text-center">아이디</th>
				<th class="text-center">나이</th>
				<th class="text-center">포지션</th>
				<th class="text-center">실력</th>
				<th class="text-center">매 너 도</th>
				<th class="text-center">초대</th>
			</tr>
			<tbody>
				<c:forEach items="${tinvite }" var="tinvite">
					<tr>
						<td class="text-center">${tinvite.id}</td>
						<td class="text-center">${tinvite.i_age}</td>
						<td class="text-center">${tinvite.i_pos}</td>
						<td class="text-center">${tinvite.i_lv}</td>
						<td class="text-center">${tinvite.i_manner}</td>
						<c:if test="${updateButton.t_author eq '팀장' }">
							<td>
								<form method="post">
									<input type="text" value="${sessionScope.t_num }" name="t_num"
										style="display: none"> <input type="text"
										value="${tinvite.id }" name="id" style="display: none">
									<input type="text" value="팀원" name="t_author"
										style="display: none">
									<button type="submit" id="btnSelect"
										onclick="javascript: form.action='${pageContext.request.contextPath}/teamListInsert'">수락</button>
									<button type="submit" id="btnSelect"
										onclick="javascript: form.action='${pageContext.request.contextPath}/teamInviteDelete'">거절</button>
								</form>
							</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
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
