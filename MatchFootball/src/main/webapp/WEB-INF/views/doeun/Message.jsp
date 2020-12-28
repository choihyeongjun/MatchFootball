<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="transform: none;">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메세지</title>

<link rel="shortcut icon" href="/heunheuntrip/img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Libre+Franklin:100,200,300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/selectric.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/myStyle.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/colors/blue.css"
	rel="stylesheet">
<link href="index.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	rel="stylesheet">
<link rel="stylesheet" href="/heunheuntrip/html/header.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>

<style id="theia-sticky-sidebar-stylesheet-TSS">
.theiaStickySidebar:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>

<body style="transform: none; margin-top: 0px;" data-aos-easing="ease"
	data-aos-duration="400" data-aos-delay="0">
	<div id="main" style="transform: none;">
		<div class="container">
		
		<div class="row">
			<div class="col-md-5 col-lg-4 col-xl-4 col-sidebar">
				<div id="sidebar" class="sidebar-left">
					<div class="sidebar_inner">
						<div class="agent-detail">
							<div class="text-center">
								<div id='profileimg'></div>
								<h4 class="main-name" style="color: #869E9E; font-weight: bold;"></h4>
							</div>
						</div>
						<div class="list-group no-border list-unstyled">
							<a href="#" class="list-group-item active"> <i class="far fa-id-card"></i> 내 프로필
							</a> 
							<a href="#" class="list-group-item"><i	class="fas fa-unlock-alt"></i> </a> 
							<a href="#"	class="list-group-item"><i class="fas fa-h-square"></i> </a> 
							<a href="#" class="list-group-item"><i class="fas fa-bookmark"></i>관리 </a> 
							<a href="#" class="list-group-item"><i class="fas fa-sliders-h"></i> 관리 </a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-7 col-lg-8 col-xl-8"
						style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
				<div class="page-header bordered mt0">
					<h1>
						MESSAGE <small>메세지를 주고 받으세요.</small>
					</h1>
				</div>
				<div class="row" style="width: auto">
					<div class="col-md-9" style="margin-top: 15px;">
						<a href="#" class="btn btn-primary float-right send-message" >메세지 보내기</a>
					</div>
					<div class="col-md-9" style="margin-top: 15px;" >
						<table border="1" style="width: 100%">
							<tr>
								<th>날짜</th>
								<th>제목</th>
								<th>보낸 사람</th>
								<th colspan="2">
								수락여부
								</th>
							</tr>
							<tr>
								<td>오늘</td>
								<td>고고</td>
								<td>나</td>
								<td colspan="2"><button class="btn btn-primary acception">수락</button>
								<button class="btn btn-primary acception">거절</button></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="item-listing list"></div>
			</div>
			</div>
		</div>
	</div>
	<button class="btn btn-primary btn-circle" id="to-top" 
				style="visibility: visible; opacity: 1;"><!-- 위로가기버튼 -->
		<i class="fa fa-angle-up"></i>
	</button>

<!-- 	<div id="index-template" type="text/x-handlebars-template">
		<div class="item">

			{{else}}
			<div class="row" style="width: auto">
				<div class="col-md-3"></div>
				<div class="col-md-9" style="margin-top: 15px;">
					<a href="#" class="btn btn-primary float-right send-message"
						data-no={{revNo}}>메세지 보내기</a>
					<h3 class="item-title room-title" data-no={{roomNo}}>
						<a href="#"></a>
					</h3>
					<div class="item-location" style="margin-bottom: 0px">
						<i class="far fa-calendar-alt" style="color: #3b8ced;"></i>
						{{checkIn}} - {{checkOut}}
					</div>
					<div class="item-userName">: {{userName}}</div>
					<div class="item-description"
						style="margin-top: 10px; font-size: 17px">
						<i class="fas fa-arrow-right" style="color: #3b8ced;"></i> "
						{{content}} "
					</div>
					<div class="item-actions">{{createdDate}}</div>
				</div>
			</div>
			{{/if}}
		</div>
		{{/each}}
	</div> -->
</body>

</html>