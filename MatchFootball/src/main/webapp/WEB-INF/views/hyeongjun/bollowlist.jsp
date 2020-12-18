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
	});
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
		for(var i=0;i<data.length;i++){
			var tag="<tr>"+
				"<td>"+data[i].id+"</td>"
				"<td>"+data[i].name+"</td>"
				"<td>"+data[i].gender+"</td>"
				"<td>"+data[i].location1+"</td>"
				"<td>"+data[i].pnum+"</td>"
				"<td>"+data[i].manner+"</td>"
				"<td>"+data[i].lv+"</td>"
				"<td>"+data[i].pos+"</td>"
				"<td>"+data[i].pos+"</td>"
				"<td>"+"<button id=\'btnSelect\'>초대하기</button>"+"</td>"
				+"</tr>"
				$("#search").append(tag);
		}
		
	};
	
</script>
</head>
<body>
<div>
		<div class="container" style="float:left;width:40%">
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
					<th class="text-center">초대</th>
				</tr>
				<tbody id="search">
				</tbody>
		</table>
		</div>
	</div>
</body>
</html>