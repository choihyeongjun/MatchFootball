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
		<div class="col">
			<div>
				<h3>팀 매치 경기 일정</h3>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">이름</th>
						<th scope="col">연락처</th>
						<th scope="col">LV</th>
						<th scope="col">포지션</th>
						<th scope="col">성별</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="matchmember" items="${matchmember }">
						<tr>
							<th style="padding: 10px;" scope="row">${matchmember.id }</th>
							<td style="padding: 10px;">${matchmember.name }</td>
							<td style="padding: 10px;">${matchmember.pnum }</td>
							<td style="padding: 10px;">${matchmember.lv }</td>
							<td style="padding: 10px;">${matchmember.pos }</td>
							<td style="padding: 10px;">${matchmember.gender }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>