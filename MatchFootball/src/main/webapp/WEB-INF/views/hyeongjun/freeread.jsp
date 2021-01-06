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
					<tr>
						<td align="center" style="width: 20%">첨부파일</td>
						<td><input type="file" name="uploadFile" id="uf" />
							<div
								style="display: inline-block; position: relative; width: 300px; left: -210px; background: white;">
								<label id="la">선택한 파일 없음</label>
							</div> <input type="hidden" id="nq_no" name="nq_no"></td>
					</tr>
				</tbody>
			</table>
		</div>
</body>
</html>