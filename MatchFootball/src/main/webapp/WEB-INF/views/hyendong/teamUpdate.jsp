<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<script type="text/javascript">
	function teamUpdate(){
		if (confirm("팀 정보를 변경 하시겠습니까?") == true){    //확인
			alert("팀 정보가 변경되었습니다");
			    
			 }else{   //취소
			     return false;
			 }
	}
	</script>
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
	<form action="teamUpdateUpdate" method="post" encType="multipart/form-data">
		<div class="section-top-border" style="margin-left: 670px; width: 50%">
			<div class="row">
				<div class="col-lg-8 col-md-8">
				<input type="text" name="t_num" value="${teamUpdate.t_num }" style="display:none"/>
					<h3>팀 수정</h3>
					<div class="mt-10">
						<input type="text" name="t_name" placeholder="팀명"
							value="${teamUpdate.t_name }" class="single-input-accent" required="required">
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="t_max" placeholder="최대 팀원수"
							value="${teamUpdate.t_max }" class="single-input-accent" required="required">
					</div>
					<hr>
					<div class="input-group-icon mt-10">
						<div class="form-select" id="default-select"
							style="border: none; padding-right: 2px">
							<select name="t_address">
								<option selected>${teamUpdate.t_address }</option>
								<option value="중구">중구</option>
								<option value="수성구">수성구</option>
								<option value="북구">북구</option>
								<option value="동구">동구</option>
								<option value="남구">남구</option>
								<option value="서구">서구</option>
								<option value="달서구">달서구</option>
								<option value="달성군">달성구</option>
							</select>
						</div>
					</div>
					<hr>
					<div class="input-group-icon mt-10">
						<div class="form-select" id="default-select2"
							style="border: none; padding-right: 2px">
							<select name="t_type">
								<option selected>${teamUpdate.t_type }</option>
								<option value="축구">축구</option>
								<option value="풋살">풋살</option>
							</select>
						</div>
					</div>
					<hr>
					<div class="mt-30">
						<textarea name="t_info" class="single-input-accent"
							placeholder="팀소개">${teamUpdate.t_info }</textarea>
					</div>
					<hr>
					팀로고 <input type="file" id="files" name="file" /><br>
					<br> <img id="image"
						style="height: 200px; width: 200px; border: none" />
					<script>
						document.getElementById("files").onchange = function() {
							var reader = new FileReader();

							reader.onload = function(e) {
								document.getElementById("image").src = e.target.result;
							};
							reader.readAsDataURL(this.files[0]);
						};
					</script>
					<hr>
					<p>팀원 공개 여부</p>
					<div class="switch-wrap d-flex justify-content-between">
						<div class="primary-switch">
							<input type="checkbox" id="t_hidden" name="t_hidden" value="Y" checked>
							<label for="t_hidden"></label>
						</div>
					</div>
				</div>
			</div>
			<br> <input type="submit" class="genric-btn info circle"
				value="팀수정" onclick="teamUpdate()"/>
				<input type="reset" class="genric-btn info circle"
				value="취소" onclick="history.back(-1); return false;"/>
		</div>
	</form>
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