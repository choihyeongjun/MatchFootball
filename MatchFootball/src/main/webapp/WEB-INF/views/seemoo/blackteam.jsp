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

<title>블랙리스트팀관리페이지</title>

<script>
$(function(){
	blackteamList();
	blackUpdate();
	//blackteamDelete();
});

function blackUpdate() {
	//업데이트 버튼 클릭
	$('#body').on('click','#btnUpdate',function(){
		var t_num = $(event.target).closest('tr').find('#hidden_t_num').val();
		var t_name = $(event.target).closest('tr').find("#hidden_t_name").val();
		var author = $(event.target).closest('tr').find("#author").val();
		var result = confirm(t_name +" 을 복귀 하시겠습니까?");
		if(result) {
			$.ajax({
				url:'../teamupdate',
				data : {t_num : t_num, author: author},
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload() 
			});
		}//if
	}); //업데이트 버튼 클릭
}//blackupdate

//블랙팀 목록 조회 요청
function blackteamList() {
	$.ajax({
		url:'../blackteam/ajax',
		type:'GET',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:blackteamListResult
	});
}//teamList

//블랙팀 목록 조회 응답
function blackteamListResult(data) {
	$("#blackTeam").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td class="tnum">').html(item.t_num))    	//No.
		.append($('<td>').html(item.t_name))					//팀이름
		.append($('<td>').html(item.t_level))   				//팀레벨
		.append($('<td>').html(item.t_wn))      				//팀승률
		.append($('<td>').html(									//팀권한
				$('<select id="author" class=\'author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="team">팀</option>'+
				'<option value="black">블랙</option>'+
				'</select>').val(item.author)))
		.append($('<td>').html(item.t_m))						//팀매너점수
		.append($('<td>').html(item.t_info))    				//팀소개
		.append($('<td>').html(item.stopdate))					//정지날짜
		.append($('<td>').html('<button id=\'btnUpdate\'class="btn btn-success">팀복귀</button>'))
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-primary">팀삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_t_num\'>').val(item.t_num))
		.append($('<input type=\'hidden\' id=\'hidden_t_name\'>').val(item.t_name))
		.append($('<input type=\'hidden\' id=\'hidden_author\'>').val(item.author))
		.appendTo("#blackTeam");
	});//each
	  $('#dataTable').DataTable();
}//blackteamListResult

/* function blackteamDelete() {
	//삭제 버튼 클릭
	$('#blackTeam').on('click','#btnDelete',function(){
		var t_num = $(event.target).closest('tr').find('#hidden_t_num').val();
		var t_name = $(event.target).closest('tr').find("#hidden_t_name").val();
		var result = confirm(t_name +" 팀을 정말로 삭제하시겠습니까?");
		if(result) {
			console.log("아이디값: "+t_num)
			$.ajax({
				url:'../teamdelete',  
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				type : 'GET',
				data :{t_num : t_num},
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload()
			});      
		}//if
	}); //삭제 버튼 클릭
}//blackteamDelete

function deleteResult(data){
	console.log("deleteResult아이디값 : "+data);
	
} */
</script>
</head>
		<body>
		
		<!--팀관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">블랙리스트 팀관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/team">팀관리</a></li>
						<li class="breadcrumb-item active">블랙리스트 팀관리</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							무엇을 적을까? <a target="_blank" href="https://datatables.net/">무엇을 적을까</a> .
						</div>
					</div>
					
					<!-- 팀현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 블랙리스트 팀현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th>팀이름</th>
											<th>팀레벨</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th>팀소개</th>
											<th>정지기간</th>
											<th style="width: 90px;"></th>
											<th style="width: 90px;"></th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀레벨</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th>팀소개</th>
											<th>정지기간</th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody align="center" id="blackTeam"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
</body>
</html>