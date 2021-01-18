<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	color: #626262;
	font-family: 'NanumSquareRound';
	font-size: 14px;
	font-weight: normal;
	letter-spacing: 0.01em;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-font-feature-settings: "kern" 1;
	-moz-font-feature-settings: "kern" 1;
}

.matchc {
	color: #666666;
	font-family: 'NanumSquareRound';
	font-size: 14px;
	font-weight: normal;
	letter-spacing: 0.01em;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-font-feature-settings: "kern" 1;
	-moz-font-feature-settings: "kern" 1;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 10px;
	padding-top: 5px;
	width: 70%;
}

.cache {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	margin-bottom: 20px;
	background-color: white;
}

.cachec {
	background-color: #3540A5;
	color: white;
	border-radius: 6px;
	border: none;
	box-shadow: none;
	transition: background-color 0.3s ease-out;
	display: block;
	text-align: center;
	cursor: pointer;
}

.btn.sm {
	line-height: 32px;
	font-size: 12px;
	padding: 0 10px;
	color: white;
}

.scedule {
	padding: 10px 10px 10px 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: white;
}

.allscedule {
	padding: 10px 10px 10px 10px;
	justify-content: space-between;
	align-items: center;
	background-color: white;
	margin-bottom: 20px;
}

.scedulemore a {
	font-size: 12px;
	text-decoration: none !important
}

a {
	text-decoration: none !important
}

.allcha {
	padding: 10px 10px 10px 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.maaa ul {
	list-style: none;
}

.maaa ul li {
	margin: 5px;
}

.mamama {
	color: black;
	border-radius: 6px;
	border: none;
	box-shadow: none;
	transition: background-color 0.3s ease-out;
	display: block;
	text-align: center;
	cursor: pointer;
}

.mamama ul {
	list-style: none;
}

.btn.sf {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	border-radius: 10px;
}

#body1 {
	border-radius: 20px;
}

.managermenu {
	padding: 25px;
}

.managermenu ul li {
	list-style: none;
}

.managermenu ul li a {
	padding: 10px;
	font-size: 18px;
	cursor: pointer;
}
</style>
<script>
	$(function() {
		$(".mdetail").on("click", function() {
			var m_no = $(this).data("num");
			modal = $("#matchdetail");
			$.ajax({
				url : "managermypagem?m_no=" + m_no,
				success : function(result) {
					modal.find('#body1').html(result);
					modal.modal('show');
				}
			});
		});
		$(".tmdetail").on("click", function() {
			var m_no = $(this).data("nom");
			modal = $("#tmatchdetail");
			$.ajax({
				url : "managermypagemm?m_no=" + m_no,
				success : function(result) {
					modal.find('#body10').html(result);
					modal.modal('show');
				}
			});
		});

		$(".tma").on("click", function() {
			var m_no = $(this).data("npp");
			modal = $("#nomanager");
			$.ajax({
				url : "managermypagemmm?m_no=" + m_no,
				success : function(result) {
					modal.find('#body11').html(result);
					modal.modal('show');
				}
			});
		});
	})
</script>
</head>
<body style="background-color: #fafafa;">
	<div class="container">
		<div class="mgpage"
			style="padding: 70px; margin-left: 180px; margin-right: 180px;">
			<div class="hi" style="margin-bottom: 30px">
				<h2 style="margin: 0px; font-weight: 300;">
					안녕하세요<i class="fas fa-futbol fa-2x" style="color: black"></i>
				</h2>
				<br>
				<h5 style="font-weight: bold; margin: 0px">${member.name}매니저님</h5>
			</div>
			<div class="cache">
				<div>
					<p style="font-size: 10px; color: #999; margin-bottom: 5px;">
						나의 캐시 잔액 <i class="fas fa-comment-dollar fa-3x"
							style="margin-left: 10px; color: #ffc645;"></i>
					</p>
					<h3>${member.point }원</h3>
				</div>
				<div class="btn-right cachec">
					<a class="btn sm" href="mypage/pay">포인트 충전</a>
				</div>
			</div>

			<div class="allscedule">
				<div class="scedule">
					<h3>개인 매치 경기 일정</h3>
				</div>
				<c:forEach var="p_match" items="${p_match }">
					<div class="mamama">
						<ul>
							<li style="display: flex;">
								<div class="matchc">
									<a class="mdetail" data-toggle="modal"
										data-target="#matchdetail" data-num="${p_match.m_no }"
										style="cursor: pointer; font-size: 18px;">
										${p_match.m_date } ${p_match.f_name } </a> <input type="hidden"
										value="${p_match.m_no }">
								</div>
								<div style="width: 20%">
									<a class="btn sf" href="#"> 리뷰 작성</a>
								</div>
							</li>
						</ul>
					</div>
				</c:forEach>
			</div>

			<!-- 개인매치 정보 모달창 -->
			<div class="modal fade" id="matchdetail" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body" id="body1">...</div>
					</div>
				</div>
			</div>

			<div class="allscedule">
				<div class="teamscedule">
					<h3>팀 매치 경기 일정</h3>
				</div>
				<c:forEach var="t_match" items="${t_match }">
					<div class="mamama">
						<ul>
							<li style="display: flex;">
								<div class="matchc">
									<a class="tmdetail" data-toggle="modal"
										data-target="#tmatchdetail" data-nom="${t_match.m_no }"
										style="cursor: pointer; font-size: 18px;">
										<p>${t_match.m_date }</p>
										<p>${t_match.t_name } vs ${t_match.so_name }</p>
										  </a>
									<input type="hidden" name="m_no" value="${t_match.m_no }">
									<input type="hidden" name="t_num" value="${t_match.t_num }">
									<input type="hidden" name="so_num" value="${t_match.so_num }">
									<input type="hidden" name="so_name" value="${t_match.so_name }">
								</div>
								<div style="width: 20%">
									<a class="btn sf" href="#" style="align-items: center; margin-top: 20px;"> 리뷰 작성</a>
								</div>
							</li>
						</ul>
					</div>
				</c:forEach>
			</div>
			<!-- 팀매치 정보 모달창 -->
			<div class="modal fade" id="tmatchdetail" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body" id="body10">...</div>
					</div>
				</div>
			</div>

			<!-- 입금 -->
			<div class="allscedule">
				<div class="allcha">
					<h3>입금내역</h3>
					<div class="scedulemore">
						<a class="pointalll" data-toggle="modal"
							data-target="#staticBackdrop" style="cursor: pointer;">전체 보기</a>
					</div>
				</div>
				<c:forEach var="p_point" items="${p_point }">
					<div class="maaa">
						<ul>
							<li>${p_point.p_date }${p_point.npoint }원입금</li>
						</ul>
					</div>
				</c:forEach>
			</div>
			<div class="allscedule">
				<div class="managermenu">
					<ul>
						<li><a href="${pageContext.request.contextPath}/allmatchlist"><i
								class="fas fa-futbol"
								style="padding-right: 10px; color: #ffc645;"></i>경기 내역 전체 보기</a></li>
						<li><a href="#"><i class="fas fa-clipboard"
								style="padding-right: 14px; color: #ffc645;"></i>리뷰 내역 보기</a></li>
						<li><a class="tma" data-toggle="modal"
										data-target="#nomanager" data-npp="${t_match.m_no }"><i class="fas fa-ad"
								style="padding-right: 10px; color: #ffc645;"></i>팀 매치 매니저 신청</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 매니저 없는 팀매치  정보 모달창 -->
	<div class="modal fade" id="nomanager" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body11">...</div>
			</div>
		</div>
	</div>
	<!-- 입금 내역 전체 -->
	<div class="modal fade" id="staticBackdrop" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-body" style="background-color: white;">
				<div align="center" style="margin-bottom: 10px;">
					<h1>전체 입금 내역</h1>
				</div>
				<hr>
				<c:forEach var="p_pointall" items="${p_pointall }">
					<div class="maaa" align="center">
						<ul>
							<li>${p_pointall.p_date }${p_pointall.npoint }원입금</li>
						</ul>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>