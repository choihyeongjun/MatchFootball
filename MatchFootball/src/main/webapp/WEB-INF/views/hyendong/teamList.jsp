<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!-- c태크 사용할라꼬 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- CSS Files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/animate-3.7.0.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/fonts/flat-icon/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/owl-carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">

<style>
.size { width: 50px; height: 50px }

#a2{   
    position: relative;
    display: -ms-flexbox;
    display: flex;
    flex-direction: column;
    width: 1000px;
    margin-left: -200px;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    outline: 0;
}
#az{
   color: black;
}
.lili a {
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
a {
    color: #000000;
    text-decoration: none;
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
</style>
</head>
<body>
	<div style="height: 86%">
		<!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
        <a class="navbar-brand" href="#">${sessionScope.kname}${sessionScope.name}님</a>
        
        <div class="collapse navbar-collapse text-center" id="navbarsExample11">
            <ul class="navbar-nav">
               <c:if test="${sessionScope.t_num ne null }">
                <li class="nav-item active">
                    <a class="nav-link" href="teamInfo?t_num=${sessionScope.t_num }">팀 정보</a>
                </li>
                </c:if>
                <c:if test="${sessionScope.t_num eq null }">
                <li class="nav-item">
                 <a class="nav-link" href="teamMake">팀 생성</a>
              </li>
              </c:if>
              <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamInvite?t_num=${sessionScope.t_num }">팀 초대</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamGallery?t_num=${sessionScope.t_num }">팀갤러리</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamNotice?t_num=${sessionScope.t_num }">팀 공지</a>
             </li>
             </c:if>
             <li class="nav-item">
                 <a class="nav-link" href="http://localhost/MatchFootball/teamList">팀 리스트</a>
             </li>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item"><a class="nav-link" href="teamMatchList">팀 매치 내역</a></li>
             </c:if>
            </ul>
        </div>
    </div>
</nav>
		<div align="center">
			<br>
			<h3>팀 리스트</h3>
			<hr>
		</div>
		<div class="progress-table" align="center" style="margin-left: 530px; width: 50%">
			<div class="table-head" style="margin-right: 150px">
				<div class="serial" align="left">No.</div>
				<div class="serial" align="left" style="margin-left: 30px">팀명</div>
				<div class="serial" align="left" style="margin-left: 90px; width: 120px; padding-left: 54px;">경기유형</div>
				<div class="serial" align="left" style="margin-left: 117px;">팀정보</div>
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
							&nbsp;&nbsp;&nbsp;인원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${teamList.teamListCount } / ${teamList.t_max}<br>경기
							유형&nbsp;&nbsp;&nbsp;${teamList.t_type }
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
			<div style="font-size: 20px; text-align: center; margin-left: 50%;">
				<my:paging paging="${paging}" jsfunc="goPage" />
			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/bootstrap-4.1.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/owl-carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/vendor/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/css/dong1/assets/js/main.js"></script>
</body>
</html>