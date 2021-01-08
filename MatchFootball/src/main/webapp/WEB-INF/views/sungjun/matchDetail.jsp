<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
footer {
	left: 0px;
	bottom: 0px;
	width: 100%;
	background: grey;
	color: white;
}

a {
	text-decoration: none !important;
	cursor: pointer;
}

.qqqq {
	position: sticky;
	top: 0;
	padding: 15px;
	font-size: 20px;
	background-color: white;
	border-bottom: 1px solid #ddd;
}

.employ {
	bottom: 0;
	width: 320px;
	background-color: #314d9f;
	padding: 20px 20px;
	color: white;
	text-align: center;
	z-index: 2;
	cursor: pointer;
	idth: 320px;
	left: 0;
	right: 0;
	margin: auto;
	bottom: 100px;
	border-radius: 100px;
}

.lets {
	background-color: white;
	border-top: 1px solid #ddd;
	padding: 20px;
	position: fixed;
	bottom: 0;
	width: 100%;
}

.p1 {
	text-align: center;
	margin: 5px;
	font-size: 20px;
}

.qqqq a {
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 20px;
	font-size: 20px;
}

.ss {
	border-bottom: 3px solid #FFC645;
	font-weight: 800;
	padding-bottom: 15px;
	line-height: 50px;
	color: #314d9f
}
</style>
<script>
	$(function() {
		/*클릭시 css  */
		$(".qqqq").on("click", "a", function() {
			$(".qqqq a").removeClass("ss");
			$(event.target).addClass("ss");
		})
		
		/* 신청 모달  */
		$(".p1").on("click", function() {
			var m_no = $(this).data("num");
			modal = $("#matchaplly");
			$.ajax({
				url : "managerapply?m_no=" + m_no,
				success : function(result) {
					modal.find('#body3').html(result);
					modal.modal('show');
				}
			});
		})
	})
	
		
</script>
</head>
<body>
	<div class="container">
		<div>
			<img src="resources/img/11.jpg" class="d-block w-100" alt="..."
				width="929" height="520">
		</div>
		<div style="margin-left: 200px; margin-right: 200px; margin-top: 30px">
			<div class="qqqq" align="center">
				<a href="#play"> 진행방식 </a> <a href="#playroom"> 구장시설 </a> <a
					href="#playin"> 매치안내</a> <a href="#playm"> 환급규정</a>
			</div>
			<div>
				<h3 style="text-align: left;">2020년 12월 24일 12:00</h3>
			</div>
			<div style="align: left;">
				<h2 style="color: #08088A; font-weight: bold;">성준 풋살장</h2>
			</div>

			<div>
				<h5>대구 북구 태전동 333-3</h5>
			</div>
			<div>
				<h6 style="color: #999;">참가비</h6>
			</div>
			<div id="play"
				style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">
				<h5 style="color: #08088A; font-weight: bold;">10000원</h5>
			</div>
			<div style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">
				<div>
					<div id="playroom">
						<h4 style="font-weight: bold; margin: 30px;">진행방식</h4>
					</div>
					<div>
						<a>5vs5</a> &nbsp;&nbsp; <a>남성매치</a>&nbsp;&nbsp; <a>Lv 1~2</a>&nbsp;&nbsp;
						<a>풋살화</a>&nbsp;&nbsp; <a>max 15</a>
					</div>
				</div>
			</div>

			<div>
				<div id="playin"
					style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">

					<div style="margin: 30px;">
						<h4 style="font-weight: bold;">구장시설</h4>
					</div>
					<div>
						<pre>
20x40m 무료주차 풋살화 대여 구장 특이사항 
*이동간에 마스크 착용 필수 미 착용시 매치 참여 제한
*주차 : 무료 
*흡연 구역 외 절대 금연 (적발시 이후 서비스 이용제한) 
*화장실 : O 
*풋살화 대여 : O(3000원) 
*기타 -물 1.5L 3병 제공 -물 , 음료 판매
		</pre>
					</div>
				</div>
			</div>


			<div id="playm"
				style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">
				<div>
					<div style="margin: 30px;">
						<h4 style="font-weight: bold;">주의사항</h4>
					</div>
					<div>
						<pre>
<h5>클린 매치 풋볼</h5>
⦁ 다른 참가자들을 위해 시간을 주수해 주세요.
⦁ 풋살화 또는 스터드가 없는 운동화를 착용해 주세요.
⦁ 불필요한 언행,지시 등은 삼가해 주세요.
⦁ 과도한 경쟁, 승부욕은 나와 상대방의 부상을 야기할 수 있습니다.
⦁ 폭언,폭행은 이용 정지의 심각한 사유가 될 수 있습니다.

<h5>이용 제한이 되는 경우</h5> 
⦁폭행
⦁경기 분위기 저해(비협조적 태도)
⦁다른 대상에 대한 공격적 언행(욕설,지시,명령,짜증,반말)
⦁성별 불일치
		</pre>
					</div>
				</div>
			</div>

			<div style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">
				<div>
					<div style="margin: 30px;">
						<h4 style="font-weight: bold;">환급 규정</h4>
					</div>
					<div>
						<pre>
20x40m 무료주차 풋살화 대여 구장 특이사항 
*이동간에 마스크 착용 필수 미 착용시 매치 참여 제한
*주차 : 무료 
*흡연 구역 외 절대 금연 (적발시 이후 서비스 이용제한) 
*화장실 : O 
*풋살화 대여 : O(3000원) 
*기타 -물 1.5L 3병 제공 -물 , 음료 판매
		</pre>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="lets">
		<div class="employ">
			<p class="p1" data-num="${sessionScope.id }">매치 신청</p>
		</div>
	</div>
	<!--개인매치 신청 모달  -->
	<div class="modal fade" id="matchaplly" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body3">...</div>
			</div>
		</div>
	</div>
</body>
</html>