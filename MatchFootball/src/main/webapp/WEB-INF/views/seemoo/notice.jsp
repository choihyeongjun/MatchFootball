<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀공지페이지</title>

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
#dataTable_filter{padding-left: 265px;}
.pagination { display: flex; padding-left: 0; list-style: none; padding-left: 362px; }
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
      <div class="card mb-4" style="width: 1000px; height: 600px; margin: auto; margin-top: 60px;">
         <div class="card-header">
            <i class="fas fa-table mr-1" style="margin-top: 10px">전체 공지사항</i>
         <div style="float: right;">
         </div>
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left; height: 600px;">
                  <table class="table table-bordered" id="dataTable">
                     <thead align="center">
                        <tr>
                           <th style="width: 100px">No.</th>
                           <th>공지 제목</th>
                           <th style="width: 200px">날짜</th>
                           <th style="width: 100px">조회수</th>
                        </tr>
                     </thead>
                        <tbody align="center" style="cursor:pointer;">
                           <c:forEach var="noticeList" items="${notice}">
                              <tr>
                              <td onclick="location.href='noticeView?n_no=${noticeList.n_no }'">${noticeList.n_no }</td>
                              <td onclick="location.href='noticeView?n_no=${noticeList.n_no }'">${noticeList.n_title }</td>
                              <td onclick="location.href='noticeView?n_no=${noticeList.n_no }'">${noticeList.n_date }</td>
                              <td></td>
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