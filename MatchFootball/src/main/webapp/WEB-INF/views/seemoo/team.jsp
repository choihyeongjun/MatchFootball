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

<title>팀관리페이지</title>

<script>
$(function(){
	teamList();
	teamUpdate();
	teamDelete();
});

function teamUpdate() {
	//업데이트 버튼 클릭
	$('#tmain').on('click','#btnUpdate',function(){
		var t_num = $(event.target).closest('tr').find('#hidden_t_num').val();
		var t_author = $(event.target).closest('tr').find("#t_author").val();
		var t_name = $(event.target).closest('tr').find("#hidden_t_name").val();
		console.log(t_num);
		var result = confirm(t_name +" 팀를 업데이트 하시겠습니까?");
		if(result) {
			$.ajax({
				url:'../teamupdate',
				data : {t_num : t_num, t_author: t_author},
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload() 
			});
		}//if
	}); //업데이트 버튼 클릭
}//userupdate

//팀 목록 조회 요청
function teamList() {
	$.ajax({
		url:'../team/ajax',
		type:'GET',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:teamListResult
	});
}//teamList

//팀 목록 조회 응답
function teamListResult(data) {
	$("#tmain").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.t_num))    	//No.
		.append($('<td>').html(item.t_name))	//팀이름
		.append($('<td>').html(item.t_level))   //팀레벨
		.append($('<td>').html(item.t_wn))      //팀승률
		.append($('<td>').html(					//팀권한
				$('<select id="t_author" class=\'t_author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="team">팀</option>'+
				'<option value="black">블랙</option>'+
				'</select>').val(item.t_author)))
		.append($('<td>').html(item.t_m))		//팀매너점수
		.append($('<td>').html(item.t_info))    //팀소개
		.append($('<td>').html('<button id=\'btnUpdate\'class="btn btn-success">팀수정</button>'))
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-primary">팀삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_t_num\'>').val(item.t_num))
		.append($('<input type=\'hidden\' id=\'hidden_t_name\'>').val(item.t_name))
		.appendTo("#tmain");
	});//each
	  $('#dataTable').DataTable();
}//teamListResult

function teamDelete() {
	//삭제 버튼 클릭
	$('#tmain').on('click','#btnDelete',function(){
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
}//teamDelete

function deleteResult(data){
	console.log("deleteResult아이디값 : "+data);
	
}
</script>

<style>
.userProfileImg {
	width: 100%;
	display: inline;
	border-radius: 10px;
	float: left;
}

.userInfoTable {
	width: 50%;
	font-size: 25px;
}
.userInfoTable {
    font-size: 25px;
    width: auto;
}
</style>

</head>

		<body>
		
		<!--팀관리 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">팀관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath}/admin/blackteam">블랙리스트 팀관리</a></li>
						<li class="breadcrumb-item active">월별 경기일정 및 토너먼트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							무엇을 적을까? <a target="_blank" href="https://datatables.net/">무엇을 적을까</a> .
						</div>
					</div>
					
					<!-- 팀현황 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 현재 팀 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;">No.</th>
											<th>팀이름</th>
											<th style="width: 70px;">팀레벨</th>
											<th style="width: 70px;">팀승률</th>
											<th style="width: 150px;">팀권한</th>
											<th>팀매너점수</th>
											<th>팀소개</th>
											<th>수정</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th>No.</th>
											<th>팀이름</th>
											<th>팀평균레벨</th>
											<th>팀승률</th>
											<th>팀권한</th>
											<th>팀매너점수</th>
											<th>팀소개</th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody align="center" id="tmain"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
			
			<!-- The Modal -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header"></div>
					
					<!-- Modal body -->
					<div class="modal-body"></div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">수정</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(".idnum").on("click", function() {
			var num = $(this).data("num");
			modal = $('#myModal');
			$.ajax({
				url : "teaminfo?t_name=" + num,
				dataType : "html",
				success : function(result) {
					modal.find('.modal-body').html(result)
					modal.modal('show');
				}
			})
		})
	</script>
	
</body>
</html>