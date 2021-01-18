<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: 'NanumSquareRound' !important;
}

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
	width: 320px;
	left: 0;
	right: 0;
	margin: auto;
	bottom: 100px;
	border-radius: 100px;
}

.employ1 {
	bottom: 0;
	width: 320px;
	padding: 20px 20px;
	text-align: center;
	z-index: 2;
	width: 320px;
	left: 0;
	right: 0;
	margin: auto;
	bottom: 100px;
	border-radius: 100px;
	background-color: #ddd;
	color: #999;
}

.lets {
	background-color: white;
	border-top: 1px solid #ddd;
	padding: 20px;
	/* position: fixed; */
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

.tlwn {
	align-items: center;
	padding-right: 15px;
	display: flex;
}

.labelbel {
	margin: 10px;
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
		 if ('${caption.t_author}' != '팀장') {
				alert('팀장만 신청가능 합니다!')
			} else if('${sessionScope.t_num}' == '${teammatch.t_num}'){
				alert('신청 할수 없습니다!')
			}else{ 
				var m_no = $(this).data("num");
				modal = $("#tmatchaplly");
				$.ajax({
					url : "teammatchDetailm?m_no=" + m_no,
					success : function(result) {
						modal.find('#body4').html(result);
						startmember.m_no.value = $("#m_no").val()
						startmember.point.value = $("#price").val()
						startmember.npoint.value = $("#minusprice").val()
						$("#floatingTextarea11").val($("#price").val())
						modal.modal('show');
					}
				});
			  }  
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

			<div class="tlwn">
				<div style="margin: 10px;">
					<img alt="npe"
						src="${pageContext.request.contextPath}/resources/img/${team.t_logo}"
						style="width: 200px; height: 200px; border-radius: 20%; marging: 5px;" />
				</div>
				<div class="m-im-t">
					<p style="font-weight: bold; font-size: 80px; text-align:;">${teammatch.t_name }</p>
					<p class="wnwnwn" style="font-size: 20px;">2전 1승 1무 1패</p>
					<input type="hidden" id="m_no" value="${teammatch.m_no }" />
				</div>
			</div>

			<div>
				<p style="text-align: left; font-size: 26px; font-weight: 400;">${teammatch.m_date}
					${teammatch.m_hour}</p>
			</div>
			<div style="align: left;">
				<h2 style="color: #08088A; font-weight: bold;">${teammatch.f_name}</h2>
			</div>

			<div>
				<h5>${teammatch.f_address}</h5>
			</div>
			<div id="play"
				style="border-bottom: 1px solid #ddd; padding-bottom: 30px;">
				<h5 style="font-weight: bold;">${teammatch.price}원</h5>
				<input type="hidden" id="price" value="${teammatch.price }" /> <input
					type="hidden" id="minusprice" value="-${teammatch.price }" />
			</div>
			<div style="border-bottom: 1px solid #ddd;">
				<div>
					<div id="playroom">
						<h4 style="font-weight: bold; font-size: 50px; margin: 30px;">팀
							정보</h4>
					</div>
					<div>
						<label for="exampleFormControlInput1" class="form-label labelbel">주장
						</label> <input type="texy" class="form-control" value="${member.name }"
							style="background-color: white;" readonly> <label
							for="exampleFormControlInput1" class="form-label labelbel">평균
							연령대 </label> <input type="texy" class="form-control"
							value="${team.t_age }대" style="background-color: white;" readonly>
						<label for="exampleFormControlInput1" class="form-label labelbel">팀
							LV </label> <input type="texy" class="form-control"
							value="${team.t_level}" style="background-color: white;" readonly>
						<label for="exampleFormControlInput1" class="form-label labelbel">팀
							소개 </label> <input type="texy" class="form-control"
							value="${team.t_info }" style="background-color: white;" readonly>
					</div>
				</div>
				<label for="exampleFormControlInput1" class="form-label labelbel">남기는
					한마디 </label>
				<textarea type="text" class="form-control"
					style="background-color: white; margin-bottom: 20px;" readonly
					row="4">${teammatch.m_info}</textarea>
			</div>
		</div>
	</div>
	<div class="lets">
		<c:if test="${empty teammatch.so_num}">
			<div class="employ">
				<p class="p1" data-num="${teammatch.m_no }">매치 신청</p>
			</div>
		</c:if>
		<c:if test="${!empty teammatch.so_num}">
			<div class="employ1">
				<p class="p2" style="margin: 0;">매칭 완료</p>
			</div>
		</c:if>
		<%-- <c:if test="${teammatch.so_num eq sessionScope.t_num}">
			<div class="employ1">
				<p class="p2">매칭 완료</p>
			</div>
		</c:if> --%>
	</div>
	<!--개인매치 신청 모달  -->
	<div class="modal fade" id="tmatchaplly" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body" id="body4">...</div>
			</div>
		</div>
	</div>
</body>
</html>