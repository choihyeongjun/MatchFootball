<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<form action="tournamentInsertt" method="post"
		encType="multipart/form-data">
		<!-- encType 이미지 등록시 필수 -->
		${sessionScope.kemail } ${sessionScope.id } ${member.t_num }
		${member.pos }
		<div class="section-top-border" style="margin-left: 670px; width: 50%">
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<h3>토너먼트 생성</h3>
					<div class="mt-10">
						<input type="text" name="title" placeholder="대회명"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="t_max" placeholder="최대 팀원수"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="location" placeholder="구장"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="address" placeholder="구장 상세 주소"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="date" name="s_date" placeholder="시작 날짜"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="date" name="e_date" placeholder="종료 날짜"
							class="single-input-accent">
					</div>
					<hr>
					<div class="mt-10">
						<input type="file" id="files" name="file" placeholder="토너먼트 사진"
							class="single-input-accent"> 
						<img id="image" style="height: 200px; width: 200px; border: none" />
						<script>
							document.getElementById("files").onchange = function() {
								var reader = new FileReader();

								reader.onload = function(e) {
									document.getElementById("image").src = e.target.result;
								};
								reader.readAsDataURL(this.files[0]);
							};
						</script>
					</div>
					<hr>
					<div class="mt-10">
						<input type="text" name="t_point" placeholder="기본 상금"
							class="single-input-accent">
					</div>
				</div>
			</div>
			<br> <input type="text" value="${sessionScope.id }" name="a_id"> 
			<input type="submit" class="genric-btn info circle" value="토너먼트 생성" />
		</div>
	</form>
</body>
</html>