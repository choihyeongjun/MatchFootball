<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<script>
$(function() {
	$("#findID").on("click", function(event) {
		
	});//end findID
})//end func
</script>

<div align="center">
<h2 class="modal-title">${msg.to_id}에게 메시지</h2>
					
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
				<button type='button' id="findID" style="margin-left: 10px">id찾기</button>
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
