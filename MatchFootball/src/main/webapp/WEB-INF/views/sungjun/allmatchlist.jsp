<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.allscedule {
	padding: 10px 10px 10px 10px;
	justify-content: space-between;
	align-items: center;
	background-color: white;
	margin-bottom: 20px;
}

a {
	text-decoration: none !important
}

ul {
	list-style: none;
}

.btn.sf {
	line-height: 32px;
	font-size: 15px;
	padding: 0 10px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	float: right;
}

.scedule {
	padding: 10px 10px 10px 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: white;
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
		})
		
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
		})
	})
	
</script>
</head>
<body>
	<div class="container">
		<div class="row" style="padding: 20px;">
			<div class="col" style="padding: 20px;">
				<div class="allscedule">
					<div class="scedule">
						<h3>개인 매치 경기 일정</h3>
					</div>
					<c:forEach var="p_match" items="${p_match }">
						<div class="mamama">
							<ul>
								<li>
									<div class="matchc">
										<a class="mdetail" data-toggle="modal"
											data-target="#matchdetail" data-num="${p_match.m_no }"
											style="cursor: pointer; font-size: 18px;">
											${p_match.m_date } ${p_match.m_hour } ${p_match.f_name } </a> <a
											class="btn sf" href="#"> 리뷰 작성</a> <input type="hidden"
											value="${p_match.m_no }">
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="col" style="padding: 20px;">
				<div class="allscedule">
					<div class="scedule">
						<h3>팀 매치 경기 일정</h3>
					</div>
					<c:forEach var="t_match" items="${t_match }">
						<div class="mamama">
							<ul>
								<li>
									<div class="matchc">
										<a class="mdetail" data-toggle="modal"
											data-target="#matchdetail" data-num="${t_match.m_no }"
											style="cursor: pointer; font-size: 18px;">
											${t_match.m_date } ${t_match.m_hour } ${t_match.t_name }</a> <a
											class="btn sf" href="#"> 리뷰 작성</a> <input type="hidden"
											value="${t_match.m_no }">
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>