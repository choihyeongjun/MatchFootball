<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn.sf {
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

	<div class="scedule">
		<h3>매니저 참가 신청</h3>
	</div>
	<div class="allscedule" style="margin: 20px;">
		<ul>
			<c:forEach var="nomanager" items="${nomanager }">
				<li>
					<div style="display: flex; margin: 5px;">
						<div style="margin-bottom: 7px; width: 20%">
							<p class="mdetail" style="font-size: 14px; margin-bottom: 1px;">
								${nomanager.m_date }</p>
							<a>${nomanager.f_address } </a>
						</div>
						<div style="width: 20%; text-align: center; margin-top: 12px;">
							<a style="margin-top: 10px; font-weight: bold;">${nomanager.f_name }</a>
						</div>
						<div style="width: 30%; margin-left: 200px;">
							<form action="matchmapply" name="matchmapply" id="matchmapply">
								<input type="hidden" name="id" value="${sessionScope.id }">
								<input type="hidden" name="match_info" value="${nomanager.m_no }">
									<button class="btn sf" type="submit">매니저 참가 신청</button>
								<%-- <c:if test="${empty tmapplysel}">
								</c:if>
								
								<c:if test="${!empty tmapplysel}">
									<button class="btn sf" type="submit">신청 완료</button>
								</c:if> --%>
							</form>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>