<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script> 
<script> 
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			height : 500, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : false, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
		});
	});
	
	var clickstate;
	var love = function() {	
		$(".love").click(function(){
				var $this =$(this)
				
				if(!$(this).hasClass("active")) {
					clickstate=1;
					$(this).find(".animated").remove();
					$(this).addClass("active");
					$(this).find("i").removeClass("ion-android-favorite-outline");
					$(this).find("i").addClass("ion-android-favorite");
					$(this).find("div").html($.number($(this).find("div").html()));
					$(this).append($(this).find("i").clone().addClass("animated"));
					$(this).find("i.animated").on("animationend webkitAnimationEnd oAnimationEnd MSAnimationEnd", function(e){
						$(this).remove();
					  $(this).off(e);
					});
					
					// add some code ("love")
				}else{
					clickstate=0;
					$(this).find(".animated").remove();
					$(this).removeClass("active");
					$(this).find("i").addClass("ion-android-favorite-outline");
					$(this).find("i").removeClass("ion-android-favorite");
					$(this).find("div").html($.number($(this).find("div").html()));	
					// add some code ("unlove")
				}
				$.ajax({
					url:"/MatchFootball/likecheck/"+clickstate,
					method:"post",
					data:{
						id:'<%=(String)session.getAttribute("id")%>',
						num:$(this).find('#num').val()
						
					},error : function(xhr, status, msg) {
						alert("상태값 :" + status + " Http에러메시지 :" + msg);
					},
					success : function(data){
						console.log("성공");
					}
				})  //ajax
				
		
			
		});  //clich
		
	};	
</script>
</head>
<body style="padding-left: 650px; padding-top: 100px">
	<form id="form1" class="form-horizontal" method="post">
		<div align="center" id="mdiv" style="width: 100%">
			<table class="table" style="width: 100%">
				<tbody><tr>
					<td>번호:${select.num}</td></tr>
					<tr>
					<td align="center" style="width: 7%">작성자:${select.id}</td>
					</tr>
					<tr>
						
						<td align="center" style="width: 7%">제목</td>
						<td><input name="title" type="text" style="width: 100%"
							<c:if test="${sessionScope.id ne select.id }">readonly="readonly"</c:if> value="${select.title}"></td>
							<br/>
							<td align="center" style="width: 7%">조회수:${select.cnt}</td><br/>
							<td align="center" style="width: 7%">좋아요수:${select.likeit}</td>
												<c:if test="${f.heartstate eq '0'}">
												<a href="#" class="love"><i
													class="ion-android-favorite-outline"></i>
													<input id="num" name="num" type="text" value="${select.num}" hidden=""/>
													<div>${f.likeit}</div></a>
													</c:if>
												
											
												
												 <c:if test="${select.heartstate eq '1'}">
												<a href="#" class="love active"><i
													class="ion-android-favorite"></i>
													<input id="num" type="text" name="num" value="${select.num}" hidden=""/>
													<div>${select.likeit}</div></a>
												</c:if> 
					</tr>
				</tbody>
			</table>
		</div>
		<div align="center">
		<c:if test="${sessionScope.id eq select.id }">
		
			<textarea id="summernote" name="comm" >${select.comm}</textarea>
		</c:if>
		<c:if test="${sessionScope.id ne select.id }">
		
			<textarea id="summernote" cols="135" rows="15" name="comm" readonly>${select.comm}</textarea>
		</c:if>
		<br>
			<c:if test="${sessionScope.id eq select.id}">
			<button type="submit" class="btn btn-primary" id="btnUpdate" onclick="javascript: form.action='${pageContext.request.contextPath}/freeupdate'">수정</button>
			<button type="submit" class="btn btn-primary" id="btnInit" onclick="javascript: form.action='${pageContext.request.contextPath}/freedelete'">삭제</button>
			</c:if>
			<button type="submit" class="btn btn-primary" id="btngoback" onclick="javascript: form.action='${pageContext.request.contextPath}/free'">돌아가기</button>
		</div>
	</form>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.migrate.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.js"></script>
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/jquery-number/jquery.number.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/easescroll/jquery.easeScroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.js"></script>
</body>
</html>