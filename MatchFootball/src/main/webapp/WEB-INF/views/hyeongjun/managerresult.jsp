<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매니저 신청 결과</title>
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
<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">매니저 매치 신청리스트</h1>
				<div class="card mb-4">

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>게임 타입</th>
										<th>경기장 주소</th>
										<th>상세주소</th>
										<th>게임 시작시간</th>
										<th>게임 종료시간</th>
										<th>승인여부</th>
									
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${list}" var="i">
									<form id="dd">
										<tr>
											<td>${i.type}</td>
											<td>${i.f_name}</td>
											<td>${i.f_address}</td>
											<td>${i.m_date}</td>
											<td>${i.m_hour}</td>
											<td>${i.chk}</td>		
										</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
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