<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<title>유저관리페이지</title>
<script>
$(function(){
	userList();
	userUpdate();
	userDelete();
});

function userUpdate() {
	//업데이트 버튼 클릭
	$('main').on('click','#btnUpdate',function(){
		var userId = $(event.target).closest('tr').find('#hidden_userId').val();
		var author = $(event.target).closest('tr').find("#author").val();
		var author2 = $(event.target).closest('tr').find("#author2").val();
		var result = confirm(userId +" 사용자를 업데이트 하시겠습니까?");
		if(result) {
			$.ajax({
				url:'../userupdate',
				data : {id : userId, author: author, author2: author2},
				dataType:'json',
				error:function(xhr,status,msg){
					//console.log("상태값 :" + status + " Http에러메시지 :"+msg);
					console.log("dddd");
				}, success: location.reload() 
			});
		}//if
	}); //업데이트 버튼 클릭
}//userupdate

//사용자 목록 조회 요청
function userList() {
	$.ajax({
		url:'../user/ajax',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:userListResult
	});
}//userList

//사용자 목록 조회 응답
function userListResult(data) {
	$("#main").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td class="idnum">').html(item.id))    	//유저아이디
		.append($('<td>').html(item.name))	    //유저이름
		.append($('<td>').html(item.gender))    //유저성별
		.append($('<td>').html(item.manner))    //유저매너도
		.append($('<td>').html(item.point))  	//유저포인트
		.append($('<td>').html(					//유저권한
				$('<select id="author" class=\'author\'> '+
				'<option selected value="">선택</option>'+
				'<option value="user">일반회원</option>'+
				'<option value="manager">매니저</option>'+
				'</select>').val(item.author)))
		.append($('<td>').html(					//유저권한2
				$('<select id="author2" class=\'author2\'> '+
				'<option selected value="">선택</option>'+
				'<option value="Y">Y</option>'+
				'<option value="N">N</option>'+
				'</select>').val(item.author2)))
		.append($('<td>').html('<button id=\'btnSelect\'class="btn btn-primary">상세프로필</button>'))
		.append($('<td>').html('<button id=\'btnUpdate\'class="btn btn-success">정보수정</button>'))
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-danger">회원삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
		.appendTo('#main');
		console.log(">> "+item.author);
		

	});//each
	$('#dataTable').DataTable();
}//userListResult

function userDelete() {
	//삭제 버튼 클릭
	$('main').on('click','#btnDelete',function(){
		var userId = $(event.target).closest('tr').find('#hidden_userId').val();
		var result = confirm(userId +" 사용자를 정말로 삭제하시겠습니까?");
		if(result) {
			console.log("아이디값: "+userId)
			$.ajax({
				url:'../userdelete',  
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				type : 'GET',
				data :{id : userId},
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload()
			});      
		}//if
	}); //삭제 버튼 클릭
}//userDelete
</script>

<script>
/* $(function(){
	userUpdate();
	userDelete();
	
	//init();
});

//사용자 수정 요청
function userUpdate() {
	//수정 버튼 클릭
	$('body').on('click','#btnUpdate',function(){
		var userId = $(this).closest('tr').find('#aa').text();//val();
		var author = $(this).closest('tr').find('[name=author]').val();
		var author2 = $(this).closest('tr').find('[name=author2]').val();
		var result = confirm(userId + " 사용자를 정말로 수정하시겠습니까?");
		if(result) {
		$.ajax({  
		    url: "../userupdate", 
		    dataType: 'json', 
		    data:{ id : userId, author : author, author2 : author2 },
		    success: function(data) { 
		        userList();
		    },
		    error:function(xhr, status, message) { 
		        alert(" status: "+status+" er:"+message);
		    }
		});
	 }//if
  });//수정 버튼 클릭
}//userUpdate
function userList(){
	
}

function userDelete() {
	//삭제 버튼 클릭
	$('body').on('click','#btnDelete',function(){
		var userId = $(this).closest('tr').find('#aa').text();//val();
		var result = confirm(userId +" 사용자를 정말로 삭제하시겠습니까?");
		if(result) {
			console.log("아이디값: "+userId)
			$.ajax({
				url:'../userdelete',  
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				type : 'GET',
				data :{id : userId},
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success:
					deleteResult
					.remove
			});      
		}//if
	}); //삭제 버튼 클릭
}//userDelete

function deleteResult(data){
	console.log("deleteResult아이디값 : "+data);
	
} */
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

<body class="sb-nav-fixed">
	<!-- 공지사항 -->
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">유저페이지</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item">
						<a href="#">매니저신청현황</a></li>
					<li class="breadcrumb-item active"></li>
					<a href="#">매니저신청현황</a>
				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i>회원현황
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead align="center">
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th style="width: 40px;">성별</th>
										<th>매너점수</th>
										<th>포인트</th>
										<th>회원권한</th>
										<th>용병권한</th>
										<th style="width: 90px;"></th>
										<th style="width: 80px;"></th>
										<th style="width: 80px;"></th>
									</tr>
								</thead>
								
								<tfoot align="center">
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>성별</th>
										<th>매너점수</th>
										<th>포인트</th>
										<th>회원권한</th>
										<th>용병권한</th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</tfoot>
								<tbody align="center" id="main">
								</tbody>
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
					<div class="modal-header"><h2 id="u_id">의 프로필 정보</h2></div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<table  align="center">
						<img class="userProfileImg" alt="유저이미지" src="${pageContext.request.contextPath}/resources/seemoo/img/1.jpg">
							<tr><th>아이디</th><td>:</td><td style="padding-left: 10px" id="id"></td></tr>
							<tr><th>이름</th>	<td>:</td><td style="padding-left: 10px" id="name"></td></tr>
							<tr><th>생년월일</th><td>:</td><td style="padding-left: 10px" id="birth"></td></tr>
							<tr><th>성별</th><td>:</td><td style="padding-left: 10px" id="gender"></td></tr>
							<tr><th>연락처</th><td>:</td><td style="padding-left: 10px" id="pnum"></td></tr>
							<tr><th>권한</th>	<td>:</td><td style="padding-left: 10px" id="author1"></td></tr>
							<tr><th>팀이름</th><td>:</td><td style="padding-left: 10px" id="t_name1"></td></tr>
							<tr><th>포인트</th><td>:</td><td style="padding-left: 10px" id="point"></td></tr>
						</table>
					</div>
	
					<!-- Modal footer -->
					<div class="modal-footer">
						<button style="text-align: center;" type="button" class="btn btn-danger" data-dismiss="modal">종료</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$("#dataTable").on("click", "#btnSelect", function() {
			//event.stopPropagation();
  			var num = $(event.target).parent().parent().find('.idnum').text();
			modal = $('#myModal');
			$.ajax({
				url : "userinfo?id=" + num,
				dataType : "json",
				success : function(result) {
					$('#u_id').text(result.id);
					$('#id').text(result.id);
					$('#name').text(result.name);
					$('#birth').text(result.birth);
					$('#gender').text(result.gender);
					$('#pnum').text(result.pnum);
					$('#author1').text(result.author);
					$('#t_name1').text(result.t_name);
					$('#point').text(result.point);
					modal.modal('show');
				}
			})
		})
	</script>
	
</body>
</html>