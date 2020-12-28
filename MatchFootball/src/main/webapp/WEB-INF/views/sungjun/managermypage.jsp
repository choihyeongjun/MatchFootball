<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	color: #626262;
	font-family: 'NanumSquareRound';
	font-size: 14px;
	font-weight: normal;
	letter-spacing: 0.01em;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-font-feature-settings: "kern" 1;
	-moz-font-feature-settings: "kern" 1;
}

.matchc {
	color: #666666;
	font-family: 'NanumSquareRound';
	font-size: 14px;
	font-weight: normal;
	letter-spacing: 0.01em;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-font-feature-settings: "kern" 1;
	-moz-font-feature-settings: "kern" 1;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 20px;
}

.cache {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	margin-bottom: 20px;
	background-color: white;
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
	display: flex;
	justify-content: space-between;
	align-items: center;
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
</style>
</head>
<body style="background-color: #fafafa;">
	<div class="container">
		<div class="mgpage"
			style="padding: 70px; margin-left: 180px; margin-right: 180px;">
			<div class="hi" style="margin-bottom: 30px">
				<h2 style="margin: 0px; font-weight: 300;">안녕하세요<i class="fas fa-futbol fa-2x" style="color:black"></i></h2>
				<br>
				<h5 style="font-weight: bold; margin: 0px">김현동매니저님</h5>
			</div>
			<div class="cache">
				<div>
					<p style="font-size: 10px; color: #999; margin-bottom: 5px;">
						나의 캐시 잔액 <i class="fas fa-comment-dollar fa-3x"
							style="margin-left: 10px; color: #ffc645;"></i>
					</p>
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
							<div class="matchc">
								<a style="">2020년 12월 22일 대구 북구풋살장 10:00</a> <a class="btn sf"
									href="#"> 리뷰 작성</a>
							</div>
						</li>
						<li>
							<div class="matchc">
								2020년 12월 22일 대구 북구풋살장 10:00 <a class="btn sf" href="#"> 리뷰
									작성</a>
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
				<c:forEach var="p_point" items="${p_point }">
					<div class="maaa">
						<ul>
							<li>${p_point.p_date }  ${p_point.npoint }원 입금</li>
						</ul>
					</div>
				</c:forEach>
				<script>
					function goPage(p) {
						location.href = "managermypage?page=" + p;

					}
				</script>
				<my:paging paging="${paging}" jsfunc="goPage" />
			</div>
		</div>
	</div>
</body>
</html>