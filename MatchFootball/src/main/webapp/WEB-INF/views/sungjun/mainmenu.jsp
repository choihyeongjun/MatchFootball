<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>matchfootball</title>
<link rel="stylesheet" href="resources/css/footter.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style>
body, html {
	height: 100%;
}

.bodywrapper {
	overflow: auto;
	height: 100%;
}

/* unset bs3 setting */
.modal-open {
	overflow: auto;
}

/* extra stetting for fixed navbar, see bs3 doc
*/
body {
	padding-bottom: 50px;
}

.menul {
	list-style: none;
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
			$("#id01").load();
		});
		$(".bbb").on("show.bs.modal", function() {
			$("#main_menu").load();
		});
	})
</script>
</head>
<body>
	<!-- header -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
		<div class="container-md">
			<a class="navbar-brand" href="#" style="color: #04519b"><img
				src="resources/img/99.png" width="100px" height="50px" /></a>
			<div>
				<button type="button" class="btn abc" data-toggle="modal"
					data-target="#id01">
					<i class="fas fa-user fa-1x"></i>
				</button>

				<button type="button" class="btn bbb" data-toggle="modal"
					data-target="#main_menu">
					<i class="fas fa-bars fa-2x"></i>
				</button>
			</div>
		</div>
	</nav>
	
	<tiles:insertAttribute name="body" />
	
	<!-- 	footer -->
	<footer>
		<div class="site-links">
			<div class="site-links-wrapper">
				<ul>
					<li><a href="/the-club/careers/" target="_self"
						style="text-decoration: none">Careers</a></li>
					<li><a href="/the-club/" target="_self"
						style="text-decoration: none">The Club</a></li>
					<li><a href="/the-club/history/" target="_self"
						style="text-decoration: none">History</a></li>
					<li><a
						href="https://shop.tottenhamhotspur.com/?scn=link&amp;csc=footer-nav"
						target="_self" style="text-decoration: none">Shop</a></li>
					<li><a href="/the-club/foundation/" target="_self"
						style="text-decoration: none">Foundation</a></li>
					<li><a
						href="https://ask.tottenhamhotspur.com/hc/en-us/categories/200992345-Accessibility"
						target="_self" style="text-decoration: none">Accessibility</a></li>
				</ul>
			</div>
		</div>
		<div class="social-links">
			<div class="social-links__wrapper" align="center">
				<ul>
					<li style="width: 80px; float: left; margin-left:37%;"><a
						href="https://www.facebook.com/TottenhamHotspur/" target="_blank"><img
							src="https://tot-tmp.azureedge.net/media/11676/facebook.png?anchor=center&amp;mode=crop&amp;width=750"
							data-src="https://tot-tmp.azureedge.net/media/11676/facebook.png?anchor=center&amp;mode=crop&amp;width=750"
							alt="" data-set="true"></a></li>
					<li style="width: 80px; float: left;"><a
						href="https://www.instagram.com/spursofficial/" target="_blank"><img
							src="https://tot-tmp.azureedge.net/media/11675/instagram.png?anchor=center&amp;mode=crop&amp;width=750"
							data-src="https://tot-tmp.azureedge.net/media/11675/instagram.png?anchor=center&amp;mode=crop&amp;width=750"
							alt="" data-set="true"></a></li>
					<li style="width: 80px; float: left;"><a
						href="https://twitter.com/SpursOfficial" target="_blank"><img
							src="https://tot-tmp.azureedge.net/media/11678/twitter.png?anchor=center&amp;mode=crop&amp;width=750"
							data-src="https://tot-tmp.azureedge.net/media/11678/twitter.png?anchor=center&amp;mode=crop&amp;width=750"
							alt="" data-set="true"></a></li>
					<li style="width: 80px; float: left;"><a
						href="https://www.youtube.com/user/spursofficial" target="_self"><img
							src="https://tot-tmp.azureedge.net/media/11679/youtube.png?anchor=center&amp;mode=crop&amp;width=750"
							data-src="https://tot-tmp.azureedge.net/media/11679/youtube.png?anchor=center&amp;mode=crop&amp;width=750"
							alt="" data-set="true"></a></li>
					<li style="width: 80px; float: left;"><a
						href="https://www.snapchat.com/add/spursofficial" target="_blank"><img
							src="https://tot-tmp.azureedge.net/media/11677/snapchat.png?anchor=center&amp;mode=crop&amp;width=750"
							data-src="https://tot-tmp.azureedge.net/media/11677/snapchat.png?anchor=center&amp;mode=crop&amp;width=750"
							alt="" data-set="true"></a></li>
					<li style="width: 80px; float: left;"><a
						href="https://www.naver.com/" target="_self"><img
							src="https://tot-tmp.azureedge.net/media/28598/naver-v2.png?anchor=center&amp;mode=crop&amp;width=405"
							data-src="https://tot-tmp.azureedge.net/media/28598/naver-v2.png?anchor=center&amp;mode=crop&amp;width=405"
							alt="" data-set="true"></a></li>
				</ul>
			</div>
		</div>
	</footer>
	
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
							<div>
								<h3 style="text-align: center">마이페이지</h3>
							</div>
							<ul class="menul">
								<li class="lili">내 정보</li>
								<li class="lili">결제 | 쿠폰</li>
								<li class="lili">사용 내역</li>
								<li class="lili">쪽지 | 게시글</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">매니저 마이페이지</h3>
							</div>
							<ul class="menul">
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">팀페이지</h3>
							</div>
							<ul class="menul">
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">매치</h3>
							</div>
							<ul class="menul">
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">경기장</h3>
							</div>
							<ul class="menul">
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
							</ul>
						</div>

						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">용병</h3>
							</div>
							<ul class="menul">
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
								<li class="lili">마이페이지</li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">커뮤니티</h3>
							</div>
							<ul class="menul">
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
</body>
</html>