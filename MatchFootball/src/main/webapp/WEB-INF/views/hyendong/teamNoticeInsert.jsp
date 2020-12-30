<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<title>공지 등록</title>
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
		<div>
			<h1>팀 공지 등록</h1>
		</div>
		<hr />
	</div>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/board/saveBoard">
				<div class="mb-3">
					<label for="title">제목</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">

					<label for="reg_id">작성자</label> <input type="text"
						class="form-control" name="reg_id" id="reg_id"
						placeholder="이름을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content"
						placeholder="내용을 입력해 주세요"></textarea>
				</div>
				<div class="mb-3">
					<label for="tag">TAG</label> <input type="text"
						class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">
				</div>
			</form>
			<div>
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
	</article>
</body>
</html>