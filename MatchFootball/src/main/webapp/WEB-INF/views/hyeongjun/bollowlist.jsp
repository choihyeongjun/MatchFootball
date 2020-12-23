<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>용병 초대 리스트</title>
<script>
	$(function(){
		memberlist();
		inviteSelect();
	});
	function inviteSelect(){
		$('body').on('click','#btnSelect',function(){
			var userId=$(this).closest('tr').find('#hidden_userId').val();
			console.log(userId);
			$.ajax({
			url:"bollowsearch/ajax",
			type:'GET',
			data:{id:userId},
			dataType:'json',
			error:function(xhr,status,msg){
				alert("상태값 :" + status + " Http에러메시지 :"+msg);
			},
			success:invitelist
			});
		});
	}//inviteselect
	//document.querySelector('#dd > tr > td').innerHTML = 111
	
	function invitelist(data){
		$('<tr>')
		.append($('<td>').html(data.id))
		.append($('<td>').html(data.name))
		.append($('<td>').html("초대중"))
		.appendTo('#dd')
	};
	function memberlist(){
	$.ajax({
		url:"bollow/ajax",
		type:'GET',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :"+status+"에러"+msg);
		},
		success:memberListResult
	});
	}//memberlist
	function memberListResult(data){
		$("#search").empty();
		$.each(data,function(idx,item){
			$('<tr>')
			.append($('<td>').html(item.id))
			.append($('<td>').html(item.name))
			.append($('<td>').html(item.gender))
			.append($('<td>').html(item.location1))
			.append($('<td>').html(item.pnum))
			.append($('<td>').html(item.manner))
			.append($('<td>').html(item.lv))
			.append($('<td>').html(item.pos))
			.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
			.append($('<td>').html('<button type="button" id=\'btnSelect\'>초대하기</button>'))
			.appendTo('#search');
			
		});
		
	};
	
</script>
</head>
<body>
<div display="inline-block">
		<div class="container" style="float:left;width:50%">
		<h2 class="table text-center">용병참가 목록</h2>
		<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">이  름</th>
					<th class="text-center">성  별</th>
					<th class="text-center">주  소</th>
					<th class="text-center">전화번호</th>
					<th class="text-center">매 너 도 </th>
					<th class="text-center">실력</th>
					<th class="text-center">포지션</th>
					<th class="text-center">초대</th>
				</tr>
				<tbody id="search">
				</tbody>
		</table>
		</div>
		<div class="container" style="float:right;width:30%">
		<h2 class="table text-center">초대된 목록</h2>
		<table class="table text-center">
				<tr class="tr1">
					<th class="text-center">아이디</th>
					<th class="text-center">이  름</th>
					<th class="text-center">초대 여부</th>
				</tr>
				<tbody id="dd">
				</tbody>
		</table>
		</div>
	</div>
</body>
</html>