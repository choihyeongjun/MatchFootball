<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.site {
	
}
.lili {
	padding: 3px 0 3px 0;
    text-indent: 20px;
    line-height: 170%;
}
</style>
<script>
	$(function() {
		$(".abc").on("show.bs.modal", function() {
			$("#main_menu").load();
		});
		$(".abc").on("show.bs.modal", function() {
			$("#main_menu").load();
		});
	})
</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
		<div class="container-md">
			<a class="navbar-brand" href="#" style="color: #04519b">로고</a>
			<h1 class="aa" style="color: #04519b">MatchFootball</h1>
			<div>
				<button type="button" class="btn abc" data-toggle="modal"
					data-target="#id01">
					<i class="fas fa-user fa-1x" style="color: #04519b"></i>
				</button>

				<button type="button" class="btn abc" data-toggle="modal"
					data-target="#main_menu">
					<i class="fas fa-bars fa-2x" style="color: #04519b"></i>
				</button>
			</div>
		</div>
	</nav>
	<div align="center">
		<img src="https://www.youtube.com/watch?v=QxZ1bQIahkY">
	</div>
	<!--로그인  -->
	<div class="modal fade bd-example-modal-xl" id="id01" tabindex="-1"
		role="dialog" aria-labelledby="myExtraLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content" style="background-color: none;">
				<div class="w3-center">
					<br> <span
						onclick="document.getElementById('id01').style.display='none'"
						class="w3-button w3-xlarge w3-hover-red w3-display-topright"
						title="Close Modal">&times;</span> <img src="img_avatar4.png"
						alt="Avatar" style="width: 30%" class="w3-circle w3-margin-top">
				</div>

				<form class="w3-container" action="/action_page.php">
					<div class="w3-section">
						<label><b>Username</b></label> <input
							class="w3-input w3-border w3-margin-bottom" type="text"
							placeholder="Enter Username" name="usrname" required> <label><b>Password</b></label>
						<input class="w3-input w3-border" type="password"
							placeholder="Enter Password" name="psw" required>
						<button class="w3-button w3-block w3-green w3-section w3-padding"
							type="submit">Login</button>
						<input class="w3-check w3-margin-top" type="checkbox"
							checked="checked"> Remember me
					</div>
				</form>

				<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
					<button
						onclick="document.getElementById('id01').style.display='none'"
						type="button" class="w3-button w3-red">Cancel</button>
					<span class="w3-right w3-padding w3-hide-small">Forgot <a
						href="#">password?</a></span>
				</div>

			</div>
		</div>
	</div>
	<!-- Extra large modal -->
	<div class="modal fade bd-example-modal-xl" id="main_menu"
		tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content" style="background-color: none;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div><h3>마이페이지</h3></div>
							<ul>
								<li class="lili">내 정보</li>
								<li class="lili">결제 | 쿠폰</li>
								<li class="lili">사용 내역</li>
								<li class="lili">쪽지 | 내 게시글</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>매니저 마이페이지</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>팀페이지</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>매치</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>경기장</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
					</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>용병</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
						<div><h3>커뮤니티</h3></div>
							<ul>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							<li class="lili">마이페이지</li>
							</ul>
						</div>
					</div>
					</div>
					</div>
				</div>

			</div>
		</div>
	</div>
<body>
</html>