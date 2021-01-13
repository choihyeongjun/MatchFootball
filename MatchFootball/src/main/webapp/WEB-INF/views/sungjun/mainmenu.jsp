<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>matchfootball</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footter.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
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
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

li {
	list-style: none;
}

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
	<nav class="navbar navbar-expand-lg navbar-light "
	style="box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
		<div class="container-md">
			${sessionScope.id} ${kemail}
			<c:if test="${sessionScope.id!=null}">
			   <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
			   </c:if>
			 <a class="navbar-brand"
				href="${pageContext.request.contextPath}/match"
				style="color: #04519b"><img
				src="${pageContext.request.contextPath}/resources/img/99.png"
				width="100px" height="50px" /></a>
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
					<li style="width: 80px; float: left; margin-left: 37%;"><a
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
				<div class="container">
				<section class="login first grey">
         <div class="container">
            <div class="box-wrapper">            
               <div class="box box-border">
                  <div class="box-body">
                     <h4>Login</h4>
                     <form action="${pageContext.request.contextPath}/logincheck" method="post">
                        <div class="form-group">
                           <label>Username</label>
                           <input type="text" name="id" class="form-control">
                        </div>
                        <div class="form-group">
                           <label class="fw">Password
                              <a href="forgot.html" class="pull-right">Forgot Password?</a>
                           </label>
                           <input type="password" name="pw" class="form-control">
                        </div>
                        <div class="form-group text-right">
                           <button class="btn btn-primary btn-block">Login</button>
                              <td>${sessionScope.login}</td>
                        </div>
                        <div class="form-group text-center">
                           <span class="text-muted">Don't have an account?</span> <a href="register.html">Create one</a>
                        </div>
                     
                        <div class="title-line">
                           or
                        </div>
            
				<a id="custom-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=7e3b7c35576002f01608bd949ca669da&redirect_uri=http://localhost/MatchFootball/kakaologin&response_type=code"><img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"width="222"/>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
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
							${sessionScope.author} ddd
							<ul class="menul">
								<li class="lili"><a
									href="${pageContext.request.contextPath}/mypage/profile">내
										정보</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/mypage/pay">결제 |
										쿠폰</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/mypage/usedPoint">사용
										내역</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/mypage/msg">쪽지 |
										게시글</a></li>
								<c:if test="${sessionScope.author eq 'user'}">
									<li class="lili"><a
										href="${pageContext.request.contextPath}/manageremploy">신청페이지</a></li>
								</c:if>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">매니저</h3>
							</div>
							<ul class="menul">
								<li class="lili"><a
									href="${pageContext.request.contextPath}/managermypage">매니저
										마이페이지</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/allmatchlist">전체
										경기 일정</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/reviewmodal">리뷰 내역
										페이지</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">팀페이지</h3>
							</div>
							<ul class="menul">
								<c:if test="${sessionScope.t_num eq null }">
									<li class="lili"><a
										href="${pageContext.request.contextPath}/teamMake">팀 생성</a></li>
								</c:if>
								<c:if test="${sessionScope.t_num ne null }">
									<li class="lili"><a
										href="${pageContext.request.contextPath}/teamInfo?t_num=${sessionScope.t_num}">팀
											정보</a></li>
									<li class="lili"><a
										href="${pageContext.request.contextPath}/teamNotice?t_num=${sessionScope.t_num}">팀
											공지</a></li>
									<li class="lili"><a
										href="${pageContext.request.contextPath}/teamInvite?t_num=${sessionScope.t_num}">팀
											초대</a></li>
								</c:if>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/teamList">팀 리스트</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">매치</h3>
							</div>
							<ul class="menul">
								<li class="lili"><a
									href="${pageContext.request.contextPath}/match">개인 매치</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/teammatch">팀 매치</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/bollow">용병 초대</a></li>
									<li class="lili"><a
									href="${pageContext.request.contextPath}/inviteselect">용병 초대장 관리</a></li>

							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">경기장</h3>
							</div>
							<ul class="menul">
								<li class="lili"><a
									href="${pageContext.request.contextPath}/fieldlist">구장 정보</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/fieldinsert">구장 등록</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-6">
							<div>
								<h3 style="text-align: center">커뮤니티</h3>
							</div>
							<ul class="menul">
								<li class="lili"><a
									href="${pageContext.request.contextPath}/allnotice">공지사항</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/free">자유게시판</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/productlist">중고장터</a></li>
								<li class="lili"><a
									href="${pageContext.request.contextPath}/tournamentList">토너먼트</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>