<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" id="mdiv" style="width: 100%">

		<table class="table" style="width: 100%">
			<tbody>
				<tr>
					<td align="center" style="width: 10%">분류</td>
					<td><select name="nq_category">
							<option value="공지사항">공지사항</option>
							<option value="자주묻는 질문" selected>자주묻는 질문</option>
					</select></td>
				</tr>
				<tr>
					<td align="center" style="width: 20%">제목</td>
					<td><input name="nq_title" type="text" style="width: 100%"></td>
				</tr>

				<div align="center">
					<textarea id="summernote" name="comm"></textarea>
					<br>
					<button type="submit" class="btn btn-primary" id="btnInsert">등록</button>
					<input type="button" class="btn btn-primary" value="수정"
						id="btnUpdate" /> <input type="reset" class="btn btn-primary"
						value="초기화" id="btnInit" />
				</div>
			</tbody>
		</table>
	</div>
</body>
</html>