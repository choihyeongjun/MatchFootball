<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.size {
	width: 280px;
	height: 280px;
}
</style>
</head>
<body>
		<ul class="hi">
			<c:if test="${sessionScope.id ne null }">
				<li><a href="teamInfo?t_num=${sessionScope.t_num }">팀 정보</a></li>
			</c:if>
			<c:if test="${sessionScope.id eq null }">
				<li><a href="teamMake">팀 생성</a></li>
			</c:if>
			<li><a href="teamGallery?t_num=${sessionScope.t_num }">팀갤러리</a></li>
			<li><a href="teamNotice?t_num=${sessionScope.t_num }">팀 공지</a></li>
			<li><a href="teamInvite?t_num=${sessionScope.t_num }">팀 초대</a></li>
			<li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
		</ul>
		<div align="center" style="padding-bottom: 606px">
			<div>
				<h1>팀 정 보</h1>
			</div>
			<hr />
			<div style="float: left; margin-left: 30%">
				<table class="table table-bordered">
					<tr>
						<th>${teamInfo.t_name}</th>
					</tr>
				</table>
				<img class="size" src="images/${teamInfo.t_logo }"
					class="img-thumbnail" width="350px" height="350px"> <input
					type="text" name="t_num" value="${teamInfo.t_num }"
					style="display: none" />
				<table class="table table-bordered">
					<tr>
						<th scope="row">경기유형</th>
						<td>${teamInfo.t_type }</td>
						<th scope="col">연령대</th>
						<td>${teamInfo.t_age }</td>
					</tr>
					<tr>
						<th scope="row">팀원수</th>
						<td>${teamInfo.t_max }</td>
						<th scope="row">실력</th>
						<td>${teamInfo.t_type }</td>
					</tr>
					<tr>
						<th scope="row">지역</th>
						<td>${teamInfo.t_address }</td>
						<th scope="row">승률</th>
						<td>75%</td>
					</tr>
					<tr>
						<th scope="row">팀 소개</th>
						<td colspan="3">${teamInfo.t_info }</td>
					</tr>
				</table>
			</div>

			<div style="float: left; margin-left: 10%">
				<table class="table table-hover">
					<thead>
						<tr class="table-secondary">
							<th scope="col">ID</th>
							<th scope="col">이름</th>
							<th scope="col">포지션</th>
							<th scope="col">권한</th>
						</tr>
					</thead>
					<c:if test="${teamInfo.t_hidden eq 'Y' }">

						<c:forEach items="${teamMembers}" var="teamMembers">
							<tr>
								<td>${teamMembers.id }</td>
								<td>${memberss.name }
								<td>${memberss.pos }
								<td>${teamMembers.t_author }</td>
								<td>
								<form method="post">
								<input type="text" value="${teamMembers.id }" name="id" style="display:none">
								<input type="text" value="${members.t_num }" name="t_num" style="display:none">
								<c:if test="${teamMembers.t_author eq '팀원' && updateButton.t_author eq '팀장'}">
								<button type="submit" onclick="javascript: form.action='${pageContext.request.contextPath}/memberOut'">추방</button>
								</c:if>
								</form>
								</td>
							</tr>
						</c:forEach>

					</c:if>
					<c:if test="${teamInfo.t_hidden ne 'Y' }">
						<tbody align="center">
							<tr>
								<td colspan="3">비공개</td>
							</tr>
						</tbody>
					</c:if>
				</table>
			</div>
			<div style="float: bottom">
				<c:if test="${updateButton.t_author eq '팀장' }">
					<button type="submit" class="btn btn-primary"
						onclick="location.href='teamUpdate?t_num=${teamInfo.t_num}'">팀 정보 변경</button>
				</c:if>
					<form action="teamListOut?t_num=${teamInfo.t_num }">
					<input type="text" value="${teamInfo.t_num }" name="t_num" style="display:none">
					<c:if test="${members.t_num ne null && updateButton.t_author ne '팀장'}">
					<button type="submit">팀 탈퇴</button>
					</c:if>
					</form>
			</div>
		</div>

	<form action="teamInviteInsert?t_num=${teamInfo.t_num}" method="post">
		<c:if test="${members.t_num eq null}">
			<input type="text" value=${sessionScope.id } name="id"
				style="display: none">
			<input type="text" value=${members.pos } name="i_pos"
				style="display: none">
			<input type="text" value=${members.lv } name="i_lv"
				style="display: none">
			<input type="text" value=${members.manner } name="i_manner"
				style="display: none">
			<button type="submit" class="btn btn-primary">팀 가입 신청</button>
		</c:if>
	</form>
</body>
</html>