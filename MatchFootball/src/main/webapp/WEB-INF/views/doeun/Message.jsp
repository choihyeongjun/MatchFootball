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


<style id="theia-sticky-sidebar-stylesheet-TSS">
.theiaStickySidebar:after {
	content: "";
	display: table;
	clear: both;
}
</style>
<script>
	$(function() {
		$(".reviewMsg").on("click", function(event) {
			var modal = $('#MsgModal');
			var m_no = $(this).data("num");
			$.ajax({
				url :'reviewMsg?m_no=' + m_no,
				type : 'post',
				success : function(result) {
					$('#viewMsg').html(result)
					modal.modal('show');
					
				}
			});
		});
		delMsg();
	})
	function delMsg(){
		
		$('#delMsg').on('click',function(){

	           var m_no = $(this).closest('tr').find('#m_no').val();
						console.log(m_no);
						$.ajax({
							url : "delMsg/ajax",
							type : 'POST',
							dateType:'json',
							data : {
								m_no : m_no
							},
							error : function(xhr, status, msg) {
								alert("상태값 :" + status + " Http에러메시지 :" + msg);
							},
							success : function(data) {
								alert("삭제되었습니다.");
								location.reload();
							}
						});
					//}) 
					
		});
	}
	
	function replyMsg() {
		$(".replyMsg").on("click", function(event) {
			var modal = $('#replyMsg');
			var m_no = $(this).data("num");
		$.ajax({
			url : "replymsg/ajax",
			type : 'post',
			dataType : 'json',
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + "에러" + msg);
			},
			success : function(result) {
				alert("성공적으로 발송 되었습니다.")
			}
		});
	})
	}//replyMsg
	
</script>
</head>

<body>
<form action="delMsg/ajax">
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
						<div align="right">
							<a href="msg" id="받은 메일함"> 수신 쪽지함 |</a><a href="outmsg"
								id="보낸 메일함"> 발신 쪽지함 |</a><a href="#" id="용병초대"> 용병요청 </a>
						</div>
						<div class="row" style="width: auto">
							<div style="margin-top: 15px;">
								<a href="../message"
									class="btn btn-primary float-right send-message">메세지 보내기</a>
							</div>
							<div style="margin-top: 15px;">
								<table border="1" style="width: 100%">
									<tr>
										<td></td>
										<td><input type="checkbox"></td>
										<th>날짜</th>
										<th>제목</th>
										<th>보낸 사람</th>
										<td colspan="2" align="right">삭제하기
											&nbsp;&nbsp;&nbsp;&nbsp;</td>
									</tr>
									<tbody id=toMsg>
										<c:forEach items="${msg}" var="msg">
											<tr>
											<td><input name="to_id" value="${msg.to_id}" type="text" style="display: none;"></td>
											<td><input type='checkbox' id="mchk"></td>
												<td>${msg.s_date}</td>												
												<td><a class="reviewMsg" data-toggle="modal" data-target="#MsgModal" data-num="${msg.m_no}">${msg.m_title}</a></td>
												<td>${msg.send_id}</td>
												<td><input type="hidden" id="m_no" name="m_no" value="${msg.m_no}">
												<button type="button"
														class="btn btn-primary float-right"
														id="delMsg">삭제하기</button></td>
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
				<div class="modal-body" id="viewMsg">
				
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