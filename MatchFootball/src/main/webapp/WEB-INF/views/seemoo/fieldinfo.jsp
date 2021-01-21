<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div align="center">
<h2 class="modal-title">${mvoselect.id}의 프로필 정보</h2>
	<img class="userProfileImg" alt="유저이미지" src="${pageContext.request.contextPath}/resources/seemoo/img/1.jpg">
						
	<table class="userInfoTable" align="center">
		<tr>
			<th>경기장Id</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.f_id}</td>
		</tr>
		<tr>
			<th>구장명</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.name}</td>
		</tr>
		<tr>
			<th>분류</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.ttype}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.location1}</td>
		</tr>
		<tr>
			<th>상세주소</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.location2}</td>
		</tr>
		<tr>
			<th>상태</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.state}</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.price}</td>
		</tr>
		<tr>
			<th>소개</th>
			<td>:</td>
			<td style="padding-left: 10px">${voselect.comm}</td>
		</tr>
	</table>
</div>
