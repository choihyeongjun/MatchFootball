<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row" style="padding: 20px;">
	<div>
		<h3>매치 정보</h3>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">구장
		</label>
		<div class="form-control">${teammatch.f_name }</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">경기
			일정 </label>
		<div class="form-control">
			<a>${teammatch.m_date }</a>
		</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">주소
		</label>
		<div class="form-control">${teammatch.f_address }</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">유형
		</label>
		<div class="form-control">${teammatch.m_type }</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">남기는
			한마디 </label>
		<div class="form-control">${teammatch.m_info }</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px;">1
			팀 </label>
		<div class="form-control">${teammatch.t_name }</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px; font-weight: bold;">2
			팀 </label>
		<c:if test="${!empty teammatch.so_name }">
			<div class="form-control">${teammatch.so_name }</div>
		</c:if>
		<c:if test="${empty teammatch.so_name }">
			<div class="form-control" style="color: #999;">신청한 팀이 없습니다</div>
			</c:if>
	</div>
	<div class="form-group">
		<label for="exampleFormControlInput1"
			style="font-weight: bold; margin-top: 5px; margin-bottom: 5px; font-weight: bold;">담당
			매니저 </label>
		<div class="form-control">${teammatch.id }</div>
	</div>
</div>
