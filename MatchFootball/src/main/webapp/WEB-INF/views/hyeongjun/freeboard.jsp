<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta property="og:image"
	content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>Insert title here</title>
<link rel="stylesheet" href="/css/owl.carousel.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/hyeongjun/js/owl.carousel.min.js"></script>
<style>
footer {
    position: fixed;
    left: 0px;
    bottom: 0px;
    width: 100%;
    background: grey;
    color: white;
}
</style>
</head>
<body>
	<section class="home">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-12 col-xs-12">

					<div class="line">
						<div>인기글</div>
					</div>

					<div class="row" style="flex-wrap: nowrap;">

						<div class="col-md-6 col-sm-6 col-xs-12">
							<article class="article col-md-12">
								<div class="inner">
									<figure>
										<a href="single.html"> <img
											src="${pageContext.request.contextPath}/resources/hyeongjun/images/news/img10.jpg"
											alt="Sample Article">
										</a>
									</figure>
									<div class="padding">
										<div class="detail">
											<div class="time">December 10, 2016</div>
											<div class="category">
												<a href="category.html">Healthy</a>
											</div>
										</div>
										<h2>
											<a href="single.html">Duis aute irure dolor in
												reprehenderit in voluptate</a>
										</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam.</p>
										<footer id="dd">
											<a href="#" class="love"><i
												class="ion-android-favorite-outline"></i>
												<div>1263</div></a> <a class="btn btn-primary more"
												href="single.html">
												<div>More</div>
												<div>
													<i class="ion-ios-arrow-thin-right"></i>
												</div>
											</a>
										</footer>
									</div>
								</div>
							</article>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12">

							<article class="article col-md-12">
								<div class="inner">
									<figure>
										<a href="single.html"> <img
											src="${pageContext.request.contextPath}/resources/hyeongjun/images/news/img06.jpg"
											alt="Sample Article">
										</a>
									</figure>
									<div class="padding">
										<div class="detail">
											<div class="time">December 22, 2016</div>
											<div class="category">
												<a href="category.html">Healthy</a>
											</div>
										</div>
										<h2>
											<a href="single.html">Exercitation ullamco laboris nisi
												ut aliquip</a>
										</h2>
										<p>Maecenas accumsan tortor ut velit pharetra mollis.
											Proin eu nisl et arcu iaculis placerat sollicitudin ut est.
											In fringilla dui dui.</p>
										<footer>
											<a href="#" class="love"><i
												class="ion-android-favorite-outline"></i>
												<div>327</div></a> <a class="btn btn-primary more"
												href="single.html">
												<div>More</div>
												<div>
													<i class="ion-ios-arrow-thin-right"></i>
												</div>
											</a>
										</footer>
									</div>
								</div>
							</article>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12">

							<article class="article col-md-12">
								<div class="inner">
									<figure>
										<a href="single.html"> <img
											src="${pageContext.request.contextPath}/resources/hyeongjun/images/news/img05.jpg"
											alt="Sample Article">
										</a>
									</figure>
									<div class="padding">
										<div class="detail">
											<div class="time">December 09, 2016</div>
											<div class="category">
												<a href="category.html">Lifestyle</a>
											</div>
										</div>
										<h2>
											<a href="single.html">Mauris elementum libero at pharetra
												auctor</a>
										</h2>
										<p>Vivamus in efficitur mi. Nullam semper justo ut elit
											lacinia lacinia. Class aptent taciti sociosqu ad litora
											torquent per conubia nostra.</p>
										<footer>
											<a href="#" class="love"><i
												class="ion-android-favorite-outline"></i>
												<div>1083</div></a> <a class="btn btn-primary more"
												href="single.html">
												<div>More</div>
												<div>
													<i class="ion-ios-arrow-thin-right"></i>
												</div>
											</a>
										</footer>
									</div>
								</div>
							</article>
						</div>



					</div>
				</div>
				<div class="line">
					<div>인기글</div>
					<br/>
					<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col" style="text-align: center;">번호</th>
				<th scope="col" style="text-align: center;">제목</th>
				<th scope="col" style="text-align: center;">글쓴이</th>
				<th scope="col" style="text-align: center;">작성일</th>
				<th scope="col" style="text-align: center;">조회수</th>
				<th scope="col" style="text-align: center;">좋아요수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="l" items="${list}">
			<tr>
				<th scope="row" style="text-align: center;">${l.num}</th>
				<td style="text-align: center;">${l.title}</td>
				<td style="text-align: center;">${l.id}</td>
				<td style="text-align: center;">${l.b_date}</td>
				<td style="text-align: center;">${l.cnt}</td>
				<td style="text-align: center;">${l.likeit}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
				</div>
			</div>
	</section>

	

	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.migrate.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.js"></script>
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/jquery-number/jquery.number.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/easescroll/jquery.easeScroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script>
</body>
</html>