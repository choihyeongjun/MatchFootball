<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<form id="form1" class="form-horizontal" action="${pageContext.request.contextPath}/free">
		<div align="center" id="mdiv" style="width: 100%">
			<table class="table" style="width: 100%">
				<tbody>
					<td>id:${select.id}</td>
					<tr>
						<td align="center" style="width: 20%">제목</td>
						<td><input name="title" type="text" style="width: 100%"
							value="${select.title}"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div align="center">
			<textarea id="summernote" name="comm" value="${select.comm}"></textarea>
			
			<br>
			<button type="submit" class="btn btn-primary" id="btnUpdate">수정</button>
			<c:if test="${select.id eq sessionScope.id}">
				<button type="reset" class="btn btn-primary" id="btnInit">삭제</button>
			</c:if>
			<button type="button" class="btn btn-primary" id="btngoback">돌아가기</button>
		</div>
	</form>
</body>
</html>