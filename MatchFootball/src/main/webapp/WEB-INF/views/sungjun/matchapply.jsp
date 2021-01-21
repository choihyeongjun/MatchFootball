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
	color: white;
	border: none;
	box-shadow: none;
	padding: 15px;
	margin: 0;
	text-align: center;
	font-size: 25px;
	background-color: #314d9f;
}

.abtn1 {
	width: 100%;
	height: 70px;
	border-radius: 10px;
	color: white;
	border: none;
	box-shadow: none;
	padding: 15px;
	margin: 0;
	text-align: center;
	font-size: 25px;
	background-color: red;
}

.form-floating {
	padding-bottom: 5px;
}

.form-control {
	height: calc(4rem + 2px)
}

.form-control, .form-select {
	border-radius: 10px;
}
</style>
<script>
	
</script>
</head>
<body>
	<div style="padding: 20px; display: flex;">
		<span style="font-size: 30px; margin: 15px;"> 즐겁게, <br>
			재밌게 <br> <strong style="border-bottom: 5px solid #FCC645;">
				매칭 신청</strong>
		</span>
		<div style="padding-left: 60px;">
			<img alt="dd" src="images/라이언2.png"
				style="width: 200px; height: 200px; float: right;">
		</div>
	</div>

	<div class="form-floating">
		<input class="form-control" placeholder="Leave" id="floatingTextarea"
			readonly value="${membervo.name }"> <label
			for="floatingTextarea">이름</label>
	</div>
	<div class="form-floating">
		<input class="form-control" placeholder="Leave" id="floatingTextarea"
			readonly value="${membervo.gender }"> <label
			for="floatingTextarea">성별</label>
	</div>
	<div class="form-floating">
		<input class="form-control" placeholder="Leave" id="floatingTextarea"
			readonly value="${membervo.birth }"> <label
			for="floatingTextarea">생일</label>
	</div>
	<div class="form-floating">
		<input class="form-control" placeholder="Leave" id="floatingTextarea"
			value="${membervo.pnum }" required="required"> <label
			for="floatingTextarea">휴대폰 번호</label>
	</div>
	<div class="form-floating">
		<input class="form-control" placeholder="Leave" id="floatingTextarea"
			value="${p_matchVO.price } 원" required="required" readonly><label
			for="floatingTextarea">참가비</label>
	</div>
	<form class="inser" action="sendmatchapply" method="post">
		<div class="inserm">

			<input name="id" type="hidden" value="${membervo.id }"> <input
				name="m_no" type="hidden" value="${p_matchVO.m_no }"> <input
				name="p_con" type="hidden" value="개인 매치비"> <input
				name="point" type="hidden" value="${p_matchVO.price }"> <input
				name="npoint" type="hidden" value="-${p_matchVO.price }"> <input
				name="f_id" type="hidden" value="-${p_matchVO.f_id }">

		</div>
		<div align="center">
			<c:if test="${empty seltime }">
				<button type="submit" class="abtn" id="abtn">신청하기</button>
			</c:if>
			<c:if test="${!empty seltime }">
				<p class="abtn1">같은 시간대에 예약이 있습니다</p>
			</c:if>
		</div>
	</form>

</body>
</html>