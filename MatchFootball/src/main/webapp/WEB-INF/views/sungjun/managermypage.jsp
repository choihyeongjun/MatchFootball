<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	padding: 20px 0 20px 30px;
	margin-bottom: 20px;
	background-color: white;
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

.mamamaa {
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


.btn.sff {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	border-radius: 10px;
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
.btn.sf1 {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #ea3e42;
	color: white;
	border-radius: 10px;
	cursor: default;
}
.btn.sf2 {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #999;
	color: white;
	border-radius: 10px;
	cursor: default;
}
.btn.sf3 {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #ddd;
	color: white;
	border-radius: 10px;
	cursor: default;
}
.btn.sf4 {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #1c62cc;
	color: white;
	border-radius: 10px;
	cursor: default;
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

		$(".sf").on("click", function() {
			var m_no = $(this).data("pn");
			modal = $("#pmreivew");
			$.ajax({
				url : "managermypagepre?m_no=" + m_no,
				success : function(result) {
					modal.find('#body12').html(result);
					modal.modal('show');
				}
			});
		});

		$(".tmdetail").on("click", function() {
			var m_no = $(this).data("nom");
			var so_num = $(this).data("sonum");
			var t_num = $(this).data("tnum");
			modal = $("#tmatchdetail");
			$.ajax({
				url : "managermypagemm?m_no=" + m_no,
				success : function(result) {
					modal.find('#body10').html(result);
					modal.modal('show');
				}
			});
		});
		//??? ?????? ???????????? 
		$(".sff").on("click", function() {
			var m_no = $(this).data("pn");
			modal = $("#teamreviewapl");
			$.ajax({
				url : "managermypageteamreview?m_no=" + m_no,
				success : function(result) {
					modal.find('#body20').html(result);
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
					???????????????<i class="fas fa-futbol fa-2x" style="color: black"></i>
				</h2>
				<br>
				<h5 style="font-weight: bold; margin: 0px">${member.name}????????????</h5>
			</div>
			<div class="cache">
				<div>
					<p style="font-size: 10px; color: #999; margin-bottom: 5px;">
						?????? ????????? ?????? <i class="fas fa-comment-dollar fa-3x"
							style="margin-left: 10px; color: #ffc645;"></i>
					</p>
					<h3>${member.point }?????????</h3>
				</div>

			</div>

			<div class="allscedule">
				<div class="scedule">
					<h3>
						<i class="far fa-futbol"
							style="color: #ffc645; padding-right: 10px;"></i>?????? ?????? ?????? ??????
					</h3>
				</div>
				<c:if test="${!empty p_match }">
					<c:forEach var="p_match" items="${p_match }">
						<div class="mamama">
							<ul style="padding: 0px;">
								<li
									style="display: flex; padding-left: 20px; margin-bottom: 10px;">
									<div class="matchc">
										<a class="mdetail" data-toggle="modal"
											data-target="#matchdetail" data-num="${p_match.m_no }"
											style="cursor: pointer;"> <span
											style="font-size: 18px; font-weight: bold;">${p_match.m_date }</span>
											<span> ${p_match.f_name }</span>
										</a> <input type="hidden" value="${p_match.m_no }">
									</div>

									<div style="width: 20%">
										<fmt:parseDate value="${p_match.m_date}" var="m_date"
											pattern="yyyy-MM-dd HH:mm" />
										<fmt:formatDate value="${m_date}" var="m_date"
											pattern="yyyy-MM-dd HH" />
										<fmt:parseNumber value="${p_match.p_max}" var="p_max" />
										<fmt:parseNumber value="${p_match.f}" var="f" />
										<c:if
											test="${p_match.review ne 'Y' && m_date <= sysdate && p_max <= f}">
											<a class="btn sf" data-toggle="modal" data-target="#pmreivew"
												data-pn="${p_match.m_no }"> ?????? ??????</a>
										</c:if>
										<c:if test="${m_date > sysdate && p_max <= f}">
											<p class="btn sf4">?????? ?????? ???</p>
										</c:if>
										<c:if test="${m_date <= sysdate && p_max > f }">
											<p class="btn sf3">?????? ??????</p>
										</c:if>
										<c:if test="${p_match.review eq 'Y' }">
											<p class="btn sf2">?????? ??????</p>
										</c:if>
										<c:if test="${m_date > sysdate && p_max > f}">
											<p class="btn sf1">?????? ???</p>
										</c:if>
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty p_match }">
					<div style="margin: 30px">????????? ????????????</div>
				</c:if>
			</div>
			<!-- ???????????? ?????? ????????? -->
			<div class="modal fade" id="pmreivew" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body" id="body12">...</div>
					</div>
				</div>
			</div>
			<!-- ???????????? ?????? ????????? -->
			<div class="modal fade" id="matchdetail" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body" id="body1">...</div>
					</div>
				</div>
			</div>

			<div class="allscedule">
				<div class="teamscedule" style="margin-bottom: 10px; padding: 10px;">
					<h3>
						<i class="far fa-futbol"
							style="color: #ffc645; padding-right: 10px;"></i>??? ?????? ?????? ??????
					</h3>
				</div>
				<c:if test="${!empty t_match }">
					<c:forEach var="t_match" items="${t_match }">
						<div class="mamamaa">
							<ul style="margin: 0;">
								<li style="display: flex;">
									<div class="matchc">
										<a class="tmdetail" data-toggle="modal"
											data-nom="${t_match.m_no }" date-sonum="${t_match.so_num }"
											data-tnum="${t_match.t_num }"
											style="cursor: pointer; font-size: 18px;">
											<p style="font-weight: bold; margin: 0px;">${t_match.m_date }</p>
											<p>
												<b>${t_match.t_name }</b> vs <b>${t_match.so_name }</b>
											</p>
										</a> <input type="hidden" name="m_no" value="${t_match.m_no }">
										<input type="hidden" name="t_num" value="${t_match.t_num }">
										<input type="hidden" name="so_num" value="${t_match.so_num }">
										<input type="hidden" name="so_name"
											value="${t_match.so_name }">
									</div>
									<div style="width: 20%">
										<fmt:parseDate value="${t_match.m_date}" var="m_date"
											pattern="yyyy-MM-dd HH:mm" />
										<fmt:formatDate value="${m_date}" var="m_date"
											pattern="yyyy-MM-dd HH" />
										<c:if
											test="${t_match.review eq null && m_date <= sysdate && t_match.so_num ne null }">
											<a class="btn sff" data-toggle="modal"
												data-target="#teamreviewapl" data-pn="${t_match.m_no }"
												style="align-items: center; margin-top: 20px;"> ?????? ??????</a>
										</c:if>
										<c:if test="${t_match.review eq 'Y' }">
											<b class="btn sf2" style="margin-top: 20px;"> ?????? ??????</b>
										</c:if>
										<c:if test="${m_date > sysdate && t_match.so_num ne null }">
											<b class="btn sf4" style="margin-top: 20px;"> ?????? ?????????</b>
										</c:if>
										<c:if test="${t_match.so_num eq null and m_date < sysdate }">
											<b class="btn sf3" style="margin-top: 20px;"> ?????? ??????</b>
										</c:if>
											<c:if test="${m_date > sysdate && t_match.so_num eq null}">
											<b class="btn sf1" style="margin-top: 20px;">?????? ???</b>
										</c:if>
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty t_match }">
					<div style="margin: 30px">????????? ????????????</div>
				</c:if>
			</div>
			<!-- ????????? ?????? ????????? -->
			<div class="modal fade" id="tmatchdetail" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body" id="body10"></div>
					</div>
				</div>
			</div>
			<!-- ????????? ?????? ?????? ????????? -->
			<div class="modal fade" id="teamreviewapl" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body" id="body20"></div>
					</div>
				</div>
			</div>


			<!-- ?????? -->
			<div class="allscedule">
				<div class="allcha">
					<h3>
						<i class="fas fa-coins"
							style="color: #ffc645; padding-right: 10px;"></i> ????????????
					</h3>
					<div class="scedulemore">
						<a class="pointalll" data-toggle="modal"
							data-target="#staticBackdrop" style="cursor: pointer;">?????? ??????</a>
					</div>
				</div>
				<c:if test="${!empty p_point }">
					<c:forEach var="p_point" items="${p_point }">
						<div class="maaa">
							<ul>
								<li>${p_point.p_date }${p_point.npoint }?????????</li>
							</ul>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty p_point }">
					<div style="margin: 30px">????????? ????????????</div>
				</c:if>
			</div>
			<div class="allscedule">
				<div class="managermenu">
					<ul>
						<li><a href="${pageContext.request.contextPath}/allmatchlist"><i
								class="fas fa-futbol"
								style="padding-right: 10px; color: #ffc645;"></i>?????? ?????? ?????? ?????? </a></li>
						<li><a class="tma"
							href="${pageContext.request.contextPath}/managerresult"><i
								class="fas fa-ad" style="padding-right: 10px; color: #ffc645;"></i>??????
								????????? ?????? ??? ?????? </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- ????????? ?????? ??????  ?????? ????????? -->
	<div class="modal fade" id="nomanager" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body11"></div>
			</div>
		</div>
	</div>
	<!-- all?????? ?????????-->
	<div class="modal fade" id="allmatchlist11" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body12"></div>
			</div>
		</div>
	</div>
	<!-- ?????? ?????? ?????? -->
	<div class="modal fade" id="staticBackdrop" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-body" style="background-color: white;">
				<div align="center" style="margin-bottom: 10px;">
					<h1>?????? ?????? ??????</h1>
				</div>
				<hr>
				<c:if test="${!empty p_pointall  }">
					<c:forEach var="p_pointall" items="${p_pointall }">
						<div class="maaa" align="center">
							<ul>
								<li>${p_pointall.p_date }${p_pointall.npoint }?????????</li>
							</ul>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty p_pointall}">
					<div style="text-align: center; margin: 30px">????????? ????????????</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>