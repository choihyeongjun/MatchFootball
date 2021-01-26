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
<title>메세지</title>

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

<link
	href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>

<style>
.lili a {
	color: white;
}

footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	width: 100%;
	background: grey;
	color: white;
}
</style>
<script>
	$(function() {
		ddd();
		replyMsg();
		$(".mmm").on("click", function() {
			var m_no = $(this).data("nom");
			modal = $("#moonja");
			$.ajax({
				url : "${pageContext.request.contextPath}/mypage/moonja",
				success : function(result) {
					modal.find('#body111').html(result);
					modal.modal('show');
				}
			});
		});
	})

	function ddd() {
		$(".reviewMsg").on("click", function(event) {
			var m_no = $(this).data("num");
			var modal = $('#MsgModal');
			$.ajax({
				url : 'reviewMsg?m_no=' + m_no,
				type : 'post',
				success : function(result) {
					$('#viewMsg').html(result)
					modal.modal('show');
					readMsg();
					replyMsg();
				}
			});
			function readMsg() {
				$.ajax({
					url : "reviewMsg/ajax?m_no=" + m_no,
					type : "post",
					data : m_no,
					dateType : "json",
					success : function(result) {
						console.log("success", result)
					},
					error : function(xhr, status, msg) {
						colsole.log("상태값 :" + status + "에러" + msg);

					}
				});
			}
		});
	}
	function replyMsg() {//답장 폼
		$(".reply-message").on("click", function(event) {
			var m_no = $(this).data("nom");
			var modal = $('#MsgModal');
			console.log("::::::::::::::::" + m_no)
			$.ajax({
				url : "replyMsg",
				type : 'post',
				data : {
					m_no : m_no
				},

				error : function(xhr, status, msg) {
					console.log("상태값 :" + status + "에러" + msg);
				},
				success : function(result) {
					console.log(result);
					$('#viewMsg').html(result)
					modal.modal('show');
					sendMsg(); // 답장처리
				}
			});
		});
	}//replyMsg
	function sendMsg() {
		$(".send").on("click", function(event) {
			$.ajax({
				url : "replymsg/ajax",
				type : 'post',
				data : {
					send_id : send_id,
					to_id : to_id,
					m_title : m_title,
					m_con : m_con
				},
				error : function(xhr, status, msg) {
					console.log("상태값 :" + status + "에러" + msg);
				},
				success : function(result) {
					console.log(result);

				}
			});
		});
	}
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
									메세지<small>MESSAGE</small>
								</h1>
							</div>

							<div class="card mb-4">
								<div class="card-header">
									<div align="right" style="float: left; margin-top: 10px;">
										<a href="msg" id="받은 메일함" style="color: black;"> 수신 쪽지함 |</a> <a href="outmsg"
											id="보낸 메일함" style="color: black;"> 발신 쪽지함 </a>

									</div>
									<div style="float: right;">
										<a href="../message"
											class="btn btn-primary float-right send-message">메세지 보내기</a>
											<a class="btn btn-primary float-right mmm" data-toggle="modal" data-nom="${sessionScope.id }"
											style="cursor: pointer; margin-right:3px;">문자보내기</a>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead align="center">
												<tr>
													<td style="display: none;"></td>
													<td><input type="checkbox"></td>
													<th>날짜</th>
													<th>제목</th>
													<th>보낸 사람</th>
													<th>답장하기</th>
												</tr>
											</thead>
											<tbody id=toMsg align="center">
												<c:forEach items="${msg}" var="msg">
													<tr>
														<td style="display: none;"><input type="hidden"
															id="m_no" name="m_no" value="${msg.m_no}"> <input
															name="to_id" value="${msg.to_id}" type="text"
															style="display: none;"></td>
														<td><input type='checkbox' id="mchk"></td>
														<td>${msg.s_date}</td>
														<td><a class="reviewMsg" data-toggle="modal"
															data-target="#MsgModal" data-num="${msg.m_no}">${msg.m_title}</a>
														</td>
														<td>${msg.send_id}</td>
														<td>
															<button type="button"
																class="btn btn-primary float-center reply-message"
																id="reply" data-nom="${msg.m_no}">답장하기</button>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div style="margin-left: 270px">
											<my:paging paging="${paging}" jsfunc="goPage" />
										</div>
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
			<!-- Modal -->
			<div class="modal fade" id="MsgModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-body">
							<div id="viewMsg"></div>
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

	
		<!-- 메세지 보내기 모달창 -->
			<div class="modal fade" id="moonja" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body" id="body111">...</div>
					</div>
				</div>
			</div>
</body>

</html>