<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<style>
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

li {
	list-style: none;
}

.topicList {
	margin: 20px;
}

.topicList ul li {
	border-bottom: 1px solid #eee;
}

.topicList ul li a {
	font-size: 16px;
	display: block;
	padding: 12px 0;
	word-break: keep-all;
}

.topicList ul li p {
	font-size: 12px;
	color: #999;
}

.topicList ul li h2 {
	font-size: 15px;
	font-weight: 400;
	letter-spacing: -0.4px;
}
</style>
</head>
<body>
	<ul class="hi">
	  <c:if test="${sessionScope.id ne null }">
			<li><a href="myTeamInfo?t_num=${member.t_num }">팀 정보</a></li>
			</c:if>
			<c:if test="${sessionScope.id eq null }">
			<li><a href="teamMake">팀 생성</a></li>
			</c:if>
			<li><a href="teamGallery?t_num=${member.t_num }">팀갤러리</a></li>
			<li><a href="teamNotice?t_num=${teamInfo.t_num }">팀 공지</a></li>
			<li><a href="http://localhost/MatchFootball/teamInvite">팀 초대</a></li>
			<li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
	</ul>
	<div align="center">
		<h1>팀 공 지</h1>
	</div>
	<div class="topicList" style="height: 643px">
		<c:forEach items="${teamNotice }" var="teamNotice">
			<ul>
				<li><a href="teamNoticeInfo?n_no=${teamNotice.n_no }&t_num=${teamNotice.t_num}">
						<h2>${teamNotice.t_title}</h2>
				</a></li>
			</ul>
		</c:forEach>
	</div>
	<div align="center">
		<c:if test="${updateButton.t_author eq '팀장' }">
		<button type="button" class="btn btn-primary" onclick="location.href='teamNoticeInsert?t_num=${teamInfo.t_num}'" >공지 등록</button>
		</c:if>
	</div>
</body>
</html>