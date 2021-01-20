<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.inserm {
	padding-left: 20px;
	padding-right: 20px;
}

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

		alert("신청되었습니다");

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
	<form class="inser" action="sendapply" method="post"
		onsubmit="return submitCheck();">
		<div class="inserm">
			<input class="form-control" name="id" placeholder="Leave"
				id="floatingTextarea" type="hidden" value="${sessionScope.id }">
			<div class="form-floating">
				<input class="form-control" name="name" placeholder="Leave"
					id="floatingTextarea" readonly value="${member.name }"> <label
					for="floatingTextarea">이름</label>
			</div>
			<div class="form-floating">
				<input class="form-control" name="gender" placeholder="Leave"
					id="floatingTextarea" readonly value="${member.gender }"> <label
					for="floatingTextarea">성별</label>
			</div>
			<div class="form-floating">
				<input class="form-control" name="birth" placeholder="Leave"
					id="floatingTextarea" readonly value="${member.birth }"> <label
					for="floatingTextarea">생일</label>
			</div>
			<div class="form-floating">
				<input class="form-control" name="pnum" placeholder="Leave"
					id="floatingTextarea" value="${member.pnum }" required="required"> <label
					for="floatingTextarea">휴대폰 번호</label>
			</div>
			<select required class="form-select" name="loc" 
				 style="margin-bottom: 5px">
				<option disabled selected >활동 구 선택</option>
				<option value="1">달서구</option>
				<option value="2">북구</option>
				<option value="3">중구</option>
				<option value="4">서구</option>
				<option value="5">수성구</option>
				<option value="6">동구</option>
			</select>
			<div class="form-floating" style="padding-bottom: 30px;">
				<textarea class="form-control" name="comm" placeholder="Leave"
					id="floatingTextarea2" style="height: 100px;" required="required"></textarea>
				<label for="floatingTextarea">한마디 남기기</label>
				<input type="hidden" name="author" value = "wait">
			</div>
		</div>
		<div align="center">
			<button type="submit" class="abtn">신청하기</button>
		</div>
	</form>

</body>
</html>