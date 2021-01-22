<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	cursor: pointer;
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

a {
	text-decoration: none !important;
}

li {
	list-style: none;
}

.pp {
	margin-bottom: 100px;
}

p {
	margin: 0;
}

.aa {
	width: 130px;
	border-radius: 50px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.rr {
	color: red;
}

.bb {
	color: blue;
}

.ww {
	color: white;
}

.blackk {
	color: black;
}

.ss {
	background-color: #314d9f;
	color: white;
	width: 130px;
	border-radius: 50px;
	padding-top: 7px;
	padding-bottom: 7px;
}

.ap-info {
	background-color: #314d9f;
	border-radius: 10px;
	font-size: 17px;
	color: white;
	text-align: center;
	padding: 10px;
}

.ap-info1 {
	background-color: #ea3e42;
	border-radius: 10px;
	font-size: 17px;
	color: white;
	text-align: center;
	padding: 10px;
}
/* 팀로고랑 승패 이름   */
.lista {
	align-items: center;
	cursor: pointer;
	display: flex;
	border-bottom: 1px solid #ddd;
	flex-wrap: nowrap;
	justify-content: space-between;
}

.m-im-t {
	margin: 10px;
	align-items: center;
	justify-content: flex-start;
	flex-wrap: wrap;
}

.m-im-t .wnwnwn {
	font-size: 14px;
	color: #999;
	margin-bottom: 10px;
	align-items: center;
	justify-content: flex-start;
	flex-wrap: wrap;
}

.tlwn {
	align-items: center;
	padding-right: 15px;
	width: 25%;
	display: flex;
}
</style>
<script>
$(function() {
	/*클릭시 css  */
	$(".aa").on("click", "a", function() {
		$(".qqqq a").removeClass("ss");
		$(event.target).addClass("ss");
	})
	
})
function tdeta(url){
	if('${sessionScope.id}' == ''){
		alert("로그인 하세요")
	}else{
		location.href=url
	}
}
</script>
</head>
<body>
	<div class="con" style="backgroundcolor: white; width: 100%; flex: 1;">
		<!-- 사진  -->
		<div align="center"
			style="margin: auto; padding: 25px; background-color: #fafafa; border-bottom: 1px solid #ddd;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel" style="margin: 0 300px;">

				<div class="carousel-inner" ">
					<div class="carousel-item active">
						<img src="resources/img/11.jpg" class="d-block w-100" alt="..."
							width="629px" height="420px">
					</div>
					<div class="carousel-item">
						<img src="resources/img/11.jpg" class="d-block w-100" alt="..."
							width="629px" height="420px">
					</div>
					<div class="carousel-item">
						<img src="resources/img/22.jpg" class="d-block w-100" alt="..."
							width="629px" height="420px">
					</div>
					<div class="carousel-item">
						<img src="resources/img/33.jpg" class="d-block w-100" alt="..."
							width="629px" height="420px">
					</div>
					<div class="carousel-item">
						<img src="resources/img/44.jpg" class="d-block w-100" alt="..."
							width="629px" height="420px">
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
		</div>

		<!-- 클래스명은 변경하면 안 됨 -->
		<div class="swiper-container" style="margin: 0 250px">

			<div class="swiper-wrapper" style="cursor: point;">
				<c:set var="week" value="${cal.getIDayOfWeek()}" />

				<c:forEach begin="1" end="${cal.lastDate }" var="i">

					<div class="swiper-slide" style="hover: #314d9f; cursor: point;">
						<fmt:formatNumber var="no" minIntegerDigits="2" value="${i}" />

						<a href="teammatch?m_date=${date}-${no}">
							<div class="aa"
								style="<c:if test="${i == m_dat }">background-color:#314d9f; color:white;</c:if>;">

								<c:set var="weeklist"
									value='<%=new String[]{"일", "월", "화", "수", "목", "금", "토"}%>' />

								<c:choose>
									<c:when test="${i == m_dat }">
										<c:set var="selcol" value="ww" />
									</c:when>
									<c:when test="${week % 7 == 1 }">
										<c:set var="selcol" value="rr" />
									</c:when>
									<c:when test="${week % 7 == 0 }">
										<c:set var="selcol" value="bb" />
									</c:when>
									<c:otherwise>
										<c:set var="selcol" value="blackk" />
									</c:otherwise>
								</c:choose>
								<p class="${selcol}">${i}</p>
								<div style="font-size: 14px;">
									<p class="${selcol}">
										<c:out value="${weeklist[week-1] }" />
									</p>
									<c:set var="week" value="${(week+1) == 7 ? 7 : (week+1)% 7 }" />
								</div>
							</div>
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
		<div style="margin: 0 250px">
			<div style="display: flex; justify-content: space-between;">
				<div class="tmb">
					<a>매치 리스트</a>
				</div>
				<div>
					<!--아작스로 불러오기!~~!~ㄴ  -->
					<span class="button_match"><a>모든 매치 <i
							class="fab fa-sistrix"></i></a></span>
				</div>
			</div>


			<ul style="margin-bottom: 50px;">
				<c:forEach var="teammatch" items="${teammatch }">
					<li class="listl">
							<a class="lista"
								href="javascript:tdeta('teammatchDetail?m_no=${teammatch.m_no }&t_num=${teammatch.t_num}')">
								<div class="tlwn">
									<div style="margin: 10px;">
										<img alt="nope"
											src="${pageContext.request.contextPath}/resources/img/${teammatch.t_logo}"
											style="width: 70px; height: 70px; border-radius: 50%; marging: 5px;">
									</div>
									<div class="m-im-t">
										<p
											style="font-weight: bold; font-size: 20px; text-align: center;">${teammatch.t_name }</p>
										<p class="wnwnwn" style="font-size: 15px">2전 1승 1무 1패</p>
										<input type="hidden" value="${teammatch.m_no }" /> <input
											type="hidden" value="${teammatch.t_num }" />
									</div>
								</div>

								<div style="width: 20%; margin: 5px;">
									<p>⦁날짜 : ${teammatch.m_date }</p>
									<p>⦁시간 : ${teammatch.m_hour }</p>
								</div>
								<div style="width: 40%; margin: 5px;">
									<p>⦁유형 : ${teammatch.mtype }</p>
									<p>⦁장소 : ${teammatch.f_name }</p>
									<p>⦁팀원 : ${teammatch.mtype }명</p>
									<p>
										<input value="${teammatch.t_num }" style="display: none">
									</p>
									
								</div>
								<div style="width: 20%;">
									<c:if test="${empty teammatch.so_num}">
										<p class="ap-info">신청 가능</p>
									</c:if>
									<c:if test="${!empty teammatch.so_num}">
										<p class="ap-info1">매칭 완료</p>
									</c:if>
								</div>
							</a>
						</li>
				</c:forEach>
				<c:if test="${day eq 0 }">
					<div style="text-align:center; margin: 100px;">
						<p style="font-size: 25px;">등록된 매치가 없습니다</p>
						<p style="color:#999;">다른 날을 검색 해 주세요 </p>
						
					</div>
				</c:if>
			</ul>
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
			initialSlide:${cal.day-4} ,
			loop : false, //  반복
			resistance : false,
			navigation : { // 네비게이션
				nextEl : '.swiper-button-next', // 다음 버튼 클래스명
				prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		});
	</script>
</body>
</html>