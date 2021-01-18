<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
a:link { text-decoration: none; }
a:visited { text-decoration: none; }
a:hover { text-decoration: none; }
li { list-style: none; }
.topicList { margin: 20px; }
.topicList ul li { border-bottom: 1px solid #eee; }
.topicList ul li a { font-size: 16px; display: block; padding: 12px 0; word-break: keep-all; }
.topicList ul li p { font-size: 12px; color: #999; }
.topicList ul li h2 { font-size: 15px; font-weight: 400; letter-spacing: -0.4px; }
#dataTable_filter{padding-left: 330px;}
.pagination { display: flex; padding-left: 0; list-style: none; padding-left: 395px; }
footer {
   position: fixed;
   left: 0px;
   bottom: 0px;
   width: 100%;
   background: grey;
   color: white;
}

</style>

</head>
<body>

<!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
        <a class="navbar-brand" href="#">${sessionScope.kname}${sessionScope.name}��</a>
        
        <div class="collapse navbar-collapse text-center" id="navbarsExample11">
            <ul class="navbar-nav">
               <c:if test="${sessionScope.t_num ne null }">
                <li class="nav-item active">
                    <a class="nav-link" href="teamInfo?t_num=${sessionScope.t_num }">�� ��蹂�</a>
                </li>
                </c:if>
                <c:if test="${sessionScope.t_num eq null }">
                <li class="nav-item">
                 <a class="nav-link" href="teamMake">�� ����</a>
              </li>
              </c:if>
              <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamInvite?t_num=${sessionScope.t_num }">�� 珥���</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamGallery?t_num=${sessionScope.t_num }">��媛ㅻ�щ━</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamNotice?t_num=${sessionScope.t_num }">�� 怨듭�</a>
             </li>
             </c:if>
             <li class="nav-item">
                 <a class="nav-link" href="http://localhost/MatchFootball/teamList">�� 由ъ�ㅽ��</a>
             </li>
            </ul>
        </div>
    </div>
</nav>

      <br>
      <div style="text-align: center;"> <h1>�� 怨듭�</h1> </div>
      <hr>
      
      <div class="card mb-4" style="width: 1000px; margin: auto;">
         <div class="card-header">
            <i class="fas fa-table mr-1" style="margin-top: 10px"></i> ��泥� ���� 紐⑸�
         <div style="float: right;">
            <c:if test="${updateButton.t_author eq '����' }">
               <button type="button" class="btn btn-primary" onclick="location.href='teamNoticeInsert?t_num=${teamInfo.t_num}'" >怨듭� �깅�</button>
            </c:if>
         </div>
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left; height: 650px;">
                  <table class="table table-bordered" id="dataTable">
                     <thead style="text-align: center;">
                        <tr style="width: 10px">
                           <th>No.</th>
                           <th>��紐�</th>
                           <th>��吏�</th>
                        </tr>
                     </thead>
                        <tbody style="width: 10px">
                           <c:forEach var="teamNotice" items="${teamNotice}">
                              <tr>
                                 <td style='cursor:pointer;' onclick="location.href='teamNoticeInfo?n_no=${teamNotice.n_no }&t_num=${sessionScope.t_num}'">${teamNotice.n_no }</td>
                                 <td style='cursor:pointer;' onclick="location.href='teamNoticeInfo?n_no=${teamNotice.n_no }&t_num=${sessionScope.t_num}'">${teamNotice.t_title}</td>
                                 <td style='cursor:pointer;' onclick="location.href='teamNoticeInfo?n_no=${teamNotice.n_no }&t_num=${sessionScope.t_num}'">${teamNotice.t_date }</td>
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