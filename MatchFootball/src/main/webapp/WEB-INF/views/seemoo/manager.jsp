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
	//managerSelect();
	managerUpdate();
});

/* //사용자 조회 요청
function managerSelect() {
	//조회 버튼 클릭
	$('body').on('click','#btnSelect',function(){
		var userId = $(this).closest('tr').find('#hidden_userId').val();
		//특정 사용자 조회
		$.ajax({
			url:'users/'+userId,
			type:'GET',
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			error:function(xhr,status,msg){
				alert("상태값 :" + status + " Http에러메시지 :"+msg);
			},
			success:userSelectResult
		});
	}); //조회 버튼 클릭
}//managerSelect */

/* //사용자 조회 응답
function userSelectResult(user) {
	$('input:text[name="id"]').val(user.id);
	$('input:text[name="name"]').val(user.name);
	$('input:text[name="password"]').val(user.password);
	$('select[name="role"]').val(user.role).attr("selected", "selected");
}//managerSelectResult */

//사용자 목록 조회 요청
function managerList() {
	$.ajax({
		url:'../manager/ajax',
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
	$("#manager_main").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.id))    	//매니저아이디
		.append($('<td>').html(item.name))	    //매니저이름
		.append($('<td>').html(item.gender))    //매니저성별
		.append($('<td>').html(item.pnum))    	//매니저연락처
		.append($('<td>').html(					//매니저권한
				$('<select id="author" class=\'author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="manager">매니저</option>'+
				'<option value="user">회원</option>'+
				'<option value="managerwait">매니저대기</option>'+
				'<option value="managerstop">매니저정지</option>'+
				'</select>').val(item.author)))
		.append($('<td>').html(item.comm))    	//매니저심판내역
		.append($('<td>').html(item.point))    	//매니저포인트
		.append($('<td>').html('<button id=\'btnSelect\'class="btn btn-success">상세조회</button>'))
		.append($('<td>').html('<button id=\'btnUpdate\'class="btn btn-danger">권한수정</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.author))
		.appendTo('#manager_main');
		console.log(">> "+item.author);
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
				url:'../managerupdate',
				data : {id : userId, author: author},
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload() 
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
						<a href="${pageContext.request.contextPath}/admin/applymanager">매니저신청 | 승인대기</a>
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
<div style="text-align: center;">					
	<div class="col-md-7 col-lg-8 col-xl-8">
		<div class="page-header bordered">
			<h1 id="item-2"><small>매니저 상세프로필</small></h1>
		</div>
		<div class="row gutters-sm"> <br>
			<div class="col-md-5 mb-3">
				<div class="card" style="height:409px;">
					<div class="card-body">
						<div class="d-flex flex-column align-items-center text-center"> <br> 
						<img src="" alt="Admin" class="rounded-circle" width="150">
							<div class="mt-3"> <br>
								<h4 style="font-family: 'NanumSquareRound';">${mb.name }</h4> <br>	
								<p class="text-secondary mb-1">${mb.location2}</p> <br>	
								<p class="text-muted font-size-sm">${mb.pos}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="card mb-3">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">이름</a></div>
							<div class="col-sm-9 text-secondary">${mb.gender}</div>
						</div>
							<hr>
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">생년월일</a></div>
							<div class="col-sm-9 text-secondary">${mb.location1}</div></div>
							<hr>
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">성별</a></div>
							<div class="col-sm-9 text-secondary">${mb.email}</div></div>
							<hr>
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">연락처</a></div>
							<div class="col-sm-9 text-secondary">${mb.pnum}</div></div>
							<hr>
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">권한</a></div>
							<div class="col-sm-9 text-secondary">${mb.pnum}</div></div>
							<hr>
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">심판내역</a></div>
							<div class="col-sm-9 text-secondary">${mb.pnum}</div></div>
							<hr>		
						<div class="row">
							<div class="col-sm-3"><a class="mb-0">포인트</a></div>
							<div class="col-sm-9 text-secondary">${mb.author2}</div></div>
					</div>
				</div>
			</div>
		</div>
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
											<th>성별</th>
											<th>연락처</th>
											<th>권한</th>
											<th>심판내역</th>
											<th>포인트</th>
											<th></th>
											<th></th>
											
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>ID</th>
											<th>이름</th>
											<th>성별</th>
											<th>연락처</th>
											<th>권한</th>
											<th>심판내역</th>
											<th>포인트</th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody style="text-align: center;" id="manager_main"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
</body>
</html>