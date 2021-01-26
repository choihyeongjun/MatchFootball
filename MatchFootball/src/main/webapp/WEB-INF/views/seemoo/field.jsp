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
<title>관리자페이지</title>
<style>
body { margin-top: 40px; font-size: 14px; font-family: Arial, Helvetica Neue, Helvetica, sans-serif; }
#wrap { width: 1100px; margin: 0 auto; }
#external-events { float: right; width: 150px; padding: 0 10px; border: 1px solid #ccc; background: #eee; text-align: left; }
#external-events h4 { font-size: 16px; margin-top: 0; padding-top: 1em; }
#external-events .fc-event { margin: 10px 0; cursor: pointer; }
#external-events p { margin: 1.5em 0; font-size: 11px; color: #666; }
#external-events p input { margin: 0; vertical-align: middle; }
#calendar { float: left; width: 900px; }
</style>

<script>
$(function(){
	fieldList();
	fieldDelete();
});

//사용자 목록 조회 요청
function fieldList() {
	$.ajax({
		url:'../field/ajax',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:fieldListResult
	});
}//userList

//사용자 목록 조회 응답
function fieldListResult(data) {
	$("#f_main").empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td class="idnum">').html(item.f_id)) //필드아이디
		.append($('<td>').html(item.name))	   			 //경기장명
		.append($('<td>').html(item.ttype))  			 //필드타입(축구/풋살)
		.append($('<td>').html(item.location1))   		 //주소
		.append($('<td>').html(item.location2))  		 //상세주소
		.append($('<td>').html(item.state))				 //상태
		.append($('<td>').html(item.comm))				 //내용
		.append($('<td>').html('<button id=\'btnSelect\'class="btn btn-primary">상세조회</button>'))
		.append($('<td>').html('<button id=\'btnDelete\'class="btn btn-danger">삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.f_id))
		.append($('<input type=\'hidden\' id=\'hidden_fieldname\'>').val(item.name))
		.appendTo('#f_main');
	});//each
	$('#dataTable').DataTable();
}//userListResult

function fieldDelete() {
	//삭제 버튼 클릭
	$('f_main').on('click','#btnDelete',function(){
		var userId = $(event.target).closest('tr').find('#hidden_userId').val();
		var f_name = $(event.target).closest('tr').find('#hidden_fieldname').val();
		var result = confirm(f_name +" 정말로 삭제하시겠습니까?");
		if(result) {
			console.log("아이디값: "+userId)
			$.ajax({
				url:'../fielddelete',  
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				type : 'GET',
				data :{f_id : userId},
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success: location.reload()
			});      
		}//if
	}); //삭제 버튼 클릭
}//userDelete
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
  		<div class="card mb-4" style="margin-left: 240px; margin-top: 30px; width: 1650px;">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> 경기장 등록 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 75px;">경기장Id</th>
											<th>구장명</th>
											<th>분류</th>
											<th>주소</th>
											<th>상세주소</th>
											<th style="width: 75px;">상태</th>
											<th>내용</th>
											<th style="width: 75px;"></th>
											<th></th>
										</tr>
									</thead>
									<tbody id="f_main" align="center">
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
		<!-- The Modal -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header"><h2 style="margin: auto" id="name">의 프로필 정보</h2></div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<table  align="center">
							<img class="userProfileImg" alt="유저이미지" id="img" src="${pageContext.request.contextPath}/images">
							<tr><th>경기장Id</th><td>:</td><td style="padding-left: 10px" id="f_id"></td></tr>
							<tr><th>구장명</th>	<td>:</td><td style="padding-left: 10px" id="name"></td></tr>
							<tr><th>분류</th><td>:</td><td style="padding-left: 10px" id="ttype"></td></tr>
							<tr><th>주소</th><td>:</td><td style="padding-left: 10px" id="location1"></td></tr>
							<tr><th>상세주소</th><td>:</td><td style="padding-left: 10px" id="location2"></td></tr>
							<tr><th>상태</th>	<td>:</td><td style="padding-left: 10px" id="state"></td></tr>
							<tr><th>가격</th><td>:</td><td style="padding-left: 10px" id="price"></td></tr>
							<tr><th>소개</th><td>:</td><td style="padding-left: 10px" id="comm"></td></tr>
						</table>
					</div>
	
						<!-- Modal footer -->
						<div class="modal-footer">
							<button style="text-align: center;" type="button" class="btn btn-danger" data-dismiss="modal">종료</button>
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
				url : "fieldinfo?f_id=" + num,
				dataType : "json",
				success : function(result) {
					$('#img').attr("src",'${pageContext.request.contextPath}/images/'+result.img);
					console.log(result)
					$('#f_id').text(result.f_id);
					$('#name').text(result.name);
					$('#ttype').text(result.ttype);
					$('#location1').text(result.location1);
					$('#location2').text(result.location2);
					$('#state').text(result.state);
					$('#price').text(result.price);
					$('#comm').text(result.comm);
					modal.modal('show');
				}
			})
		})
	</script>
	
   <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>