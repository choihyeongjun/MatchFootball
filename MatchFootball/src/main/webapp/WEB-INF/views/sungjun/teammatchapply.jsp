<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* .inserm {
	padding-left: 20px;
	padding-right: 20px;
}
 */
.abtn {
	width: 100%;
	height: 70px;
	border-radius: 10px;
	background-color: #314d9f;
	color: white;
	border: none;
	box-shadow: none;
}

.form-floating {
	padding-bottom: 15px;
}

.form-control {
	height: calc(4rem + 2px)
}

.form-control, .form-select {
	border-radius: 10px;
}
</style>
<script>
$(function(){
	$(".abtn").on("click",function(){
		if($("input[name=id]:checked").length < '${min.min }'){
			alert("인원수가 부족합니다")
		}else{
			$("#startmember").submit();
		}
		
	})
})
</script>
</head>
<body>

	<div class="row">
		<div class="col-6">
			<div>
				<div class="tlwn" style="padding: 10px;">
					<div style="margin: 10px;">
						<img alt="npe"
							src="${pageContext.request.contextPath}/resources/img/${teamname.t_logo}"
							style="width: 150px; height: 150px; border-radius: 20%; marging: 5px;" />
					</div>
					<div class="m-im-t">
						<p style="font-weight: bold; font-size: 30px; text-align:;">${teamname.t_name }</p>
						<p class="wnwnwn" style="font-size: 15px;">2전 1승 1무 1패</p>
					</div>
				</div>
			</div>
			<div class="form-floating">
				<input class="form-control" placeholder="Leave"
					id="floatingTextarea" readonly value="${teamname.t_level }LV">
				<label for="floatingTextarea">팀레벨</label>
			</div>
			<div class="form-floating">
				<input class="form-control" placeholder="Leave"
					id="floatingTextarea" readonly value="${teamname.t_address }">
				<label for="floatingTextarea">활동구역</label>
			</div>
			<div class="form-floating">
				<input class="form-control" placeholder="Leave"
					id="floatingTextarea" value="평균 ${teamage.age}살" required="required">
				<label for="floatingTextarea">연령대</label>
			</div>
			<div class="form-floating">
				<input class="form-control" placeholder="Leave"
					id="floatingTextarea11" value=""
					required="required" readonly><label for="floatingTextarea">참가비</label>
			</div>
		</div>
		<div class="col-6">
			<div >
				<h2 style="text-align: center;margin: 30px;">선수 목록</h2>
			</div>
			<form id="startmember" name="startmember" action="startmember"
				method="post" ">
				<c:forEach var="teamlist" items="${teamlist }">
					<div style="padding-bottom: 20px; text-align: center;">
						<label for="chk" style="font-size: 22px;">${teamlist.pos} ${teamlist.name } </label>
						<input type="checkbox" class="chk" id="chk" name="id" value="${teamlist.id }" style="zoom:1.5;" >
					</div>
				</c:forEach>
				<input type="hidden" name="so_name" value="${teamname.t_name }">
				<input type="hidden" name="t_num" value="${teamlist[0].t_num }">
				<input type="hidden" name="m_no" value=""> <input
					type="hidden" name="p_con" value="팀 매치 비"> <input
					type="hidden" name="point" value=""> 
					<input type="hidden" name="npoint" value="">
					<button type="button" class="abtn" >신청하기</button>
			</form>
		</div>
	</div>
</body>
</html>