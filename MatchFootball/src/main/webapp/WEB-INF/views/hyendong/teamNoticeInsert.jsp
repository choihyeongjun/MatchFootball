<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<title>���� ���</title>
</head>
<body>
	<ul class="hi">
      <li><a href="http://localhost/MatchFootball/teamInfo">�� ����</a></li>
	  <li><a href="http://localhost/MatchFootball/teamGallery">�� ������</a></li>
	  <li><a href="http://localhost/MatchFootball/teamNotice">�� ����</a></li>
	  <li><a href="http://localhost/MatchFootball/teamInvite">�� �ʴ�</a></li>
	  <li><a href="http://localhost/MatchFootball/teamList">�� ����Ʈ</a></li>
	</ul>
	<div align="center">
		<div>
			<h1>�� ���� ���</h1>
		</div>
		<hr />
	</div>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/board/saveBoard">
				<div class="mb-3">
					<label for="title">����</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="������ �Է��� �ּ���">
				</div>
				<div class="mb-3">

					<label for="reg_id">�ۼ���</label> <input type="text"
						class="form-control" name="reg_id" id="reg_id"
						placeholder="�̸��� �Է��� �ּ���">
				</div>
				<div class="mb-3">
					<label for="content">����</label>
					<textarea class="form-control" rows="5" name="content" id="content"
						placeholder="������ �Է��� �ּ���"></textarea>
				</div>
				<div class="mb-3">
					<label for="tag">TAG</label> <input type="text"
						class="form-control" name="tag" id="tag" placeholder="�±׸� �Է��� �ּ���">
				</div>
			</form>
			<div>
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">����</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">���</button>
			</div>
		</div>
	</article>
</body>
</html>