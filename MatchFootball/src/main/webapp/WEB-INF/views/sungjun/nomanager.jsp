<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* .btn.sft {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	border-radius: 10px;
	cursor: pointer;
} */
</style>
<script>
	$(function() {
		//팀 매치 리뷰작성 
		$(".sft").on("click", function() {
			var m_no = $(this).data("pn");
			modal = $("#nomanager");
			$.ajax({
				url : "nomanagerapplym?m_no=" + m_no +"&match_info=" +m_no,
				success : function(result) {
					modal.find('#body11').html(result);
					modal.modal('show');
				}
			});
		});
	})
</script>
</head>
<body>
	<div class="container" style="margin-bottom: 140px; margin-top: 140px">
		<div class="scedule" style="text-align: center; margin: 30px">
			<h1>참가 가능한 매치 목록</h1>
		</div>
		<div class="allscedule" style="margin: 30px; text-align: center; margin-top:50px;">
			<ul>
				<c:forEach var="nomanager" items="${nomanager }">
					<li style="margin: 40px;"><a class="sft" data-toggle="modal"
						style="text-decoration: none;" data-target="#nomanager"
						data-pn="${nomanager.m_no }">
							<div style=" display:flex; margin: 5px; margin-left: 400px;">
								<div style="">
									<span class="mdetail" style="font-size: 20px;">
										${nomanager.m_date }</span>
								</div>
								<div style="margin-left: 10px;">
									<span style="font-weight: bold; font-size: 24px;">${nomanager.f_name }</span>
								</div>
							
							</div>
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!-- 매니저 없는 매치  매니저 신청 모달창 -->
	<div class="modal fade" id="nomanager" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body11"></div>
			</div>
		</div>
	</div>
</body>
</html>