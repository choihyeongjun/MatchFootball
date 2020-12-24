<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.m-imfor-1{
font-size: 11px;
    color: #999;
    margin-top: 3px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    flex-wrap: wrap
}
</style>
</head>
<body>
<div class="container" style="backgroundcolor:white; width:100%;">
		<!-- 사진  -->
		<div align="center" style="margin: 40px;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<iframe width="929" height="320"
							src="https://www.youtube.com/embed/GKz7d5Wx77s" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
					<div class="carousel-item">
						<img src="resources/img/11.jpg" class="d-block w-100" alt="..."
							width="929" height="320">
					</div>
					<div class="carousel-item">
						<img src="resources/img/22.jpg" class="d-block w-100" alt="..."
							width="929" height="320">
					</div>
					<div class="carousel-item">
						<img src="resources/img/33.jpg" class="d-block w-100" alt="..."
							width="929" height="320">
					</div>
					<div class="carousel-item">
						<img src="resources/img/44.jpg" class="d-block w-100" alt="..."
							width="929" height="320">
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
			<div class="swiper-container" style="margin:40px">
				<div class="swiper-wrapper" style="cursor:point;">
					<c:forEach begin="1" end="31" var="i">
						<div class="swiper-slide" style="hover:blue">${i}</div>
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
					<tr>
						<td scope="col" align="center" style="font-weight: bold">??
							개의 매치</td>
						<td scope="col"></td>
						<td scope="col" align="center"><span type="button"
							class="button_match">모든 매치<i class="fab fa-sistrix"></i></span></td>
						<td>
							<a href="#" stlye="text-decoration: none !important">팀매치 등록</a>
							<a href="#" stlye="text-decoration: none !important">전체 일정</a>
						</td>
					</tr>
					<tr>
						<td scope="row" align="center" style="font-weight: bold">팀명프로필전적</td>
						<td><div>날짜 시간</div></td>
						<td><div>매치정보 유형 장소 팀원수</div></td>
						<td><div>남기는 한마디 </div></td>
						<td align="center"><button type="button" class="btn btn-info">매치신청
								가능</button>
							</button></td>
					</tr>
						<tr>
						<td scope="row" align="center" style="font-weight: bold">
						<p style="float:left; margin-top:15px " >사진</p>
						<div style="font-weight: bold">성준fc</div>
						<div >0승0무0패</div>
						</td>
						<td ><div class="m-scedule" style="margin-top:15px ">2020년 12월 28일 10:00</div></td>
						<td >
							<div class="m-imfor" style="margin-top:15px ">
								<div><h5>화원명곡체육공원</h5></div>
								<div class="m-imfor-1"><span style="padding-right: 3px;">⦁축구</span><span style="padding-right: 3px;">15명</span></div>
							</div>
						</td>
						<td align="center"><div class="m-info" style="margin-top:15px ">매너상 입니다 잘부탁드리겟습니다 ㅎ </div></td>
						<td align="center"><button type="button" class="btn btn-info" style="margin-top:7px ">매치신청
								가능</button>
							</button></td>
					</tr>
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

				loop : true, // 무한 반복

				navigation : { // 네비게이션
					nextEl : '.swiper-button-next', // 다음 버튼 클래스명
					prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
				},
			});
		</script>
</body>
</html>