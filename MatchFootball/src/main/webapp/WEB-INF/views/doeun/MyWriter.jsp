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
</script>
</head>

<body>
	<form>
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
								<a href="#" id="FREE"> 자유게시판 |</a><a href="#"
									id="TEAM"> 팀게시판 |</a>
							</div>
							<div class="row" style="width: auto">
								
								<div style="margin-top: 15px;">
									<table border="1" style="width: 100%">
										<tr>
											<td></td>
											<td><input type="checkbox"></td>
											<th>작성일</th>
											<th>제목</th>
											<th>조회수</th>
											<th>댓글</th>
											<th colspan="2" align="right">수정/삭제
												&nbsp;&nbsp;&nbsp;&nbsp;</th>
										</tr>
										<tbody id=toMsg>
											<c:forEach items="" var="">
												<tr>
													<td></td>
											<td><input type="checkbox"></td>
											<th>작성일</th>
											<th>제목</th>
											<th>조회수</th>
											<th>댓글</th>
													<td>
														<button type="button" class="btn btn-primary float-right"
															id="delWr">삭제하기</button>
														<button type="button" class="btn btn-primary float-right"
															id="delWr">삭제하기</button></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div align="center">
										<my:paging paging="${paging}" jsfunc="goPage" />
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="item-listing list"></div>
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
		<!-- Modal -->
		<div class="modal fade" id="MsgModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body" id="viewMsg"></div>
					<div class="modal-footer">

						<button class="replyMsg" type="submit">답장</button>
						<button type="reset">취소</button>

					</div>
				</div>
			</div>
		</div>

		<script>
			function goPage(q) {
				location.href = "msg?page=" + q;
			}
		</script>
	</form>
</body>

</html>