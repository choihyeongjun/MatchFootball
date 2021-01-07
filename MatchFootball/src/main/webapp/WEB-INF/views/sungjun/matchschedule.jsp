<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row" style="padding: 20px;">
	<div class="col-4">
		<div>
			<h3>매치 정보</h3>
		</div>
		<form>
			<div class="form-group">
				<label for="exampleFormControlInput1"
					style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">구장
				</label>
				<div class="form-control">${p_matchVO.f_name }</div>
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1"
					style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">경기
					일정 </label>
				<div class="form-control">
					<a>${p_matchVO.m_date }</a> <a>${p_matchVO.m_hour }</a>
				</div>
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1"
					style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">주소
				</label>
				<div class="form-control">${p_matchVO.f_address }</div>
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1"
					style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">유형
				</label>
				<div class="form-control">${p_matchVO.mtype }</div>
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1"
					style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">Lv
				</label>
				<div class="form-control">${p_matchVO.lv }</div>

			</div>
		</form>
	</div>

	<div class="col-8">
		<div>
			<h3>신청 인원</h3>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">이름</th>
					<th scope="col">연락처</th>
					<th scope="col">LV</th>
					<th scope="col">포지션</th>
					<th scope="col">성별</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="matchmember" items="${matchmember }">
					<tr>
						<th style="padding : 10px;" scope="row">${matchmember.id }</th>
						<td style="padding : 10px;">${matchmember.name }</td>
						<td style="padding : 10px;">${matchmember.pnum }</td>
						<td style="padding : 10px;">${matchmember.lv }</td>
						<td style="padding : 10px;">${matchmember.pos }</td>
						<td style="padding : 10px;">${matchmember.gender }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>