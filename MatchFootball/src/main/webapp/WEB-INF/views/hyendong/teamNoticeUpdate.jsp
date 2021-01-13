<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<title>공지 등록</title>
</head>
<body>
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
	<div align="center">
		<div>
			<h1>팀 공지 수정</h1>
		</div>
		<hr />
	</div>
	<form action="teamNoticeUpdatee" method="post"
		encType="multipart/form-data">
		<article>
			<div class="container" role="main">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="t_title" value="${teamNoticeInfo.t_title }"
							placeholder="제목을 입력해 주세요">
					</div>
					<div class="mb-3">

						<label for="reg_id">작성자</label> <input type="text"
							class="form-control" name="t_id" id="reg_id" value="${sessionScope.id }"
							placeholder="이름을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="content">내용</label>
						<textarea class="form-control" rows="5" name="t_content" 
							id="content" placeholder="내용을 입력해 주세요">${teamNoticeInfo.t_content }</textarea>
					</div>
					<input type="text" name="t_num" value="${teamNoticeInfo.t_num }">
					<input type="text" name="n_no" value="${teamNoticeInfo.n_no }">
				<div>
					<button type="submit" class="btn btn-sm btn-primary" id="btnSave">수정</button>
					<button type="reset" class="btn btn-sm btn-primary" id="btnList">취소</button>
				</div>
			</div>
		</article>
	</form>
</body>
</html>