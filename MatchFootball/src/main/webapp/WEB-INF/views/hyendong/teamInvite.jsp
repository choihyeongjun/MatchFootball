<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 초대</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel=" shortcut icon" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/image/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/fullcalendar.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap.min.css">
<link rel="stylesheet" href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/select2.min.css' />
<link rel="stylesheet" href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap-datetimepicker.min.css' />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footter.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style>
footer { position: fixed; left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }
#aa { position: fixed; left: 0; top: 0; width: 100%;}
#dataTable_filter{padding-left: 330px;}

div #modal-content {
    position: relative;
    display: flex;
    flex-direction: column;
    width: 1000px;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
}
div.modal-content { position: relative;
    display: flex;
    flex-direction: column;
    width: 1000px;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
}
</style>

</head>
<body>
	<div style="position: fixed; width: 99%; margin-left: -25px;">
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
			<div class="card-body">
				<div class="table-responsive">
					<div class="container" style="float: left; height: 650px;">
						<table class="table table-bordered" id="dataTable">
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
											<td><form action="inviteComeon" method="post">
												<input type="text" value=${sessionScope.id  } name="c_id" style="display:none"> 
												<input type="text" value=${f.id  } name="r_id" style="display:none"> 
												<input type="text" value="초대중" name="check1" style="display:none">
												<button type="submit" id="button">팀초대</button>
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<div class="modal-header">
						<h3 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;초대장</h3>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<form method="get"
						action="${pageContext.request.contextPath}/bollowsearch/ajax">
						<!-- Modal body -->
						<div class="modal-body" style="height: 300px">
							<table style="margin: 0% 4% 0% 4%">
								<tr>
									<td>제목:</td>
									<td style="width: 300px"><input id="title" name="title"
										type="text" style="width: 372px; margin: 1%"></td>
								</tr>
								<tr>
									<td>내용:</td>
									<td><textarea id="comm" name="comm" rows="4" cols="50"
											style="margin: 1%; resize: none;"></textarea></td>
								</tr>
							</table>
						</div>
					</form>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger" data-dismiss="modal">저장</button>
						<input type="reset" class="btn btn-danger" data-dismiss="modal"
							value="닫기">
					</div>
				</div>
			</div>
		</div>
		<div>
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
											<input type="text" value="${sessionScope.t_num }"
												name="t_num" style="display: none"> <input
												type="text" value="${tinvite.id }" name="id"
												style="display: none"> <input type="text" value="팀원"
												name="t_author" style="display: none">
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
