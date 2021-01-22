<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>
<div align="center">
	<form id="viewmsg" action="/replyMsg" method="post">
		<table class="userInfoTable" style="align-content: center;" border="1">
			<tr>
				<td><input type="hidden" value="${msg.m_no}"></td>
				<td><label style="width: 70px">제목</label><input style="border:none;" type="text" id="toMsgTitle"
					name="m_title" value="${msg.m_title}"></td>
				<td><label style="width: 70px">보낸 사람 </label><input style="width: 150px" type="text" id="toMsg"
					name="to_id" value="${msg.to_id}"></td>
			</tr>
			<tr>
				<td colspan="3">
				<textarea cols="100%" rows="10" id="toMsgCon" style="width: 100%"
						name="m_con">${msg.m_con}</textarea>
				</td>
				
				
			</tr>
<tr><td colspan="3" align="center">
<button class="btn btn-primary reply-message"
						type="button" data-nom="${msg.m_no}" id="replyMsg">답장</button>
<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
		</table>
	</form>
</div>
</body>
</html>