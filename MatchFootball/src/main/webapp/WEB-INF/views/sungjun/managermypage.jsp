<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.cache {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid #ddd;
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.cachec {
	background-color: #3540A5;
	color: white;
	border-radius: 6px;
	border: none;
	box-shadow: none;
	transition: background-color 0.3s ease-out;
	display: block;
	text-align: center;
	cursor: pointer;
}

.btn.sm {
	line-height: 32px;
	font-size: 12px;
	padding: 0 10px;
	color: white;
}

.scedule {
	padding: 10px 10px 10px 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: white;
}

.allscedule {
	padding: 10px 10px 10px 10px;
	justify-content: space-between;
	align-items: center;
	background-color: white;
	margin-bottom: 20px;
}

.scedulemore a {
	font-size: 12px;
	text-decoration: none !important
}

.allcha {
	padding: 10px 10px 10px 10px; 
	display : flex; 
	justify-content :space-between; 
	align-items : center;
	background-color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.maaa ul {
	list-style: none;
}

.maaa ul li {
	margin: 5px;
}

.mamama {
	color: black;
	border-radius: 6px;
	border: none;
	box-shadow: none;
	transition: background-color 0.3s ease-out;
	display: block;
	text-align: center;
	cursor: pointer;
}
.mamama ul {
	list-style: none;
}
.btn.sf {
	line-height: 32px;
	font-size: 12px;
	padding: 0 10px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
}
.matchc{
display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 20px;
	margin-bottom: 20px;
}
</style>
</head>
<body style="background-color: #fafafa;">
	<div class="container">
		<div class="mgpage"
			style="padding: 70px; margin-left: 180px; margin-right: 180px;">
			<div class="hi" style="margin-bottom: 30px">
				<h2 style="margin: 0px; font-weight: 300;">안녕하세요♧</h2>
				<br>
				<h5 style="font-weight: bold; margin: 0px">김현동매니저님</h5>
			</div>
			<div class="cache">
				<div>
					<p style="font-size: 10px; color: #999; margin-bottom: 5px;">나의
						캐시 잔액</p>
					<h3>10000 원</h3>
				</div>
				<div class="btn-right cachec">
					<a class="btn sm" href="#">캐시 충전</a>
				</div>
			</div>
			
			<div class="allscedule">
				<div class="scedule">
					<h3>경기 일정</h3>
					<div class="scedulemore">
						<a href="#">전체 보기</a>
					</div>
				</div>
				<div class="mamama">
					<ul>
						<li>
							<div class="matchc">2020년 12월 22일 대구 북구풋살장 10:00
							<a class="btn sf" href="#">
								리뷰 작성</a>
								</div>
						</li>
						<li>
							<div class="matchc">2020년 12월 22일 대구 북구풋살장 10:00
							<a class="btn sf" href="#">
								리뷰 작성</a>
								</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="allscedule">
				<div class="allcha">
					<h3>입금내역</h3>
					<div class="scedulemore">
						<a href="#">전체 보기</a>
					</div>
				</div>
				<div class="maaa">
					<ul>
						<li>2020년 12월 22일 10:00 25000원 입금</li>
						<li>2020년 12월 25일 14:43 25000원 입금</li>
						<li>2020년 12월 27일 20:17 25000원 입금</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>