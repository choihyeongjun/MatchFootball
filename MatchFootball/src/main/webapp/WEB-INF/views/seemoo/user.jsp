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

<title>유저관리페이지</title>
<<<<<<< HEAD
<script>

$(function(){
    
    userDelete();
    
 });


 function userDelete() {
    //삭제 버튼 클릭
    $('body').on('click','#btnDelete',function(){
    	console.log($(this).parent().prev().children());
       var userId = $('#aa').text();
       var result = confirm(userId +" 사용자를 정말로 삭제하시겠습니까?");
       if(result) {
          $.ajax({
             url:'admin/userdelete',
             data: {id:userId},
             dataType:'json',
             error:function(xhr,status,msg){
                console.log("상태값 :" + status + " Http에러메시지 :"+msg);
             }, success:function(xhr) {
                console.log(xhr);
                memberList();
             }
          });     
        }
    }); //삭제 버튼 클릭
 } //userDelete 

 var table = $('#dataTable').DataTable({
	    "language": {
	        "emptyTable": "데이터가 없어요.",
	        "lengthMenu": "페이지당 _MENU_ 개씩 보기",
	        "info": "현재 _START_ - _END_ / _TOTAL_건",
	        "infoEmpty": "데이터 없음",
	        "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
	        "search": "에서 검색: ",
	        "zeroRecords": "일치하는 데이터가 없어요.",
	        "loadingRecords": "로딩중...",
	        "processing":     "잠시만 기다려 주세요...",
	        "paginate": {
	            "next": "다음",
	            "previous": "이전"
	        }
	    },
	});

</script>
=======
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball

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
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead align="center">
									<tr>
										<th style="width: 10px;">No.</th>
										<th>ID</th>
										<th>Name</th>
										<th>권한</th>
										<th>매너점수</th>
										<th>포인트</th>
									</tr>
								</thead>
								<tfoot align="center">
									<tr>
										<th>No.</th>
										<th>ID</th>
										<th>Name</th>
										<th>권한</th>
										<th>매너점수</th>
										<th>포인트</th>
									</tr>
								</tfoot>
								<tbody align="center">
										<tr>
											<td></td>
											<td>
<<<<<<< HEAD
												<a class="idnum"></a>
=======
												<a class="idnum" data-num="${member.id }">${member.id}</a>
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball
											</td>
											<td></td>
											<td>
												<select name="job">
													<option value="" selected="selected">선택</option>
													<option value="일반회원">일반회원</option>
													<option value="용병">용병</option>
												</select>
											</td>
											<td></td>
											<td></td>
										</tr>
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
					<div class="modal-header"></div>
					
					<!-- Modal body -->
					<div class="modal-body"></div>

					<!-- Modal footer -->
					<div class="modal-footer">
<<<<<<< HEAD
						<button id="btnDelete" type="button" 
						class="btn btn-danger" data-dismiss="modal">회원삭제</button>
=======
						<button type="button" class="btn btn-danger" data-dismiss="modal">수정</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball
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
				url : "userinfo?id=" + num,
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