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
	content: '��';
	padding: 0 2px;
	color: #999;
}
</style>
</head>
<body>
	<ul class="hi">
		<li><a href="http://localhost/MatchFootball/teamInfo">�� ����</a></li>
		<li><a href="http://localhost/MatchFootball/teamGallery">��
				������</a></li>
		<li><a href="http://localhost/MatchFootball/teamNotice">�� ����</a></li>
		<li><a href="http://localhost/MatchFootball/#">�� �ʴ�</a></li>
		<li><a href="http://localhost/MatchFootball/#">�� ����Ʈ</a></li>
	</ul>
	<div align="center">
		<h1>�� �� ��</h1>
		<hr>
	</div>
		<div class="contentWrapper">
			<div class="articleTitle">
				<h1>�� ������ �� ��� ���� ����</h1>
			</div>
			<div class="articleBody">
				<pre>�ο��� ���� ��ġ�� �����ϳ� ���� ���� ��Ȳ�� ���� ���� �� �� ������ ��ġ�� �Ұ����� �� 1�ð� 30�� �������� �ȳ� �帮�� �ֽ��ϴ�.</pre>
				<ul class="helpTagWrap">
					<li><a href="/cs/search/%EB%88%88/">��</a></li>
					<li><a href="/cs/search/%20%EA%B8%B0%EC%83%81%EC%95%85%ED%99%94/">����ȭ</a></li>
				</ul>
			</div>
			<br>
			<button type="button" class="btn btn-primary">���</button>
			<button type="button" class="btn btn-primary">����</button>
			<button type="button" class="btn btn-primary">����</button>
		</div>
</body>
</html>