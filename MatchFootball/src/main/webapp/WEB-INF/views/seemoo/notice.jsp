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

<title>공지사항 페이지</title>

<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<script>
$(function(){
	noticeList();
});

//사용자 목록 조회 요청
function noticeList() {
	$.ajax({
		url:'../../noticewrite/ajax',
		type:'GET',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:noticeListResult
	});
}//noticeList

//사용자 목록 조회 응답
function noticeListResult(data) {
	$('#notice').empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.n_no))
		.append($('<td>').html(item.n_title))
		.append($('<td>').html(item.id))
		.append($('<td>').html(item.n_date))
		.append($('<td>').html(item.n_check))
		.append($('<td>').html('<button id=\'btnSelect\' class="btn btn-primary">조회</button>'))
		.append($('<td>').html('<button id=\'btnDelete\' class="btn btn-danger">삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.n_no))
		.appendTo($('#notice'));
	});//each
	$('#dataTable').DataTable()
}//noticeListResult

</script>

</head>

<body class="sb-nav-fixed">

	<!-- 공지사항 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">공지사항</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="#">무엇을???</a></li>
						<li class="breadcrumb-item active">무엇을???</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<div align="center">
								<input type="button" value="글쓰기" onclick="location.href='notice/noticewrite'">
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 공지사항
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</tfoot>
									<tbody id="notice" style="text-align: center;">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
</body>
</html>