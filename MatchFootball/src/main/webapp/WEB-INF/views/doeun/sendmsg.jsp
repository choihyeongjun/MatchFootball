<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메세지창 모달 띄울거임!!!!!!!!!</title>
</head>
<script>
$(function() {
	$("#findID").on("click", function(event) {
		
	});//end findID
})//end func


</script>
<body>
<form id="msgFrm" action="${pageContext.request.contextPath}/sendmsg" method="post">
<table border="1">
			<tr>
				<td>
					<input type="hidden" name="m_no" value="${msg.m_no}" style="display: none;">
					<input type="hidden" name="send_id" value="${msg.send_id}" style="display: none;">
				</td>
				<td>
					<label>제목 : </label>
					<input type="text" id="toMsgTitle" name="m_title" required="required">
				</td>
				<td>
					<label>받는 사람 : </label>
					<input type="text" name="to_id" value="${msg.to_id}" required="required">
					<button type='button' id="findID">id찾기</button>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea cols="90%" rows="10" id="toMsgCon" name="m_con" required="required"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button type="submit">보내기</button> 
					<button type="reset">취소</button>
				</td>
			</tr>
		</table>
</form>
</body>
</html>