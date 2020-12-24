<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style>
.swiper-container {
	height: 100px;
	border: none;
	outline: none;
	border-radius: 7px;
}

.swiper-slide {
	text-align: center;
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	box-shadow: 0 0 5px #555;
	max-width: 100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}

.button_match {
	background-color: Transparent;
	border: none;
	outline: none;
	color: black;
	padding: 10px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 12px;
	margin: 4px 2px;
}

img {
	border-radius: 25px;
}

.swiper-container {
	position: -webkit-sticky;
	position: sticky;
	top: 0;
	background-color: white;
	padding: 50px;
	font-size: 20px;
}
<<<<<<< HEAD
<<<<<<< HEAD
a {
 text-decoration:none !important;
 } 
=======
.pp{
margin-bottom: 100px;
=======

a {
	text-decoration: none !important;
}

.pp {
	margin-bottom: 100px;
}
.m-im-t{
    font-size: 11px;
    color: #999;
    margin-top: 3px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    flex-wrap: wrap;
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
}
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
</style>
</head>
<body>
<<<<<<< HEAD
<<<<<<< HEAD
	<div class="container" style="backgroundcolor: white; width: 100%;">
=======
	<div class="container" style="backgroundcolor:white; width:100%; flex: 1;">
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
=======
	<div class="container"
		style="backgroundcolor: white; width: 100%; flex: 1;">
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
		<!-- 사진  -->
		<div align="center" style="margin: 40px;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<iframe width="929" height="520"
							src="https://www.youtube.com/embed/GKz7d5Wx77s" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
					<div class="carousel-item">
						<img src="resources/img/11.jpg" class="d-block w-100" alt="..."
							width="929" height="520">
					</div>
					<div class="carousel-item">
						<img src="resources/img/22.jpg" class="d-block w-100" alt="..."
							width="929" height="520">
					</div>
					<div class="carousel-item">
						<img src="resources/img/33.jpg" class="d-block w-100" alt="..."
							width="929" height="520">
					</div>
					<div class="carousel-item">
						<img src="resources/img/44.jpg" class="d-block w-100" alt="..."
							width="929" height="520">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<!--날 짜 선 택  -->

			<!-- 클래스명은 변경하면 안 됨 -->
			<hr>
			<div class="swiper-container" style="margin: 40px">
				<div class="swiper-wrapper" style="cursor: point;">
					<c:set var="week" value="${cal.getIDayOfWeek()}" />
					<c:forEach begin="1" end="${cal.lastDate }" var="i">
<<<<<<< HEAD
						<div class="swiper-slide" style="hover: blue; cursor: point;" >
						<a href="#">
							<div style="<c:if test="${i ==cal.day }">background-color:purple</c:if>; width:130px; border-radius: 10px">
							<c:choose>
								<c:when test="${i % 7 == 6 }"><p style="color:red">${i}</c:when>
								<c:when test="${i % 7 == 5 }"><p style="color:blue">${i}</c:when>
								<c:otherwise><p>${i}</c:otherwise>
							</c:choose>
								 <br>
								<div style="font-size:14px;">
								<c:choose>
									<c:when test="${ week == 1}"><p style="color:red;">일</p></c:when>
									<c:when test="${ week == 2}"><p>월</p></c:when>
									<c:when test="${ week == 3}"><p>화</p></c:when>
									<c:when test="${ week == 4}"><p>수</p></c:when>
									<c:when test="${ week == 5}"><p>목</p></c:when>
									<c:when test="${ week == 6}"><p>금</p></c:when>
									<c:when test="${ week == 7}"><p style="color:blue;">토</p></c:when>
								</c:choose>
								<c:set var="week" value="${(week+1) == 7 ? 7 : (week+1)% 7 }" />
								</div>
							</div>
=======
						<div class="swiper-slide" style="hover: blue; cursor: point;">
							<a href="#">
								<div
									style="<c:if test="${i ==cal.day }">background-color:purple; color:white;</c:if>; width:130px; border-radius: 10px; ">
									<c:choose>
										<c:when test="${i % 7 == 6 }">
											<p style="color: red">${i}
										</c:when>
										<c:when test="${i % 7 == 5 }">
											<p style="color: blue">${i}
										</c:when>
										<c:otherwise>
											<p>${i}
										</c:otherwise>
									</c:choose>
									<br>
									<div style="font-size: 14px;">
										<c:choose>
											<c:when test="${ week == 1}">
												<p style="color: red;">일</p>
											</c:when>
											<c:when test="${ week == 2}">
												<p>월</p>
											</c:when>
											<c:when test="${ week == 3}">
												<p>화</p>
											</c:when>
											<c:when test="${ week == 4}">
												<p>수</p>
											</c:when>
											<c:when test="${ week == 5}">
												<p>목</p>
											</c:when>
											<c:when test="${ week == 6}">
												<p>금</p>
											</c:when>
											<c:when test="${ week == 7}">
												<p style="color: blue;">토</p>
											</c:when>
										</c:choose>
										<c:set var="week" value="${(week+1) == 7 ? 7 : (week+1)% 7 }" />
									</div>
								</div>
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
							</a>
						</div>
					</c:forEach>

				</div>

				<!-- 네비게이션 -->
				<div class="swiper-button-next"></div>
				<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
				<div class="swiper-button-prev"></div>
				<!-- 이전 버튼 -->
				<!-- 페이징 -->
				<div class="swiper-pagination"></div>
			</div>

			<!-- 매치 정보  -->
			<table class="table " style="margin: 40px;">
				<tbody>
					<tr style=" border-bottom: white;">
						<td scope="col" align="center"  ><div class="button_match">매치 리스트</div></td>
						<td scope="col"></td>
						<td scope="col" align="center"><span type="button"
							class="button_match">모든 매치  <i class="fab fa-sistrix"></i></span></td>
					</tr>
<<<<<<< HEAD
					<tr>
						<td scope="row" align="center" style="font-weight: bold">시간</td>
						<td><div>경기장 이름</div>
							<div>경기 정보</div></td>
						<td align="center"><button type="button" class="btn btn-info">신청
								가능</button>
							</button></td>
					</tr>
					<tr>
						<td scope="row" align="center" style="font-weight: bold">13:00</td>
						<td><div>대구 성준 풋살장</div>
							<div>남성 6vs6매치 일반1~3Lv</div></td>
						<td align="center"><button type="button"
								class="btn btn-danger">매칭 완료</button></td>
					</tr>
					<tr>
						<td scope="row" align="center" style="font-weight: bold">13:00</td>
						<td><div>대구 성준 풋살장</div>
							<div>남성 6vs6매치 일반1~3Lv</div></td>
						<td align="center"><button type="button"
								class="btn btn-danger">매칭 완료</button></td>
					</tr>
					<tr>
						<td scope="row" align="center" style="font-weight: bold">13:00</td>
						<td><div>대구 성준 풋살장</div>
							<div>남성 6vs6매치 일반1~3Lv</div></td>
						<td align="center"><button type="button"
								class="btn btn-danger">매칭 완료</button></td>
					</tr>
					<tr>
						<td scope="row" align="center" style="font-weight: bold">13:00</td>
						<td><div>대구 성준 풋살장</div>
							<div>남성 6vs6매치 일반1~3Lv</div></td>
						<td align="center"><button type="button"
								class="btn btn-danger">매칭 완료</button></td>
					</tr>
=======
					<c:forEach var="p_match" items="${p_matchVO }">
						<tr>
							<td scope="row" align="center">
								<div style="font-weight: bold; margin-top: 12px">
								 ${p_match.m_hour }
								</div>
							</td>
							<td><div>${p_match.f_name }</div>
								<div class="m-im-t">⦁ ${p_match.m_type }  매치 · ${p_match.p_max }  레벨${p_match.lv }Lv</div></td>
							<td align="center"><button type="button"
									class="btn btn-info">신청 가능</button>
								</button></td>
						</tr>
					</c:forEach>

>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
				</tbody>
			</table>
		</div>
	</div>
	<script>
		new Swiper('.swiper-container', {

			slidesPerView : 7, // 동시에 보여줄 슬라이드 갯수
			spaceBetween : 30, // 슬라이드간 간격
			slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

			// 그룹수가 맞지 않을 경우 빈칸으로 메우기
			// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
			loopFillGroupWithBlank : true,
<<<<<<< HEAD
			initialSlide: ${cal.day-1},
=======
			initialSlide:${cal.day-3},
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
			loop : false, //  반복

			navigation : { // 네비게이션
				nextEl : '.swiper-button-next', // 다음 버튼 클래스명
				prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		});
	</script>
</body>
</html>