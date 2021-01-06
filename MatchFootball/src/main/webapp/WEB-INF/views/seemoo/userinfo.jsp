<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div align="center">
<h2 class="modal-title">${mvoselect.id}의 프로필 정보</h2>
						
	<img class="userProfileImg" alt="유저이미지" src="${pageContext.request.contextPath}/resources/seemoo/img/1.jpg">
	<table class="userInfoTable" align="center">
		<tr>
			<th>아이디</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.id}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.name}</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.birth}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.gender}</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.pnum}</td>
		</tr>
		<tr>
			<th>권한</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.author}</td>
		</tr>
		<tr>
			<th>팀이름</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.t_name}</td>
		</tr>
		<tr>
			<th>포인트</th>
			<td>:</td>
			<td style="padding-left: 10px">${mvoselect.point}Point</td>
		</tr>
	</table>
</div>
