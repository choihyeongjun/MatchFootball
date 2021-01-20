<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Oswald:400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamGallery/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">

<script>

</script>

<style>
.bg-dark { background-color: #212529!important; }
</style>

</head>



<body>

<div style="margin-bottom: 1px">
<form action="teamGalleryInsert" method="post" encType="multipart/form-data">

<!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
        <a class="navbar-brand" href="#">${sessionScope.kname}${sessionScope.name}님</a>
        
        <div class="collapse navbar-collapse text-center" id="navbarsExample11">
            <ul class="navbar-nav">
               <c:if test="${sessionScope.t_num ne null }">
                  <li class="nav-item">
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
             <li class="nav-item"><a class="nav-link" href="teamMatchList">팀 매치 내역</a></li>
            </ul>
        </div>
    </div>
</nav>
   
   <div align="center" >
     <br>
      <div> <h1>${teamInfo.t_name}의 팀 갤러리</h1> </div>
      <hr>
   </div>
   
   <div class="card-header" style="text-align: center;">
   <input type="text" name="t_num" value="${teamInfo.t_num }" style="display:none">
   <input type="file" name="file" multiple="multiple">
   <input type="submit" value="등록">
   </div>
   <br>
   <div class="site-section">
      <div class="container">
         <div class="row">
         <c:forEach items="${teamGallery }" var="teamGallery">
            <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
               <a href="${pageContext.request.contextPath}/images/${teamGallery.img }" data-fancybox="gal">
               <img src="${pageContext.request.contextPath}/images/${teamGallery.img }" alt="Image" class="img-fluid" style="height: 270px; width: 300px"></a>
            </div>
         </c:forEach>
         </div>
         <script>
					function goPage(q) {
							location.href = "teamGallery?page=" + q + "&t_num=" + ${sessionScope.t_num};
						}
					</script>
					<div style="margin-left: 508px; color: #625b5b; font-size: 21px;">
						<my:paging paging="${paging}" jsfunc="goPage" />
					</div>
      </div>
   </div>
   </form>
   </div>
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