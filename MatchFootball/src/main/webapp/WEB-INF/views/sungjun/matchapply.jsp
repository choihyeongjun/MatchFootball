<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	function submitCheck() {

		//alert("신청되었습니다");

		return true;
	}
</script>
</head>
<body>
	<div style="padding: 20px; display: flex;">
		<span style="font-size: 30px; margin: 15px;"> 공도 차고, <br>
			돈도 버는 <br> <strong style="border-bottom: 5px solid #FCC645;">
				MF 매니저</strong>
		</span>
		<div style="padding-left: 30px;">
			<img alt="dd" src="images/라이언.jpg"
				style="width: 250px; height: 250px; float: right;">
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
	<form class="inser" action="sendmatchapply" method="post"
		onsubmit="return submitCheck();">
		<div class="inserm">
			<input name="id" type="hidden" value="${membervo.id }"> 
			<input name="m_no" type="hidden" value="${p_matchVO.m_no }"> 
			<input name="p_con" type="hidden" value="개인 매치비">
			<input name="point" type="hidden" value="${p_matchVO.price }">
			<input name="npoint" type="hidden" value="-${p_matchVO.price }">
		</div>
		<div align="center">
			<button type="submit" class="abtn">신청하기</button>
		</div>
	</form>

</body>
</html>