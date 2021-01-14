<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>공지사항 페이지</title>

<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">

<script>
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			height : 50, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : false, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
		});
	});
</script>

</head>

		<body style="padding-left: 600px; padding-top: 100px">
		
			<form id="form1" class="form-horizontal">
				<div align="center" id="mdiv" style="width: 100%">
				<div>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item">
						<a>유저 리뷰 작성페이지</a></li>
					<li class="breadcrumb-item active"></li>
					<a href="${pageContext.request.contextPath}/admin/teamreviewerite">팀 리뷰 작성페이지 이동</a>
				</ol>
		</div>
					<table class="table" style="width: 100%">
						<tbody>
							<tr>
								<td style="width: 20%">주심매니저</td>
								<td> : </td>
								<td><input type="hidden" name="manager_id" type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<td style="width: 20%">경기정보(장소)</td>
								<td> : </td>
								<td><input type="hidden" name="match_info" type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<td style="width: 20%">경기날짜</td>
								<td> : </td>
								<td><input type="hidden" name="match_date" type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<td style="width: 20%">매너별점</td>
								<td> : </td>
								<td><input type="hidden" name="score" type="text" style="width: 100%"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div align="center">
					<textarea id="summernote" name="n_comm"></textarea><br> 
						<input type="button" class="btn btn-primary" value="등록" id="btnInsert" /> 
						<input type="button" class="btn btn-primary" value="수정" id="btnUpdate" /> 
						<input type="button" class="btn btn btn-danger" value="초기화" id="btnInit" />
				</div>
			</form>
		</body>	
</html>