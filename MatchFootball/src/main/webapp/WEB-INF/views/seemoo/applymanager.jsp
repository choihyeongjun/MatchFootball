<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>매니저관리페이지</title>

<script>
$(function(){
	managerList();
	managerUpdate();
});

//사용자 목록 조회 요청
function managerList() {
	$.ajax({
		url:'../applymanager/ajax',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:managerListResult
	});
}//userList

//사용자 목록 조회 응답
function managerListResult(data) {	
	$("#manager_st").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.id))    						//아이디
		.append($('<td>').html(item.name))	    					//이름
		.append($('<td>').html(item.birth))	    					//생년월일
		.append($('<td>').html(item.gender))   	  				 	//성별
		.append($('<td>').html(item.pnum))    						//연락처
		.append($('<td>').html(										//매니저권한
				$('<select id="author" class=\'author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="manager" name="manager">매니저</option>'+
				'<option value="user" name="user">회원</option>'+
				'<option value="wait" name="wait">매니저대기</option>'+
				'<option value="stop" name="stop">매니저정지</option>'+
				'</select>').val(item.author))) 					//매니저권한
		.append($('<td>').html(					
				$('<select id="author" class=\'author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="Y" name="Y">면접O</option>'+
				'<option value="N" name="N">면접X</option>'+
				'</select>').val(item.apply)))						//설문지
		.append($('<td>').html(item.comm))    						//포부
		.append($('<td>').html('<button id=\'btnSelect\'class="btn btn-primary">상세조회</button>'))
		.append($('<td>').html('<button type="button" id=\'btnUpdate\'class="btn btn-success">권한수정</button>'))
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-danger">삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
		.append($('<input type=\'hidden\' id=\'author\'>').val(item.author))
		.appendTo('#manager_st');
	});//each
	$('#dataTable').DataTable();
}//managerListResult

function managerUpdate() {
	//업데이트 버튼 클릭
	$('main').on('click','#btnUpdate',function(){
		var userId = $(event.target).closest('tr').find('#hidden_userId').val();
		var author = $(event.target).closest('tr').find("#author").val();
		var result = confirm(userId +"를 "+ author +"로 수정 하시겠습니까?");
		if(result) {
			$.ajax({
				url:'../managerapplyupdate',
				data : {id : userId, author: author},
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}
				//,success: location.reload() 
			});
		}//if
	}); //업데이트 버튼 클릭
}//managerupdate

</script>

</head>
<body>
	<!-- 매니저관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">매니저관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/manager">매니저현황</a>
						<li class="breadcrumb-item active"></li>
						<a href="${pageContext.request.contextPath}/manageremploy">매니저지원페이지</a></li>
						</li>
					</ol>
					
					<div class="card mb-4">
						<div class="card-body">
							 <a target="_blank" href="https://www.youtube.com/watch?v=hSEcM3McYyM">매니저 지원 영상</a>
							 <a>/</a>
							 <a target="_blank" href="https://www.kfa.or.kr/img_src/data_rule/2016futsal_laws.pdf">공식 경기규칙</a>
						</div>
					</div>
					
					<!-- 매니저현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 매니저 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 80px;">ID</th>
											<th>이름</th>
											<th>생년월일</th>
											<th style="width: 50px;">성별</th>
											<th>연락처</th>
											<th style="width: 50px;">포부</th>
											<th style="width: 90px;">권한</th>
											<th>설문지</th>
											<th style="width: 80px;"></th>
											<th style="width: 80px;"></th>
											<th style="width: 70px;"></th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>ID</th>
											<th>이름</th>
											<th>생년월일</th>
											<th>성별</th>
											<th>연락처</th>
											<th>권한</th>
											<th>포부</th>
											<th>설문지</th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody style="text-align: center;" id="manager_st"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
</body>
</html>