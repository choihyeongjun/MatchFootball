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
<title>관리자페이지</title>
<style>
body { margin-top: 40px; font-size: 14px; font-family: Arial, Helvetica Neue, Helvetica, sans-serif; }
#wrap { width: 1100px; margin: 0 auto; }
#external-events { float: right; width: 150px; padding: 0 10px; border: 1px solid #ccc; background: #eee; text-align: left; }
#external-events h4 { font-size: 16px; margin-top: 0; padding-top: 1em; }
#external-events .fc-event { margin: 10px 0; cursor: pointer; }
#external-events p { margin: 1.5em 0; font-size: 11px; color: #666; }
#external-events p input { margin: 0; vertical-align: middle; }
#calendar { float: left; width: 900px; }
</style>

</head>
<body>
  		<div class="card mb-4" style="margin-left: 240px; margin-top: 30px; width: 1650px;">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> 매치 경기일정
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead align="center">
										<tr>
											<th>M_No.</th>
											<th>타입</th>
											<th>경기장</th>
											<th>주소</th>
											<th>레벨</th>
											<th>경기날짜</th>
											<th>경기시간</th>
											<th>경기상태</th>
											<th>구장Id</th>
											<th></th>
										</tr>
									</thead>
									<tbody align="center">
									<c:forEach var="matchList" items="${match}">
										<tr>
											<td>${matchList.m_no }</td>
											<td>${matchList.m_type }</td>
											<td>${matchList.f_name }</td>
											<td>${matchList.f_address }</td>
											<td>${matchList.lv }</td>
											<td>${matchList.m_date }</td>
											<td>${matchList.m_hour }</td>
											<td>${matchList.t_type }</td>
											<td>${matchList.f_id }</td>
											<td>
											<button type="submit" class="btn btn-danger" 
											onclick="javascript: form.action='${pageContext.request.contextPath}/matchdelete'">삭제</button>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
	
   <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>