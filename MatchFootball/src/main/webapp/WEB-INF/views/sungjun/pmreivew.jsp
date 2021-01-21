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
			개인 리뷰 등록
			</h3>
			<div>
				<form action="inreview" name="inreview" id="inreview" method="post">
					<c:forEach var="pplayers" items="${pplayers }">
						<div style="display: flex; margin: 15px 0 0 10px;">
							<label style="font-weight: bold;">이름 : ${pplayers.name }</label>
						</div>
						<select id="manner" name="manner" class="form-select"
							aria-label="Default select example" style="margin: 5px;">
							<option value="1">1점</option>
							<option value="2">2점</option>
							<option value="3">3점</option>
							<option value="4">4점</option>
							<option value="5">5점</option>
						</select>
						<input type="hidden" name="m_no" value="${pplayers.m_no }">
						<input type="hidden" name="id" value="${pplayers.id }">
						<input type="hidden" name="m_id" value="${p_match.m_id}">
						<input type="hidden" name="review" value="Y">
					</c:forEach>
					<p style="text-align: center; margin-top: 30px;">
						<button class="bbbb" type="submit">리뷰 등록</button>
					</p>
				</form>
			</div>
	</div>
</body>
</html>