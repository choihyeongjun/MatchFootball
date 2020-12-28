<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>용병 초대 리스트</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	width: 100%;
	background: grey;
	color: white;
}

#modal {
	display: none;
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
}

#modal h2 {
	margin: 0;
}

#modal button {
	display: inline-block;
	width: 100px;
	margin-left: calc(100% - 100px - 10px);
}

#modal .modal_content {
	width: 300px;
	margin: 100px auto;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
}

#modal .modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}
</style>
<script>
	$(function() {
		memberlist();
		inviteSelect();
	});

	function inviteSelect() {
		$('body').on('click', '#btnSelect', function() {
			var userId = $(this).closest('tr').find('#hidden_userId').val();
			console.log(userId);
			$.ajax({
				url : "bollowsearch/ajax",
				type : 'GET',
				data : {
					id : userId
				},
				dataType : 'json',
				error : function(xhr, status, msg) {
					alert("상태값 :" + status + " Http에러메시지 :" + msg);
				},
				success : invitelist
			});
		});
	}//inviteselect
	//document.querySelector('#dd > tr > td').innerHTML = 111

	function invitelist(data) {
		$('<tr>').append($('<td>').html(data.id)).append(
				$('<td>').html(data.name)).append(
				$('<td id="state">').html("초대중")).appendTo('#dd')
	};
	function memberlist() {
		$.ajax({
			url : "bollow/ajax",
			type : 'GET',
			dataType : 'json',
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + "에러" + msg);
			},
			success : memberListResult
		});
	}//memberlist
	function memberListResult(data) {
		$("#search").empty();
		$
				.each(
						data,
						function(idx, item) {
							$('<tr>')
									.append($('<td>').html(item.id))
									.append($('<td>').html(item.name))
									.append($('<td>').html(item.gender))
									.append($('<td>').html(item.location1))
									.append($('<td>').html(item.pnum))
									.append($('<td>').html(item.manner))
									.append($('<td>').html(item.lv))
									.append($('<td>').html(item.pos))
									.append(
											$(
													'<input type=\'hidden\' id=\'hidden_userId\'>')
													.val(item.id))
									.append(
											$('<td>')
													.html(
															'<button type="button" id=\'btnSelect\'>초대하기</button>'))
									.appendTo('#search');

						});

	};
</script>
</head>
<body>
	<div display="inline-block">
		<div class="container" style="float: left; width: 50%">
			<h2 class="table text-center">용병참가 목록</h2>
			<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">이 름</th>
					<th class="text-center">성 별</th>
					<th class="text-center">주 소</th>
					<th class="text-center">전화번호</th>
					<th class="text-center">매 너 도</th>
					<th class="text-center">실력</th>
					<th class="text-center">포지션</th>
					<th class="text-center">초대</th>
				</tr>
				<tbody id="search">
				</tbody>
			</table>
		</div>
		<div class="container" style="float: right; width: 30%">
			<h2 class="table text-center">초대된 목록</h2>
			<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">이 름</th>
					<th class="text-center">초대 여부</th>
				</tr>
				<tbody id="dd">
				</tbody>
			</table>
		</div>
	</div>
	<div align="center">
		<br>
		<button type="button" data-toggle="modal" data-target="#myModal"
			id="modal_opne_btn">초대장 작성하기</button>
	</div>

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h3 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;초대장</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="">
					<!-- Modal body -->
					<div class="modal-body">
						<table style="margin: 0% 4% 0% 4%">
							<tr>
								<td>제목:</td>
								<td style="width: 300px"><input id="title" type="text"
									style="width: 372px; margin: 1%"></td>
								<br>
							</tr>
							<tr>
								<td>내용:</td>
								<td><textarea id="comm" type="text" rows="4" cols="50"
										style="margin: 1%; resize: none;"></textarea></td>
							</tr>
						</table>
					</div>
				</form>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">저장</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>