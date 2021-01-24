<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.lili a {
    color: white;
}
footer { position: fixed; left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }
</style>

<script>
$(function() {
	$("#findID").on("click", function(event) {
		
	});//end findID
})//end func
</script>

<c:if test ="${msg.to_id ne null }">
<h1>MESSAGE</h1>
</c:if>

<div align="center">
<c:if test ="${msg.to_id eq null }">
<h1>MESSAGE</h1>
</c:if>
					
<form id="msgFrm" action="${pageContext.request.contextPath}/sendmsg" method="post">						
	<table class="userInfoTable" align="center">
		<tr>
			<td>
				<input type ="hidden" name="m_no" value="${msg.m_no}" style="display:none;">
			</td>
			<td>
				<label style="width: 70px">제목</label>
				<input type="text" id="toMsgTitle" name="m_title" required="required">  
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				<input type ="hidden" name="send_id" value="${msg.send_id}" style="display:none;">
			</td>
			<td>
				<label style="width: 70px">받는사람</label>
				<input type ="text" name="to_id" value="${msg.to_id}" required="required">
				<c:if test ="${msg.to_id eq null }">
				<label>보낼 ID 찾기</label>
				<select>
				<c:forEach items="${ID}" var="id">
				<option>${id.id}</option>
				</c:forEach>
				</select>
				</c:if>
			
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<textarea cols="100%" rows="10" id="toMsgCon" name="m_con" required="required" style="width: 100%"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: center;">
				<button type="submit" class="btn btn-primary">보내기</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
			</td>
		</tr>
	</table>
</form>
</div>
