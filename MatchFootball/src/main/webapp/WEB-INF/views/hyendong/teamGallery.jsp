<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Oswald:400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/jquery.fancybox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamGallery/fonts/flaticon/font/flaticon.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<form action="teamGalleryInsert" method="post" encType="multipart/form-data">
	<ul class="hi">
	  <c:if test="${sessionScope.id ne null }">
			<li><a href="myTeamInfo?t_num=${member.t_num }">팀 정보</a></li>
			</c:if>
			<c:if test="${sessionScope.id eq null }">
			<li><a href="teamMake">팀 생성</a></li>
			</c:if>
			<li><a href="teamGallery?t_num=${member.t_num }">팀갤러리</a></li>
			<li><a href="teamNotice?t_num=${member.t_num }">팀 공지</a></li>
			<li><a href="http://localhost/MatchFootball/teamInvite">팀 초대</a></li>
			<li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
	</ul>
	<div align="center">
		<div>
			<h1>팀 갤러리</h1>
		</div>
		<hr />
	</div>
	<input type="text" name="t_num" value="${teamInfo.t_num }">
	<input type="submit" value="등록">
	<input type="file" name="file">
	<div class="site-section">
		<div class="container">
			<div class="row">
			<c:forEach items="${teamGallery }" var="teamGallery">
				<div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
					<a href="${pageContext.request.contextPath}/images/${teamGallery.img }" data-fancybox="gal"><img
						src="${pageContext.request.contextPath}/images/${teamGallery.img }" alt="Image" class="img-fluid" style="height: 270px; width: 300px"></a>
				</div>
			</c:forEach>
			</div>
		</div>
	</div>
	</form>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/jquery.fancybox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/aos.js"></script>

	<script src="${pageContext.request.contextPath}/resources/css/teamGallery/js/main.js"></script>
</body>
</html>