<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta property="og:image" content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>Insert title here</title>
<link rel="stylesheet" href="/css/owl.carousel.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>

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
										<a href="single.html"> <img src="${pageContext.request.contextPath}/resources/hyeongjun/images/news/img10.jpg"
											alt="Sample Article">
										</a>
									</figure>
									<div class="padding">
										<div class="detail">
											<div class="time">December 10, 2016</div>
											<div class="category">
												
											</div>
										</div>
										<h2>
											<a href="single.html">Duis aute irure dolor in
												reprehenderit in voluptate</a>
										</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam.</p>
										<footer>
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
					<div class="line" >
						<div>인기글</div>
						<br/>
					</div>
					<div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 자유게시판
         </div>
         
         <div class="card-body">
            <div class="table-responsive">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                     <tr>
                     	<th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>좋아요수</th>
                        <th>조회수</th>
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                     	<th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>좋아요수</th>
                        <th>조회수</th>
                     </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach var="f" items="${list}">
                     <tr>
                        <td>${f.num}</td>
                        <td><a href="${pageContext.request.contextPath}/free/freedetail/${f.num}">${f.title}</a></td>
                        <td>${f.id}</td>
                        <td>${f.likeit}</td>
                        <td>${f.cnt}</td> 
                     </tr>
                    </c:forEach>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <!-- /.container -->
			</div>
			
	</section>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.migrate.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.js"></script>
	<script> var $target_end = $(".best-of-the-week"); </script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/jquery-number/jquery.number.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/easescroll/jquery.easeScroll.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script>
</body>
</html>