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

<script>
$(function(){
	userDelete();
	
	init();
});

//사용자 삭제 요청
function userDelete() {
	//삭제 버튼 클릭
	$('body').on('click','#btnDelete',function(){
		var userId = $(this).closest('tr').find('#hidden_userId').val();
		var result = confirm(userId +" 사용자를 정말로 삭제하시겠습니까?");
		if(result) {
			$.ajax({
				url:'users/'+userId,  
				type:'DELETE',
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success:function(xhr) {
					console.log(xhr.result);
					userList();
				}
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
										<th>ID</th>
										<th>Name</th>
										<th style="width: 40px;">성별</th>
										<th>회원권한</th>
										<th>용병권한</th>
										<th>매너점수</th>
										<th>포인트</th>
										<th style="width: 80px;"></th>
									</tr>
								</thead>
								<tfoot align="center">
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>성별</th>
										<th>회원권한</th>
										<th>용병권한</th>
										<th>매너점수</th>
										<th>포인트</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody align="center">
									<c:forEach items="${members}" var="member">
										<tr>
											<td>
												<a class="idnum" id="aa" data-num="${member.id}">${member.id}</a>
											</td>
											<td>${member.name}</td>
											<td>${member.gender}</td>
											<td>
												<select name="author">
													<option value="" selected="selected">선택</option>
													<option value="일반회원">일반회원</option>
													<option value="일반회원">매니저</option>
													<option value="용병">용병</option>
												</select>
											</td>
											<td>
												<select name="author2">
													<option value="" selected="selected">선택</option>
													<option value="용병신청">Y</option>
													<option value="미신청">N</option>
												</select>
											</td>
											<td>${member.manner}</td>
											<td>${member.point}Point</td>
											<td>
												<button type="submit" class="btn btn-primary" value="삭제" id="btnDelete">회원삭제</button>
											</td>
										</tr>
									</c:forEach>
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
						<button style="text-align: center;" type="button" class="btn btn-danger" data-dismiss="modal">종료</button>
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