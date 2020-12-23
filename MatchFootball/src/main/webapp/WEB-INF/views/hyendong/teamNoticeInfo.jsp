<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<style>
.contentWrapper {
	max-width: 1024px;
	margin: 0 auto;
	overflow: auto;
}
.contentWrapper.matchDetail {
	max-width: inherit;
	padding: 0;
}
.contentWrapper.matchDetail .matchWrap {
	max-width: 1024px;
	margin: 0 auto;
}
.contentWrapper.w480 {
	max-width: 480px;
	margin: 0 auto;
	padding-bottom: 0;
}
.contentWrapper {
}
.contentWrapper.acc {
	padding: 0 20px;
}
.articleTitle h1 {
    font-size: 22px;
    font-weight: 500;
}
.articleWrap {
	margin: 0 20px;
	padding: 20px 0;
}
.articleBody {
	border-bottom: 1px solid #ddd;
	padding: 20px 0;
	word-break: keep-all;
}
.articleBody pre {
	font-size: 15px;
	line-height: 22px;
	letter-spacing: -0.4px;
}
.articleBottom {
	padding: 20px 0;
}
.articleBottom p {
	margin-bottom: 15px;
	font-size: 18px;
	font-weight: 400;
}
.helpTagWrap {
	margin-top: 20px;
}
.helpTagWrap p {
	font-size: 14px;
}
.helpTagWrap li {
	display: inline-block;
}
.helpTagWrap li a {
	font-size: 14px;
	color: #999;
}
.helpTagWrap li:nth-child(2):before {
	display: none;
}
.helpTagWrap li:before {
	content: '·';
	padding: 0 2px;
	color: #999;
}
</style>
</head>
<body>
	<ul class="hi">
		<li><a href="http://localhost/MatchFootball/teamInfo">팀 정보</a></li>
		<li><a href="http://localhost/MatchFootball/teamGallery">팀
				갤러리</a></li>
		<li><a href="http://localhost/MatchFootball/teamNotice">팀 공지</a></li>
		<li><a href="http://localhost/MatchFootball/#">팀 초대</a></li>
		<li><a href="http://localhost/MatchFootball/#">팀 리스트</a></li>
	</ul>
	<div align="center">
		<h1>팀 공 지</h1>
		<hr>
	</div>
		<div class="contentWrapper">
			<div class="articleTitle">
				<h1>눈 내리는 날 경기 진행 여부</h1>
			</div>
			<div class="articleBody">
				<pre>인원이 모인 매치는 진행하나 구장 제설 상황에 따라 변동 될 수 있으며 매치가 불가능할 시 1시간 30분 전까지는 안내 드리고 있습니다.</pre>
				<ul class="helpTagWrap">
					<li><a href="/cs/search/%EB%88%88/">눈</a></li>
					<li><a href="/cs/search/%20%EA%B8%B0%EC%83%81%EC%95%85%ED%99%94/">기상악화</a></li>
				</ul>
			</div>
			<br>
			<button type="button" class="btn btn-primary">목록</button>
			<button type="button" class="btn btn-primary">수정</button>
			<button type="button" class="btn btn-primary">삭제</button>
		</div>
</body>
</html>