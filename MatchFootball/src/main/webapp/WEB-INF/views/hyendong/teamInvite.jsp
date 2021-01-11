<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 초대</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/teamMenu.css">
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
</style>

</head>
<body>
<ul class="hi">
	  <c:if test="${sessionScope.id ne null }">
			<li><a href="myTeamInfo?t_num=${member.t_num }">팀 정보</a></li>
			</c:if>
			<c:if test="${sessionScope.id eq null }">
			<li><a href="teamMake">팀 생성</a></li>
			</c:if>
			<li><a href="teamGallery?t_num=${member.t_num }">팀갤러리</a></li>
			<li><a href="teamNotice?t_num=${teamInfo.t_num }">팀 공지</a></li>
			<li><a href="http://localhost/MatchFootball/teamInvite">팀 초대</a></li>
			<li><a href="http://localhost/MatchFootball/teamList">팀 리스트</a></li>
	</ul>
	<div display="inline-block">
		<div class="container" style="float: left; width: 50%">
			<h2 class="table text-center">팀 초대</h2>
			<input type="text" id="id"/>
			<button type="button" onclick="memberlist()">검색</button>
			<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">이 름</th>
					<th class="text-center">성 별</th>
					<th class="text-center">주 소</th>
					<th class="text-center">매 너 도</th>
					<th class="text-center">실력</th>
					<th class="text-center">포지션</th>
					<th class="text-center">초대</th>
				</tr>
				<tbody id="search">
				</tbody>
			</table>
		</div>
	</div>
	<div display="inline-block">
		<div class="container" style="float: left; width: 50%">
			<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">나이</th>
					<th class="text-center">포지션</th>
					<th class="text-center">실력</th>
					<th class="text-center">매 너 도</th>
					<th class="text-center">초대</th>
				</tr>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
	<script>
	$(function() {
		memberlist();
	});
	
	function memberlist() {
		var id = document.getElementById("id").value;
		console.log(id);
		$.ajax({
			url : "bollow/ajax",
			type : 'GET',
			data : {id:"id"},
			dataType : 'json',
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + "에러" + msg);
			},
			success : memberListResult
		});
	}//memberlist
	
	function memberListResult(data) {
		$("#search").empty();
		$.each(
				data,
				function(idx, item) {
				
					$('<tr>')
							.append($('<td>').html(item.id))
							.append($('<td>').html(item.name))
							.append($('<td>').html(item.gender))
							.append($('<td>').html(item.location1))
							.append($('<td>').html(item.manner))
							.append($('<td>').html(item.lv))
							.append($('<td>').html(item.pos))
							
							.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
							.append($('<td>').html('<button type="button" id=\'btnSelect\'>팀초대</button>'))
							.appendTo('#search');
			  });

		};
</script>
</body>
</html>