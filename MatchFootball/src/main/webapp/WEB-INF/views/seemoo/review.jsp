<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>리뷰 페이지</title>

<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<script>
$(function(){
	reviewList();
	reviewDelete();
});

//사용자 목록 조회 요청
function reviewList() {
	$.ajax({
		url:'../review/ajax',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:reviewListResult
	});
}//reviewList

//사용자 목록 조회 응답
function reviewListResult(data) {
	$("#reviewMain").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.m_date))    //날짜
		.append($('<td>').html(item.manager_id))//매니저아이디
		.append($('<td>').html(item.m_id))    	//이용자아이디
		.append($('<td>').html(item.t_num))     //팀번호
		.append($('<td>').html(item.score))  	//스코어(매너점수)
		.append($('<td>').html(item.match_info))//매치정보
		.append($('<td>').html(item.comm))		//상세내용
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-danger">리뷰삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.manager_id))
		.appendTo('#reviewMain');
	});//each
	$('#dataTable').DataTable();
}//reviewListResult

</script>

</head>

<body class="sb-nav-fixed">

	<!-- 리뷰 -->
		<div id="layoutSidenav_content">
			
				<div class="container-fluid">
					<h1 class="mt-4">리뷰관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="#">무엇을???</a></li>
						<li class="breadcrumb-item active">무엇을???</li>
					</ol>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table mr-1"></i> 리뷰관리
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
										<thead align="center">
											<tr>
												<th style="width: 150px;">날짜</th>
												<th style="width: 150px;">매니저아이디</th>
												<th style="width: 150px;">이용자아이디</th>
												<th style="width: 60px;">팀번호</th>
												<th style="width: 60px;">스코어</th>
												<th style="width: 150px;">매치정보</th>
												<th>상세내용</th>
												<th style="width: 100px;"></th>
											</tr>
										</thead>
										<tbody align="center" id="reviewMain">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
		<script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script> 
</body>
</html>