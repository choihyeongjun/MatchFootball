<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/css/style.css" type="text/css">
</head>
<body>
<div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>구장등록</h2>
                    </div>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/fieldcommit" method="post" encType="multipart/form-data">
                <div >
                    <div class="col-lg-6 col-md-6">
                        <input type="text" name="f_id" placeholder="id">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" name="name" placeholder="구장이름">
                    </div>
                     <div class="col-lg-6 col-md-6">
                        <input type="text" name="ttype" placeholder="구장분류">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" name="location1" placeholder=" 대분류">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" name="location2 "placeholder="소분류">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" name="price "placeholder="가격">
                    </div>
                     <div class="col-lg-6 col-md-6">
                        <input type="file" placeholder="이미지" name="uploadFile">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea name="comm" placeholder="구장 상세 설명"></textarea>
                        <button type="submit" class="site-btn">구장등록</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->
</body>
<script src="js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/hyeongjun/js/main.js"></script>
</html>