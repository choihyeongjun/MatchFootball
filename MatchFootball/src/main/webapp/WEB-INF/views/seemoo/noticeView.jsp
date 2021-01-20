<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀공지페이지</title>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/json.min.js"></script>
<style>
footer { position: fixed; left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }
body #form1 { width: 1000px; height: 600px; margin: auto; margin-top: 20px; }
</style>
<script>
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			height : 500, // 에디터 높이
			width : 1000, 
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : false, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
		});
	});
</script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">
</head>
<body>
     <form id="form1" class="form-horizontal" method="post">
				<div align="center" id="mdiv">
					<table class="table">
						<tbody>
							<tr>
								<td>제</td>
								<td>목</td>
								<td><input name="n_title" type="text" style="width: 930px" value="${noticeView.n_title }" readonly="readonly"></td>
							</tr>
							<tr>	
								<td>날</td>
								<td>짜</td>
								<td><input name="n_title" type="text" style="width: 930px" value="${noticeView.n_date }" readonly="readonly"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div align="center">
					<textarea id="summernote" name="n_comm" style="width: 1000px" readonly="readonly">${noticeView.n_comm }</textarea><br> 
						<button type="submit" onclick="javascript: form.action='${pageContext.request.contextPath}/notice'" class="btn btn-primary" id="btnInsert">목록으로</button> 
				</div>
			</form>
</body>
</html>