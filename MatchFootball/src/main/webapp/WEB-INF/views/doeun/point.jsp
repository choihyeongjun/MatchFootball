<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style id="theia-sticky-sidebar-stylesheet-TSS">
.theiaStickySidebar:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>
<body>
<div id="main" style="height:850px">
	<div id="content">
		<div class="container">
		
		<div class="row has-sidebar">
						<jsp:include page="Mybar.jsp"></jsp:include>

			<div class="col-md-7 col-lg-8 col-xl-8"
						style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
				<div class="page-header bordered">
							<h1 id="item-2">
								포인트 내역<small>POINT</small>
							</h1>
						</div>
				<div class="row" style="width: auto">
					<div style="margin-top: 15px;" >
						<table border="1" style="width: 100%">
							<tr>
								
								<th>날짜</th>
								<th>사용내역</th>
								<th>포인트</th>
								
							</tr>
							<tr>						
								<td>오늘</td>								
								<td>포인트 충전</td>
								<td>30000</td>								
							</tr>
								<tr>
								<td>오늘</td>								
								<td>매칭사용</td>
								<td>-10000</td>		
							</tr>
							<tr>
								<td>오늘</td>								
								<td>매니저 급여</td>
								<td>10000</td>		
							</tr>
							<tr>
								<td>오늘</td>								
								<td>물품구매</td>
								<td>-110000</td>		
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
	</div>
	<button class="btn btn-primary btn-circle" id="to-top" 
				style="visibility: visible; opacity: 0.5;"><!-- 위로가기버튼 -->
		<i class="fa fa-angle-up"></i>
	</button>
</body>
</html>