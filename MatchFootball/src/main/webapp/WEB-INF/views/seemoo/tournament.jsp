<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>토너먼트 페이지</title>

<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<style>
.button {
    background-color: #5f5f5f;
    color: white;
}
</style>
</head>

<body>

		<!-- 토너먼트 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4" style="text-align: center;">쿠폰관리</h1>
					<div class="card mb-4">
						<div class="card-body">
							<div class="input-group col-md-6 col-md-offset-6 col-sm-12" style="float: right;">
                            <input type="text" name="search" class="form-control input-search coupon-search-input-box" placeholder="검색">
                            	<span class="input-group-btn">
                                	 <div class="btn btn-success coupon-search-btn"><i class="fa fa-search"></i></div>
                                </span>
                       	    </div>
                       	    <br>
                       	    <br>
                                <input type="button" value="쿠폰발행" onclick="" style="float: right;">
  	                	 </div>
					</div>
				</div>
					
					
					
					
					<div class="card mb-4">
						<div class="card-header">
							<input type="button" value="수정" onclick="" style="float: left;">
							<input type="button" value="삭제" onclick="" style="float: right;">
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th style="width: 10px;"></th>
											<th>쿠폰명</th>
											<th>쿠폰내용</th>
											<th>발행내역</th>
											<th>종료일</th>
											<th>관리기능</th>
										</tr>
									</thead>
									<tfoot align="center">
										<tr>
											<th></th>
											<th>쿠폰명</th>
											<th>쿠폰내용</th>
											<th>발행내역</th>
											<th>종료일</th>
											<th>관리기능</th>
										</tr>
									</tfoot>
									<tbody align="center">
										<tr>
											<td>
											<input type="checkbox" name="xxx" value="yyy" checked>
											</td>
											<td>도은</td>
											<td>김도은</td>
											<td>나무늘보</td>
											<td>2020.01.01</td>
											<td>
											<input type="button" value="수정" onclick="">
											<input type="button" value="삭제" onclick="">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	<script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script> 
</body>
</html>