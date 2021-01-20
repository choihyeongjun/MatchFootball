<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="resources/css/tournamentInfo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">
<style>
li {
	list-style: none;
}

.info {
	background: rgba(0,0,0,0)
}
</style>
</head>
<body>
	
	<div id="main_contents"
		style="margin-left: 470px; width: 50%; margin-top: 30px; margin-bottom: 155px">
		<div class="tournament_view_top">
			<div class="img">
				<img
					src="${pageContext.request.contextPath}/images/${tournamentTeam.img}"
					width="100%">
			</div>
			<div class="info">
				<ul>
					<li class="tit">${tournamentTeam.title }</li>
					<li class="txt">대회기간 : ${tournamentTeam.s_date } ~ ${tournamentTeam.e_date }</li>
					<li class="txt">대회지역 : ${tournamentTeam.address }</li>
					<li class="txt">
					<input type="text" value="${tournamentTeam.t_no }" name="t_no" style="display:none">
					신청현황 : ${tournamentTeam.count } / ${tournamentTeam.t_max }</li>
					<li class="txt">참 &nbsp;가  &nbsp;비 : 100000 P</li><br>
					<li class="txt">총 &nbsp;&nbsp;상금 : ${tournamentTeam.t_point } P</li>
				</ul>
			</div>
		</div>
		<div align="center">
		<c:if test="${tournamentTeam.count ne 8}">
		<c:if test="${hh.sel eq 0}">
		<form action="teamTournaInsert" method="post">
			<input type="text" value="${tournamentTeam.t_no }" name="t_no" style="display:none">
			<input type="text" value="${sessionScope.t_num }" name="t_num" style="display:none">
			<input type="text" value="${members.id }" name="id" style="display:none">
			<input type="text" value="${members.point }" name="point" style="display:none">
			<input type="text" value="${tournamentTeam.t_point }" name="t_point" style="display:none">
			<input type="submit" class="genric-btn info circle" value="참가하기" onclick="location.href='tournamentPVP?t_no=${tournamentTeam.t_no}'" style="float: right"/>
		</form>
		</c:if>
		</c:if>
			<input type="submit" class="genric-btn info circle" value="대진표" onclick="location.href='tournamentPVP?t_no=${tournamentTeam.t_no}'"/>
		</div>
		<br>
		<div class="tournament_view_cont">
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">풋살, 축구
						좋아하는 사람들의 축제,</span></font>

			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">대구
						 펼쳐지는 매치 풋살과 함께하는 FUTSAL HEROES 2021!</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"><u>* 대회기간
							: ${tournamentTeam.s_date } ~ ${tournamentTeam.e_date }</u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">* 참가 포인트는 전체 상금 포인트에 누적됩니다.</span></font>
			</p>
			
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">* 신청 팀이 8팀 일 시 가입을 할 수 없어요. 빨리 하세요.</span></font>
			</p>
		</div>
	</div>
</body>
</html>