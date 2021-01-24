<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀매치리스트 페이지</title>
<style>
footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	width: 100%;
	background: grey;
	color: white;
}

element.style {
    width: 99%;
    margin-left: -25px;
    padding-top: 38px;
}
#dataTable_filter{padding-left: 440px;}


</style>
</head>
<body>
	<!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
        <a class="navbar-brand" href="#">${sessionScope.kname}${sessionScope.name}님</a>
        
        <div class="collapse navbar-collapse text-center" id="navbarsExample11">
            <ul class="navbar-nav">
               <c:if test="${sessionScope.t_num ne null }">
                <li class="nav-item active">
                    <a class="nav-link" href="teamInfo?t_num=${sessionScope.t_num }">팀 정보</a>
                </li>
                </c:if>
                <c:if test="${sessionScope.t_num eq null }">
                <li class="nav-item">
                 <a class="nav-link" href="teamMake">팀 생성</a>
              </li>
              </c:if>
              <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamInvite?t_num=${sessionScope.t_num }">팀 초대</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamGallery?t_num=${sessionScope.t_num }">팀갤러리</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamNotice?t_num=${sessionScope.t_num }">팀 공지</a>
             </li>
             </c:if>
             <li class="nav-item">
                 <a class="nav-link" href="http://localhost/MatchFootball/teamList">팀 리스트</a>
             </li>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item"><a class="nav-link" href="teamMatchList">팀 매치 내역</a></li>
             </c:if>
            </ul>
        </div>
    </div>
</nav>
	<div class="card mb-4">
		<div class="card-header">
			<i class="fas fa-table mr-1"></i> 팀매치 신청 내역
		</div>
		<div class="card-body" style="margin-left:140px">
			<div class="table-responsive" style="margin-left: 150px; margin-bottom: 100px">
				<div class="container" style="float: left;">
					<table class="table table-bordered" id="dataTable">
						<thead>
							<tr align="center">
								<th>타입</th>
								<th>구장명</th>
								<th>상세 주소</th>
								<th>구장 가격</th>
								<th>경기 날짜</th>
								<th>경기 시간</th>
								<th>상대 팀</th>
								<th>경기 취소 여부</th>
							</tr>
						</thead>
						<tbody align="center">
							<c:forEach items="${match }" var="match">
								<tr>
									<td class="text-center">${match.mtype}</td>
									<td class="text-center">${match.f_name}</td>
									<td class="text-center">${match.f_address}</td>
									<td class="text-center">${match.price}</td>
									<td class="text-center">${match.m_date}</td>
									<td class="text-center">${match.m_hour}</td>
									<c:if test="${match.so_num eq null}">
									<td class="text-center">대기중..</td>
									</c:if>
									<c:if test="${match.so_num ne null}">
									<td class="text-center">${match.so_name }</td>
									</c:if>
									<c:if test="${match.so_num eq null && author.t_author eq '팀장'}">
									<td align="center"><form action="teamMatchDelete" method="post">
									<input type="text" value="${match.m_no }" name="m_no" style="display:none">
									<input type="submit" class="btn btn-danger" value="경기취소"></form></td>
									</c:if>
									
									<c:if test="${match.so_num eq null && author.t_author eq '팀원'}">
									<td align="center"><form action="teamMatchDelete" method="post">
									<input type="text" value="${match.m_no }" name="m_no" style="display:none">
									<input type="submit" class="btn btn-danger" value="경기취소" disabled="disabled"></form></td>
									</c:if>
									
									<c:if test="${match.so_num ne null}">
									<td align="center"><input type="button" value="매칭완료" disabled="disabled"></td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>