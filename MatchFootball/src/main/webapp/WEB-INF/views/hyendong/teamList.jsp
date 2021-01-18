<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!-- c��ũ ����Ҷ� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<!-- CSS Files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/animate-3.7.0.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/fonts/flat-icon/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/owl-carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">

<style>
a { text-decoration: none; color: #ffffff }
.size { width: 50px; height: 50px }

#a2{   
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    width: 1000px;
    margin-left: -180px;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
}
#az{
   color: black;
}
.lili {
    padding: 3px 0 3px 0;
    text-indent: -30px;
    line-height: 170%;
    color: white;
    padding-left: 35px;
}

.aa a{
    text-decoration: none;
    color: black;
}
</style>
</head>
<body>
	<div style="padding-bottom: 70px; height: 91%">
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
			<li><a href="teamMatchList">����ġ ����</a></li>
			<li><a href="teamMatchStatus">�� �ʴ� ��Ȳ</a></li>
	</ul>
		<div align="center">
			<br>
			<h3>�� ����Ʈ</h3>
			<hr>
		</div>
		<div class="progress-table" align="center"
			style="margin-left: 570px; width: 50%">
			<div class="table-head" style="margin-right: 150px">
				<div class="serial" align="left">#</div>
				<div class="serial" align="left" style="margin-left: 30px">����</div>
				<div class="serial" align="left" style="margin-left: 120px">�������</div>
				<div class="serial" align="left" style="margin-left: 140px">������</div>
			</div>
			<div class="aa">
			<c:forEach items="${teamList }" var="teamList">
				<a href="teamInfo?t_num=${teamList.t_num}" class="hii">
					<div class="table-row">
						<div class="serial">${teamList.t_num}</div>
						<div class="country">
							<img class="size" src="images/${teamList.t_logo}">${teamList.t_name}
						</div>
						<div class="visit">${teamList.t_type}</div>
						<div class="visit">
						<input type="text" value="${teamList.t_num }" name="t_num" style="display:none">
							&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${count.c } / ${teamList.t_max}<br>���
							����&nbsp;&nbsp;&nbsp;<br>���
							����&nbsp;&nbsp;&nbsp;${teamList.t_type }
						</div>
					</div>
				</a>
			</c:forEach>
			</div>
			<script>
				function goPage(q) {
					location.href = "teamList?page=" + q;
				}
			</script>
			<hr>
			<div style="margin-left: 350px; color: black">
				<my:paging paging="${paging}" jsfunc="goPage" />
			</div>
		</div>
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