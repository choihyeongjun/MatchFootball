<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function messageupdate(s){
		var r_id='<%=(String)session.getAttribute("id")%>';
		
		$.ajax({
			url:"updateinvite",
			dataType:'json',
			data:{
				r_id:r_id,
				c_id:s
			},
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + " Http에러메시지 :" + msg);
			},
			success : function(data){
				console.log('성공');
			}
		})
	}
</script>
</head>
<body>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">초대 리스트</h1>
				<div class="card mb-4">

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>초대한 ID</th>
										<th>초대한 날짜</th>
										<th>연락처</th>
										<th>제목</th>
										<th>내용</th>
										<th>팀이름</th>
										<th>수락여부</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${invite}" var="i">
									<form id="dd">
										<tr>
											<td name="c_id">${i.c_id}</td>
											<td>${i.s_date}</td>
											<td>${i.pnum}</td>
											<td>${i.title}</td>
											<td>${i.comm}</td>
											<td>${i.t_num}</td>
											<td>${i.check1}</td>
											<td>${i.m_no}</td>
											<c:if test="${i.check1=='초대중..'}">
											<td><button type="submit" class="btn btn-primary" id="btnupdate1" 
											onclick="javascript: form.action='${pageContext.request.contextPath}/updateinvite/${i.c_id}/${i.t_num}/${i.m_no}'" >수락</button>
											</td>
											<td><button type="submit" class="btn btn-primary" id="btnupdate2" 
											onclick="javascript: form.action='${pageContext.request.contextPath}/updateinvite1/${i.c_id}'" >거절</button>
											</td>
											</c:if>
											<c:if test="${i.check1=='거절됨' || i.check1=='수락완료'}">
											<td><button type="submit" class="btn btn-primary" id="btnupdate1" disabled>수락</button>
											</td>
											<td><button type="submit" class="btn btn-primary" id="btnupdate2" disabled>거절</button>
											</td>
											</c:if>
											
										</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>