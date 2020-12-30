<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<style>

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
	  <li><a href="http://localhost/MatchFootball/teamInfo">팀 정보</a></li>
	  <li><a href="http://localhost/MatchFootball/teamGallery">팀 갤러리</a></li>
	  <li><a href="http://localhost/MatchFootball/teamNotice">팀 공지</a></li>
	  <li><a href="http://localhost/MatchFootball/teamInvite">팀 초대</a></li>
	  <li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
	</ul>
	<div align="center">
		<h1>팀 공 지</h1>
	</div>
<div class="topicList">
      <ul>
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
        
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
        
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
        
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
        
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
        
          <li>
            <a href="#">
              <h2>{여기에 제목 넣기}</h2>
            </a>
          </li>
      </ul>
    </div>
    <div align="center">
    	<button type="button" class="btn btn-primary">공지 등록</button>
    </div>
</body>
</html>