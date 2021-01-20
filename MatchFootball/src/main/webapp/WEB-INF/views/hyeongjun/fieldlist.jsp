<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
<!-- Css Styles --> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/bootstrap.min.css" type="text/css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/style.css" type="text/css">
</head>
<style>
footer{
    left: 0px;
    bottom: 0px;
    width: 100%;
    background: grey;
    color: white;
}

.lili a { color: white; }
.lili {
    padding: 3px 0 3px 0;
    text-indent: 0px;
    line-height: 170%;
    color: white;
}
</style>		


<body>

	<div class="col-lg-9 col-md-7" style="text-align: center; margin-left: 15%; margin-top: 15px;">
		<div style="test-align:center;" >
				<h2>경기장 리스트</h2>
			</div>
		<div class="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d49116.39176087041!2d-86.41867791216099!3d39.69977417971648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x886ca48c841038a1%3A0x70cfba96bf847f0!2sPlainfield%2C%20IN%2C%20USA!5e0!3m2!1sen!2sbd!4v1586106673811!5m2!1sen!2sbd"
				height="500" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			<div class="map-inside">
				<i class="icon_pin"></i>
				<div class="inside-widget">
					<h4>New York</h4>
					<ul>
						<li>Phone: +12-345-6789</li>
						<li>Add: 16 Creek Ave. Farmingdale, NY</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="filter__item">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="filter__sort">
						<span>Sort By</span> <select>
							<option value="0">Default</option>
							<option value="0">Default</option>
						</select>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="filter__found">
						<h6>
							<span>16</span> Products found
						</h6>
					</div>
				</div>
				<div class="col-lg-4 col-md-3">
					<div class="filter__option">
						<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			
			<c:forEach var="field" items="${list}">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg">
					<img src="${pageContext.request.contextPath}/images/${field.img}">
					</div>
					<div class="product__item__text">
						<h6>
							<a href="${pageContext.request.contextPath}/fieldlist/fielddetail/${field.f_id}">${field.name}</a>
						</h6>
						<h5>${field.price}</h5>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		
		<div class="product__pagination">
			<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
				class="fa fa-long-arrow-right"></i></a>
		</div>
		<button type="submit"  class="btn btn-primary" id="submitBtn" onclick="location.href='${pageContext.request.contextPath}/fieldinsert'">등록</button>
	</div>
</body>
<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/hyeongjun/js/main.js"></script>
</html>