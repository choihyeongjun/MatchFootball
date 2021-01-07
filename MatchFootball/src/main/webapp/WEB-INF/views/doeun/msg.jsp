<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메세지창 모달 띄울거임!!!!!!!!!</title>
</head>
<body>
<form id="msgFrm" action="sendmsg" method="post">
<table style="align-content: center;" border="1">
<tr>
<td><input type="text" id="toMsg" name="to_id">받는 사람 <input name="send_id" value="${msg.send_id}" type="text" style="display:none;"></td>

<td><input type="text" id="toMsgTitle" name="m_title"> 제목 </td>
</tr>
<tr>
<td colspan="3">
<textarea cols="100%" rows="10" id="toMsgCon" name="m_con"></textarea>
</td>
</tr>
<tr>
<td colspan="3" align="center"><button type="submit">보내기</button> <button type="reset">취소</button> </td>
</tr>
</table>
</form>
</body>
</html>