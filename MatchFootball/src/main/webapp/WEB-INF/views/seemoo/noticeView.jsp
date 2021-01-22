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
<div style="margin-bottom: 100px]">
     <form id="form1" class="form-horizontal" method="post">
				<div align="center" id="mdiv">
					<table class="table">
						<tbody>
							<tr>
								<td></td>
								<td>제목</td>
								<td><input style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
 									name="n_title" type="text" style="width: 930px" value="${noticeView.n_title }" readonly="readonly"></td>
							</tr>
							<tr>	
								<td></td>
								<td>날짜</td>
								<td><input style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
 									name="n_title" type="text" name="n_title" type="text" style="width: 930px" value="${noticeView.n_date }" readonly="readonly"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div align="center">
					<textarea id="summernote" name="n_comm" style="width: 1000px" disabled >${noticeView.n_comm }</textarea><br> 
						<button type="submit" onclick="javascript: form.action='${pageContext.request.contextPath}/notice'" class="btn btn-primary" id="btnInsert">목록으로</button> 
				</div>
			</form>
		</div>
		<br>
		<br>
		<div style="margin-top: 100px">
		<!-- 댓글 -->
		<c:if test="${sessionScope.id ne null }">
		   <form method="post">
			   <div class="mb-3" style="padding-left: 450px">
					<input type="text" value="${noticeView.n_no }" name="n_no" style="display: none">
			   		<input type="text" value="${sessionScope.id }" name="id" style="display:none">
			   	<div style="float:left; width: 1000px;">
			    	<input type="text" class="form-control" name="n_comm" placeholder="댓글을 입력하세요.">
			   	</div>
			    	<button type="submit" class="btn btn-primary" 
			    	 onclick="javascript: form.action='${pageContext.request.contextPath}/nboardinsert'" style="margin-left:10px">댓글작성</button>
			   </div>
		    </form>
	    </c:if>
	    
			<div class="progress-table" align="center" style="margin-left: 315px; padding-bottom:44px; width: 70%; height: 1000px">
				<div class="aa">
				<c:forEach items="${nboardselect}" var="nboardselect">
						<div class="table-row">
						<div class="serial" style="margin-right: 315px;">${nboardselect.n_comm}</div>
							<div class="serial" style="width: 100px">${nboardselect.id}</div>
							<div class="visit" style="width: 100px">${nboardselect.n_date}</div>
						    <form method="post">
							<input type="text" value="${noticeView.n_no }" name="n_no"  style="display: none">
						    <input type="text" value="${sessionScope.id }" name="id"  style="display: none">
							<input type="text" value="${nboardselect.n_seq }" name="n_seq"  style="display: none">
						<c:if test="${sessionScope.id eq nboardselect.id }">
							<button type="submit" class="btn btn-danger" onclick="javascript: form.action='${pageContext.request.contextPath}/nboarddelete'" 
							style="margin-right: -60px; width: 60px;">삭제</button>
						</c:if>
							</form>
						</div>
				</c:forEach>
				</div>
			</div>
		</div>	
</body>
</html>