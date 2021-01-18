<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<title>���� ���</title>
</head>
<body>
	<ul class="hi">
	  		<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamInfo?t_num=${sessionScope.t_num }">�� ����</a></li>
			</c:if>
			<c:if test="${sessionScope.t_num eq null }">
			<li><a href="teamMake">�� ����</a></li>
			</c:if>
			<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamGallery?t_num=${sessionScope.t_num }">��������</a></li>
			</c:if>
			<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamNotice?t_num=${sessionScope.t_num }">�� ����</a></li>
			</c:if>
			<c:if test="${sessionScope.t_num ne null }">
			<li><a href="teamInvite?t_num=${sessionScope.t_num }">�� �ʴ�</a></li>
			</c:if>
			<li><a href="http://localhost/MatchFootball/teamList">�� ����Ʈ</a></li>
	</ul>
	<div align="center">
		<div>
			<h1>�� ���� ����</h1>
		</div>
		<hr />
	</div>
	<form action="teamNoticeUpdatee" method="post"
		encType="multipart/form-data">
		<article>
			<div class="container" role="main">
					<div class="mb-3">
						<label for="title">����</label> <input type="text"
							class="form-control" name="t_title" value="${teamNoticeInfo.t_title }"
							placeholder="������ �Է��� �ּ���">
					</div>
					<div class="mb-3">

						<label for="reg_id">�ۼ���</label> <input type="text"
							class="form-control" name="t_id" id="reg_id" value="${sessionScope.id }"
							placeholder="�̸��� �Է��� �ּ���" readonly>
					</div>
					<div class="mb-3">
						<label for="content">����</label>
						<textarea class="form-control" rows="5" name="t_content" 
							id="content" placeholder="������ �Է��� �ּ���">${teamNoticeInfo.t_content }</textarea>
					</div>
					<input type="text" name="t_num" value="${teamNoticeInfo.t_num }" style="display:none">
					<input type="text" name="n_no" value="${teamNoticeInfo.n_no }" style="display:none">
				<div>
					<button type="submit" class="btn btn-sm btn-primary" id="btnSave">����</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnList" onclick="history.back(-1)">���</button>
				</div>
			</div>
		</article>
	</form>
</body>
</html>