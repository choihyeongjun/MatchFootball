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
		<%-- <div id="map" style="width:1300px;height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c53a2f38f2293a05c7f311d007c7d8f1&libraries=services"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c53a2f38f2293a05c7f311d007c7d8f1"></script>
		<script>
			var container=document.getElementById('map');
			var options={
				center:new kakao.maps.LatLng(35.87139213893614, 128.6018273197994),
				level: 3
			};
			var map = new kakao.maps.Map(container, options);
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch('<%=store_add%>', function (result, status)
					{
				// 정상적으로 검색이 완료됐으면 
				if (status === kakao.maps.services.Status.OK)
				{
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
					// 결과값으로 받은 위치를 마커로 표시합니다 
					var marker = new kakao.maps.Marker(
							{ 
								map: map, position: coords 
								}); 
					// 인포윈도우로 장소에 대한 설명을 표시합니다 
					var infowindow = new kakao.maps.InfoWindow({ 
						content: '<div style="width:150px;text-align:center;padding:6px 0;"><div style="font-weight: bold;"><%=store_name%></div>
						<div>1등당첨횟수 : <%=win_cnt%></div></div>'
						}); infowindow.open(map, marker); 
						// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						map.setCenter(coords); 
						} 
				});

			
		</script> --%>
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