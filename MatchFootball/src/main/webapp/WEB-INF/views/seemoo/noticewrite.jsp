<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>공지사항 페이지</title>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/json.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">

<script> 
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			height : 500, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : false, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
		});
	});
</script>

</head>

<body style="padding-left: 650px; padding-top: 100px">
	<form id="form1" class="form-horizontal">
		<div align="center" id="mdiv" style="width: 100%">

			<table class="table" style="width: 100%">
				<tbody>
					<tr>
						<td align="center" style="width: 10%">분류</td>
						<td><select name="nq_category">
								<option value="공지사항">공지사항</option>
								<option value="자주묻는 질문" selected>자주묻는 질문</option>
						</select></td>
					</tr>
					<tr>
						<td align="center" style="width: 20%">제목</td>
						<td><input name="nq_title" type="text" style="width: 100%"></td>
					</tr>
					<tr>
						<td align="center" style="width: 20%">첨부파일</td>
						<td><input type="file" name="uploadFile" id="uf" />
							<div
								style="display: inline-block; position: relative; width: 300px; left: -210px; background: white;">
								<label id="la">선택한 파일 없음</label>
							</div> <input type="hidden" id="nq_no" name="nq_no"></td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div align="center">
			<textarea id="summernote" name="nq_content"></textarea><br> 
			<input type="button" class="btn btn-primary" value="등록" id="btnInsert" /> 
			<input type="button" class="btn btn-primary" value="수정" id="btnUpdate" /> 
			<input type="button" class="btn btn-primary" value="초기화" id="btnInit" />
		</div>
		
	</form>
</body>
</html>