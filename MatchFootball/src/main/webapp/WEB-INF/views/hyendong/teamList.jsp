<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- c��ũ ����Ҷ� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<!-- CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/animate-3.7.0.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/fonts/flat-icon/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/owl-carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">
</head>
<body>
	<ul class="hi">
		<li><a href="http://localhost/MatchFootball/teamInfo">�� ����</a></li>
		<li><a href="http://localhost/MatchFootball/teamGallery">��
				������</a></li>
		<li><a href="http://localhost/MatchFootball/teamNotice">�� ����</a></li>
		<li><a href="http://localhost/MatchFootball/#">�� �ʴ�</a></li>
		<li><a href="http://localhost/MatchFootball/#">�� ����Ʈ</a></li>
	</ul>
	<div align="center">
	<br>
		<h3>�� ����Ʈ</h3>
		<hr>
	</div>
	<div class="progress-table" align="center"
		style="margin-left: 670px; width: 50%">
		<div class="table-head" style="margin-right: 150px">
			<div class="country">#</div>
			<div class="country">����</div>
			<div class="country">�������</div>
			<div class="country">������</div>
		</div>

		<c:forEach items="${teamList }" var="teamList">
			<div class="table-row" >
				<div class="serial">${teamList.t_num}</div>
				<div class="country">
					<img src="${pageContext.request.contextPath}/resources/css/dong1/assets/images/elements/f1.jpg">${teamList.t_name}
				</div>
				<div class="visit">${teamList.t_type}</div>
				<div class="visit">&nbsp;&nbsp;&nbsp;&nbsp;�ο�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18 / ${teamList.t_max}<br>��� ����&nbsp;&nbsp;&nbsp;${teamList.t_age }<br>��� ����&nbsp;&nbsp;&nbsp;${teamList.t_type }</div>
			</div>
		</c:forEach>
	</div>
	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/bootstrap-4.1.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/owl-carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/main.js"></script>
</body>
</html>