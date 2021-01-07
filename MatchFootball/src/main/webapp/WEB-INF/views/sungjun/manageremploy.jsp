<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.ml {
	list-style: none;
	display: flex;
	width: 600px;
	margin-left: auto;
	margin-right: auto;
	padding-bottom: 50px;
}

.ml li {
	text-align: left;
	border-left: 3px solid #FFC645;
	padding: 0 10px;
}

.employ {
	position: fixed;
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

.p1 {
	margin: 0;
	padding: 0;
	word-break: break-all;
	font-size: 20px
}

.modal-content {
	border-radius: 20px;
	width: 540px;
}

.modal {
	text-align: center;
}

}
@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

.modal-body {
	padding: 0;
}

.apcom>ul>li {
	
	list-style: none;
	font-size:20px;
}
</style>
<script>
	$(function() {
		$(".p1").on("click", function() {
			var id = $(this).data("num");
			modal = $("#maplly");
			$.ajax({
				url : "managerapply?id=" + id,
				success : function(result) {
					modal.find('#body2').html(result);
					modal.modal('show');
				}
			});
		})
	})
</script>
</head>
<body>
	<div class="container-fluid">

		<div align="center" style="margin: 15px; margin-top: 60px;">
			<img src="resources/img/88.jpg" width="1400px" height="600px">
		</div>

		<div style="margin: 80px" align="center">
			<div style="font-weight: bold; align: center; font-size: 25px">
				매니저 란</div>
			<div>
				매치풋볼의 매치 매니저로서 참가자들이 즐겁게 운동할 수 있도록 <br>매치 운영을 담당하고 좋아하는 스포츠 활동을
				하며 돈도 벌 수 있는 취미형 일자리입니다.
			</div>
		</div>
		<div>
			<ul class="ml">
				<li>
					<h3>
						내가 원하는 시간에<br>원하는 구장에서
					</h3> <span style="color: #999; word-break: keep-all;"> 나의 라이프
						스타일에 맞게 자유롭게 근무 시간과 장소를 선택할 수 있습니다.</span>
				</li>
				<li>
					<h3>경기당 25,000원 지급</h3> <span
					style="color: #999; word-break: keep-all;"> 경기당 25,000원이
						지급됩니다. (시급 12,500원)</span>
				</li>
			</ul>
		</div>

		<div align="center" style="margin: 15px; margin-top: 60px;">
			<img src="resources/img/11.jpg" width="1400px" height="400px">
		</div>
		
		<div class="aptitle" style=" text-align: center;">
			<h2 style="border-bottom: 4px solid #FFC645;display: inline-block;  ">채용 공고</h2>
		</div>
		<div class="apcom" >
			<ul style="margin:0px 200px 100px 400px; padding:30px;  ">
				<li>
					<h4 style="font-weight: bold;">
						<모집 요강>
					</h4> <span>⦁업무 : 매치풋볼 풋살 경기 운영, 장비 관리, 서비스 개선 <br> ⦁자격 : 만
						21세 이상의 축구를 사랑하는 누구나
				</span><br>
				</li>
				<li>
					<h4 style="font-weight: bold;">
						<활동 방식>
					</h4> <span>⦁ 매 월 중순 다음 달 희망하는 매치 선착순 수시 선택 후 매치 진행 </span><br>
				</li>
				<li>
					<h4 style="font-weight: bold;">
						<활동비>
					</h4> ⦁ 경기 1회 당 25,000원 (시급 12,500원 상당) 3.3% 사업소득세 공제 <br>
				</li>
				<li>
					<h4 style="font-weight: bold;">
						<우대 사항>
					</h4> ⦁ 매치풋볼 매치 참가 경험이 많은 사람 <br> ⦁ 오랜 기간, 많은 매치 진행이 가능한 사람 <br>⦁
					책임, 성실, 예의, 친절의 이미지에 적합한사람 <br> ⦁ 참가자의 지각/불참/부상을 대비해 언제든 매치에
					참여할 수 있는 사람 <br>
				</li>
				<li>
					<h4 style="font-weight: bold;">
						<혜택>
					</h4> ⦁ 매니저 네트워킹 참여 <br> ⦁ 매니저 활동 용품 지급 <br> ⦁ 매치풋볼 매치 참여 혜택 <br>
					- 담당 매치에 잔여 자리가 생길 시 매치 참여 가능 <br> - 매 월 5경기 진행 시 1경기 무료 이용 쿠폰
					지급(월 1인 1매 한정) <br>
				</li>
			</ul>
		</div>
		
		
		<div align="center" style="margin: 15px; margin-top: 60px;">
			<img src="resources/img/77.jpg" width="1400px" height="600px">
		</div>
		<div class="employ">
			<p class="p1" data-num="${sessionScope.id }">매니저 지원</p>
		</div>
	</div>
	<!--매니저 신청 모달  -->
	<div class="modal fade" id="maplly" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body2">...</div>
			</div>
		</div>
	</div>
</body>
</html>