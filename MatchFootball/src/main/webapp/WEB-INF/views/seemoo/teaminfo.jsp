<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div align="center">
<h2 class="modal-title">${tvoselect.t_name}의 프로필 정보</h2>
						
	<img class="userProfileImg" alt="유저이미지" src="${pageContext.request.contextPath}/resources/seemoo/img/1.jpg">
	
	<table class="userInfoTable" align="center">
		<tr>
			<th>팀명</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_name}</td>
		</tr>
		<tr>
			<th>팀인원</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_max}</td>
		</tr>
		<tr>
			<th>지역</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_address}</td>
		</tr>
		<tr>
			<th>팀레벨</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_level}</td>
		</tr>
		<tr>
			<th>팀승률</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_wn}</td>
		</tr>
		<tr>
			<th>매너점수</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_m}</td>
		</tr>
		<tr>
			<th>소개</th>
			<td>:</td>
			<td style="padding-left: 10px">${tvoselect.t_info}</td>
		</tr>
	</table>
</div>