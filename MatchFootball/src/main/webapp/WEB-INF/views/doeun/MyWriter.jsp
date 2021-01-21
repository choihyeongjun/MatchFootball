<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="transform: none;">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>내 게시글</title>

<link
	href="https://fonts.googleapis.com/css?family=Libre+Franklin:100,200,300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/selectric.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/myStyle.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/colors/blue.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	rel="stylesheet">


<style id="theia-sticky-sidebar-stylesheet-TSS">
.theiaStickySidebar:after {
	content: "";
	display: table;
	clear: both;
}
</style>
<script>
	function goPage(q) {
		location.href = "write?page=" + q;
	}
</script>
</head>

<body>

	<div id="main" style="height: 850px">
		<div id="content">
			<div class="container">

				<div class="row has-sidebar">
					<jsp:include page="Mybar.jsp"></jsp:include>
					<div class="col-md-7 col-lg-8 col-xl-8"
						style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
						<div class="page-header bordered">


							<h1 id="item-2">
								게시글<small>WRITE</small>
							</h1>
						</div>
						<div align="right">
							<a href="${pageContext.request.contextPath}//mypage/write"
								id="FREE"> 자유게시판 |</a><a
								href="${pageContext.request.contextPath}/teamGallery?t_num=${sessionScope.t_num}"
								id="TEAM"> 팀게시판 </a>
						</div>
						<div class="row" style="width: auto">

							<div style="margin-top: 15px;">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable"
											style="width: 100%; cellspacing: 0; padding: 0;">
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성날짜</th>
													<th>좋아요수</th>
													<th>조회수</th>
													<th style="width:138px;"></th>
												</tr>
											</thead>
										
											<tbody>
												 <c:forEach var="my" items="${my}">
													<tr>
														<td><input type="text" value="${my.num}" name="num" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; width:20px;"></td>
														<td><a
															href="${pageContext.request.contextPath}/free/freedetail/${my.num}/${my.cnt}">${my.title}</a></td>
														<td>${my.b_date}</td>
														<td>${my.likeit}</td>
														<td>${my.cnt}</td>
														<td style="display:flex;" >	<form action="myWritedelete" method="post">
														<button style="float: left;" class="btn" type='button' onclick="location.href='${pageContext.request.contextPath}/free/freedetail/${my.num}/${my.cnt}'">수정</button>
														<button class="btn" type='submit'>삭제</button></form></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<div align="center">
									<my:paging paging="${paging}" jsfunc="goPage" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<button class="btn btn-primary btn-circle" id="to-top"
			style="visibility: visible; opacity: 0.5;">
			<!-- 위로가기버튼 -->
			<i class="fa fa-angle-up"></i>
		</button>
</body>

</html>