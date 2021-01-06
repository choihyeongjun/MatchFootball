<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메세지창 모달 띄울거임!!!!!!!!!</title>
</head>
<body>
<table style="align-content: center;" border="1">
<tr>
<td><input type="date"></td>
<td><input type="text" id="toMsg"> 받는 사람 </td>
<td><input type="text" id="toMsgTitle"> 제목 </td>
</tr>
<tr>
<td colspan="3">
<textarea cols="100%" rows="10" id="toMsgCon"></textarea>
</td>
</tr>
<tr>
<td colspan="3" align="center"><button>보내기</button> <button>취소</button> </td>
</tr>
</table>
</body>
</html>