<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 초대</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">

</head>
<body>
	<div>
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
	</div>
	<div style="margin-bottom: 548px; margin-left: 450px; width: 50%" align="center">
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid">	
						<h1 class="mt-4">초대 리스트</h1>
						<div class="card mb-4">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable">
										<thead>
											<tr>
												<th>초대한 팀</th>
												<th>초대한 날짜</th>
												<th>버튼</th>
												<th>팀정보보기</th>
												
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${select }" var="select">
											<tr>
												<td>${select.c_tname }</td>
												<td>${select.c_tdate }</td>
												<td>
												<form method="post">
													<input type="text" value="${select.t_num }" name="t_num" style="display: none">
													<input type="text" value="${sessionScope.id }" name="id" style="display: none">
													<input type="text" value="팀원" name="t_author" style="display: none">
													<c:if test="${members.t_num eq null }">
													<button type="submit" onclick="javascript: form.action='${pageContext.request.contextPath}/inviteOk'">수락</button>
													<button type="submit" onclick="javascript: form.action='${pageContext.request.contextPath}/invitePass'">거절</button>
													</c:if>
												</form>
												</td>
												<td><button type="button" onclick="location.href='teamInfo?t_num=${select.t_num}'">해당 팀 보기</button></td>
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
	</div>
</body>
</html>
