<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" id="smsForm">
		<table border="1" align="right" style="width: 100%; height: 100%;">

			<tr>
				<td><br> <span style="color: green; font-weight: bold;">SMS
						전송 (문자보내기)</span>
					<ul>
						<li>받는사람 : <input type="text" name="to"
							placeholder=" 전화번호 입력 ( '-' 포함 )" /></li>
						<br>
						<li>내용 : <textarea name="text" placeholder=" 보낼 내용 입력 "></textarea>
						</li>
						<br>
						<input class="btn btn-primary asdma" type="button" onclick="sendSMS('sendSms')" value="전송하기">
						<br>
					</ul></td>
			</tr>
		</table>
	</form>
	<script>
		function sendSMS(pageName) {

			console.log("문자를 전송합니다.");
			$("#smsForm").attr(
					"action",
					"${pageContext.request.contextPath}/mypage/" + pageName
							+ ".do"); //위에 있는 폼태그를 컨트롤러로 전송한다.
			$("#smsForm").submit();
		}
	</script>
</body>
</html>