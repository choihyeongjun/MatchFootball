<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn.sf {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	border-radius: 10px;
}

.btn.sff {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #999;
	color: white;
	border-radius: 10px;
}

.form-floating {
	margin: 10px 0 10px 0;
}
</style>
</head>
<body>
	<form action="matchmapply" id="matchmapply" name="matchmapply"
		method="post" style="padding: 10px 10px 0 10px;">
		<div style="text-align: center; margin-bottom: 20px;">
			<h2>매치 매니저 참가 신청</h2>
		</div>
		<div class="form-floating">
			<input class="form-control" placeholder="Leave" id="m_date" readonly
				value="${nomanagersel.m_date }"> <label
				for="floatingTextarea">매치 시간</label>
		</div>
		<div class="form-floating">
			<input class="form-control" placeholder="Leave" readonly
				value="${nomanagersel.f_name }"> <label
				for="floatingTextarea">구장 이름</label>
		</div>
		<div class="form-floating">
			<input class="form-control" placeholder="Leave" readonly
				value="${nomanagersel.f_address }"> <label
				for="floatingTextarea">위치</label>
		</div>
		<input type="hidden" name="id" value="${sessionScope.id }"> <input
			type="hidden" name="match_info" value="${nomanagersel.m_no }">

		<div style="text-align: center; margin-top: 25px;">
			<c:choose>
				<c:when test="${empty tmapplysel}">
					<button class="btn sf" type="submit">매니저 참가 신청</button>
				</c:when>
				<c:otherwise>
					<a class="btn sff" style="cursor: default;">신청 완료</a>
				</c:otherwise>
			</c:choose>
		</div>
	</form>
</body>
</html>