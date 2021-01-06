<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="main" style="height:850px">
		<div id="content">
			<div class="container">
				<div class="row">
					<jsp:include page="Mybar.jsp"></jsp:include>
					<div class="col-md-7 col-lg-8 col-xl-8 col-sidebar">
						<div class="page-header bordered">
							<h1 id="item-2">
								쿠폰<small>COUPON</small>
							</h1>
						</div>
						<div>
							<br>
							<h4 id="item-2-2">내 쿠폰</h4>
							<div>
								<div>
									<table border="1" style="width: 100%">
										<tr>
											<td><input type="checkbox"></td>
											<td>쿠폰명</td>
											<td>쿠폰기한</td>
											<td align="right"><input type="button"
												class="btn btn-primary cpDel" value="삭제"></td>
										<tr>
											<td><input type="checkbox"></td>
											<td>쇼핑몰 전용 10% 할인 쿠폰</td>
											<td>쿠폰기한</td>
											<td align="right"><input type="button"
												class="btn btn-primary cpDel" value="삭제"></td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>쇼핑몰 전용 10% 할인 쿠폰</td>
											<td>쿠폰기한</td>
											<td align="right"><input type="button"
												class="btn btn-primary cpDel" value="삭제"></td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>쇼핑몰 전용 10% 할인 쿠폰</td>
											<td>쿠폰기한</td>
											<td align="right"><input type="button"
												class="btn btn-primary cpDel" value="삭제"></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>