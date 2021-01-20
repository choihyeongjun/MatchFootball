<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html style="transform: none;">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메세지</title>

<link href="https://fonts.googleapis.com/css?family=Libre+Franklin:100,200,300,400,500,700" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/selectric.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/myStyle.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/colors/blue.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<style>
.lili a { color: white; }
</style>


<script>
$(function(){
Msg();
delMsg();

})
	function goPage(q) {
		location.href = "outmsg?page=" + q;
	}

	function delMsg() {
		$('.delMsg').on('click', function() {
			var m_no = $(event.target).data('nom');
			console.log(m_no);
			$.ajax({
				url : "delMsg/ajax",
				type : 'POST',
				dateType : 'json',
				data : {
					'm_no' : m_no 
				},
				error : function(xhr, status, msg) {
					alert("상태값 :" + status + " Http에러메시지 :" + msg);
				},
				success : function(data) {
					alert("삭제되었습니다.");
					location.reload();
				}
			});
			}) 
		}
	function Msg(){
	$(".reviewMsg").on("click", function(event) {
		var m_no = $(this).data("num");
		console.log(m_no +"11")
		var modal = $('#MsgModal');
		$.ajax({
			url : 'reviewMsg?m_no=' + m_no,
			type : 'post',
			success : function(result) {
				$('#viewMsg').html(result)
				modal.modal('show');
				readMsg();
			}
		});
	})
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
						
						<div class="col-md-7 col-lg-8 col-xl-8" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
							<div class="page-header bordered">
								<h1 id="item-2">
									메세지<small>MESSAGE</small>
								</h1>
							</div>
							
					<div class="card mb-4">
						<div class="card-header">
							<div align="right" style="float: left; margin-top: 10px;">
								<a href="msg" id="받은 메일함"> 수신 쪽지함 |</a>
								<a href="outmsg" id="보낸 메일함"> 발신 쪽지함 </a>
							
							</div>
							<div style="float: right;">
									<a href="../message" class="btn btn-primary float-right send-message">메세지 보내기</a>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<td style="display:none;"></td>
										<td><input type="checkbox"></td>
										<th>날짜</th>
										<th>제목</th>
										<th>받은 사람</th>
										<td colspan="2" align="center">수신확인
											&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
									</thead>
									<tbody id=sendingMsg>
										<c:forEach items="${msg}" var="msg">
											<tr>
												<td style="display:none;"><input type="hidden" id="m_no" name="m_no"
													value="${msg.m_no}"> <input name="send_id"
													value="${msg.send_id}" type="hidden" style="display: none;">
												</td>
												<td><input type='checkbox' id="mchk"></td>
												<td>${msg.s_date}</td>
												<td><a class="Msg" data-toggle="modal"
													data-target="#MsgModal" data-num="${msg.m_no}">${msg.m_title}</a></td>
												<td>${msg.to_id}</td>
												<td style="text-align: center;">${msg.m_check} ${msg.o_date}<c:if
														test="${msg.m_check eq 'N'}">
														<input type="button" class="btn btn-primary float-right delMsg" data-nom="${msg.m_no}"
															value="취소하기">
													</c:if>
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
</body>
	<script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script> 
</html>