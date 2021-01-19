<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div id="main" style="height: 850px">
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
										
										</tr>
										<tbody style="border: '1'">
											<c:forEach items="${cp}" var="cp">
												<tr>

													<td><input type="checkbox" name="c_no"
														value="${cp.c_no}"><input type="hidden"
														name="m_id" value="${cp.m_id}"></td>
													<td>${cp.c_title}</td>
													<c:if test="${cp.c_check eq 'N' }">
														<td>${cp.c_edate}
														</td>
													</c:if>
														<td>
														<c:if test="${cp.c_check eq 'Y' }">사용 완료</c:if>
														<c:if test="${cp.c_check eq 'O' }">유효기간만료</c:if>
														</td>
													
												</tr>
											</c:forEach>
										</tbody>
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