<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row" style="padding: 50px;">
		<div class="col-6">
			<form action="teammatchregi">
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com"> <label for="floatingInput">팀
						이름</label>
				</div>
				
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com"> <label for="floatingInput">경기장 선택 </label>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com"> <label for="floatingInput">Email
						address</label>
				</div>
				<label for="exampleFormControlInput1" class="form-label">경기
					유형</label> <select class="form-select" aria-label="Disabled select example">
					<option selected value="">선택</option>
					<option value="5:5풋살">5:5풋살</option>
					<option value="6:6풋살3">6:6풋살</option>
					<option value="축구">축구</option>
				</select>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label" style="padding:5px;">Example
						textarea</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3"></textarea>
				</div>
			</form>
		</div>
		<div class="col-6"></div>
	</div>
	<!-- <label for="exampleDataList" class="form-label">경기 유형</label>
				 <input class="form-control" list="datalistOptions"
					id="exampleDataList" placeholder="경기 유형을 선택하세요">
				<datalist id="datalistOptions">
					<option value="5:5풋살">
					<option value="6:6풋살">
					<option value="축구">
				</datalist> -->
</body>
</html>