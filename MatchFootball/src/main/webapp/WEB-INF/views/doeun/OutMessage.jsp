<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
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
								id="보낸 메일함"> 발신 쪽지함 </a>
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
										<th>받은 사람</th>
										<td colspan="2" align="center">수신확인
											&nbsp;&nbsp;&nbsp;&nbsp;</td>
									</tr>

									<tbody id=toMsg>
										<c:forEach items="${msg}" var="msg">
											<tr>
												<td><input type="hidden" id="m_no" name="m_no"
													value="${msg.m_no}"> <input name="send_id"
													value="${msg.send_id}" type="text" style="display: none;">
												</td>
												<td><input type='checkbox' id="mchk"></td>
												<td>${msg.s_date}</td>
												<td><a class="Msg" data-toggle="modal"
													data-target="#MsgModal" data-num="${msg.m_no}">${msg.m_title}</a></td>
												<td>${msg.to_id}</td>
												<td>${msg.m_check}${msg.o_date}<c:if
														test="${msg.m_check eq 'N'}">
														<input type="button" class="delMsg" data-nom="${msg.m_no}"
															value="취소하기">
													</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div>
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

</body>

</html>