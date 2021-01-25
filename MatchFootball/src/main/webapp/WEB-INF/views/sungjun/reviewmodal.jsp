<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bbbb {
	line-height: 32px;
	font-size: 15px;
	color: black;
	text-decoration: none !important;
	background-color: #3540A5;
	color: white;
	border-radius: 10px;
}
</style>
</head>
<body>
	<div>
		<h2 style="text-align: center;">
			팀 리뷰 등록
		</h2>
			<div>
				<form action="teamreview" name="teamreview" id="teamreview" method="post" >
					<div style="display: flex; margin: 15px 0 0 10px;">
						<label style="font-weight: bold;">팀 이름 : ${teammatch.t_name }</label>
					</div>
					<input type="hidden" name="t_num" value="${teammatch.t_num }">
					<input type="hidden" name="m_no" value="${teammatch.m_no }">  
					<input type="hidden" name="manager_id" value="${teammatch.id }">
					<select id="manner" name="manner" class="form-select"
						aria-label="Default select example" style="margin: 5px;">
						<option value="1">1점</option>
						<option value="2">2점</option>
						<option value="3">3점</option>
						<option value="4">4점</option>
						<option value="5">5점</option>
					</select> 
					<select id="score" name="score" class="form-select"
						aria-label="Default select example" style="margin: 5px;">
						<option value="승">승</option>
						<option value="패">패</option>
					</select> 
					<div style="display: flex; margin: 15px 0 0 10px;">
						<label style="font-weight: bold;">팀 이름 : ${teammatch.so_name }</label> 
					<input type="hidden" name="t_num" value="${teammatch.so_num }">
					<input type="hidden" name="m_no" value="${teammatch.m_no }">  
					<input type="hidden" name="manager_id" value="${teammatch.id }">
					</div>
					<select id="manner" name="manner" class="form-select"
						aria-label="Default select example" style="margin: 5px;">
						<option value="1">1점</option>
						<option value="2">2점</option>
						<option value="3">3점</option>
						<option value="4">4점</option>
						<option value="5">5점</option>
					</select> <select id="score" name="score" class="form-select"
						aria-label="Default select example" style="margin: 5px;">
						<option value="승">승</option>
						<option value="패">패</option>
					</select>
					<input type="hidden" name="review" value="Y">
					<p style="text-align: center; margin-top: 30px;">
						<button class="bbbb" type="submit">리뷰 등록</button>
					</p>
				</form>
			</div>
	</div>
</body>
</html>