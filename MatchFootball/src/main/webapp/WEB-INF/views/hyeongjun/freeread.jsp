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
	<form id="form1" class="form-horizontal" method="post">
		<div align="center" id="mdiv" style="width: 100%">
			<table class="table" style="width: 100%">
				<tbody>
					<td>id:${select.id}</td>
					<tr>
						
						<td align="center" style="width: 20%">제목</td>
						<td><input name="title" type="text" style="width: 100%"
							<c:if test="${sessionScope.id ne select.id }">readonly="readonly"</c:if> value="${select.title}"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div align="center">
		<c:if test="${sessionScope.id eq select.id }">
			<textarea id="summernote" name="comm" >${select.comm}</textarea>
		</c:if>
		<c:if test="${sessionScope.id ne select.id }">
			<textarea  name="comm" readonly>${select.comm}</textarea>
		</c:if>
		<br>
			<c:if test="${sessionScope.id eq select.id}">
			<button type="submit" class="btn btn-primary" id="btnUpdate" onclick="javascript: form.action='${pageContext.request.contextPath}/freeupdate'">수정</button>
			<button type="reset" class="btn btn-primary" id="btnInit" onclick="javascript: form.action='${pageContext.request.contextPath}/freedelete'">삭제</button>
			</c:if>
			<button type="submit" class="btn btn-primary" id="btngoback" onclick="javascript: form.action='${pageContext.request.contextPath}/free'">돌아가기</button>
		</div>
	</form>
</body>
</html>