<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 초대</title>

<style>
footer { position: fixed; left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }
#aa { position: fixed; left: 0; top: 0; width: 100%;}
#dataTable_filter { padding-left: 333px; }
</style>
<script>
function teamInvite(){
    if (confirm("팀에 초대 하시겠습니까?") == true){    //확인
    	document.inviteSuccess.submit();
    	alert("초대 완료");
        }else{   //취소
            return;
        }
 }
 function btnOK(){ alert('팀 초대 성공'); } 
 function btnNO(){ alert('팀 초대 거절'); } 


</script>
</head>
<body>
   <div style="width: 99%; margin-left: -25px; padding-top: 38px">
      <!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-xl navbar-dark bg-dark" style="width: 103%; margin-top: 36px;">
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
   
      <div class="card mb-4" style="width: 60%; float: left; margin-left: 60px;">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 팀이 없는 전체 회원들
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left; height: 650px;">
                  <table class="table table-bordered" id="dataTable">
                     <thead align="center">
                        <tr>
                           <th>아이디</th>
                           <th>이름</th>
                           <th>성별</th>
                           <th>연락처</th>
                           <th>주소</th>
                           <th>매너도</th>
                           <th>실력</th>
                           <th>포지션</th>
                           <c:if test="${updateButton.t_author eq '팀장'}">
                           <th>초대</th>
                           </c:if>
                        </tr>
                     </thead>
                        <tbody align="center">
                           <c:forEach var="f" items="${members}">
                              <tr>
                                 <td>${f.id}</td>
                                 <td>${f.name}</td>
                                 <td>${f.gender}</td>
                                 <td>${f.pnum }</td>
                                 <td>${f.location1}</td>
                                 <td>${f.manner}</td>
                                 <td>Lv ${f.lv}</td>
                                 <td>${f.pos}</td>
                                 <c:if test="${updateButton.t_author eq '팀장'}">
                                    <td><form action="inviteComeon" method="post" name="inviteSuccess">
                                       <input type="text" value="${f.id  }" name="id" style="display:none"> 
                                       <input type="text" value="${sessionScope.t_num }" name="t_num" style="display:none">
                                       <input type="text" value="${tname.t_name }" name="c_tname" style="display:none">
                                       <input type="submit" class="btn btn-primary" style="height: 31px" onclick="teamInvite()" value="팀초대">
                                       </form>
                                    </td>
                                 </c:if>
                              </tr>
                           </c:forEach>
                        </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   
      <div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 우리팀에 가입 신청한 회원들
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left;">
                  <table class="table table-bordered">
                     <thead  align="center">
                        <tr class="tr1">
                        <th class="text-center">아이디</th>
                        <th class="text-center">나이</th>
                        <th class="text-center">포지션</th>
                        <th class="text-center">실력</th>
                        <th class="text-center">매 너 도</th>
                        <c:if test="${updateButton.t_author eq '팀장'}">
                        <th class="text-center">초대</th>
                        </c:if>
                        </tr>
                     </thead>
                     <tbody  align="center">
                     <c:forEach items="${tinvite }" var="tinvite">
                        <tr>
                           <td class="text-center">${tinvite.id}</td>
                           <td class="text-center">${tinvite.i_age}</td>
                           <td class="text-center">${tinvite.i_pos}</td>
                           <td class="text-center">Lv ${tinvite.i_lv}</td>
                           <td class="text-center">${tinvite.i_manner}</td>
                           <c:if test="${updateButton.t_author eq '팀장' }">
                              <td>
                                 <form method="post">
                                    <input type="text" value="${sessionScope.t_num }" name="t_num" style="display: none"> 
                                    <input type="text" value="${tinvite.id }" name="id" style="display: none"> 
                                    <input type="text" value="팀원" name="t_author" style="display: none">
                                    <c:if test="${updateButton.t_author eq '팀장'}">
                                    <button type="submit" id="btnSelect" 
                                    class="btn btn-primary" onclick="javascript: form.action='${pageContext.request.contextPath}/teamListInsert'" style="height: 30px; width: 55px" onclick="javascript:btnOK()">수락</button>
                                    <button type="submit" id="btnSelect"
                                    class="btn btn-danger" onclick="javascript: form.action='${pageContext.request.contextPath}/teamInviteDelete'" style="height: 30px; width: 55px" onclick="javascript:btnNO()">거절</button>
                                    </c:if>
                                 </form>
                              </td>
                           </c:if>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <script>
               function goPage(q) {
                     location.href = "teamInvite?page=" + q + "&t_num=" + ${sessionScope.t_num};
                  }
               </script>
               <div style="margin-left: 270px;">
                  <my:paging paging="${paging}" jsfunc="goPage" />
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 팀이 초대한 회원들 현황
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left;">
                  <table class="table table-bordered">
                     <thead  align="center">
                        <tr class="tr1">
                        <th class="text-center">아이디</th>
                        <th class="text-center">초대날짜</th>
                        </tr>
                     </thead>
                     <tbody  align="center">
                     <c:forEach items="${select2 }" var="select2">
                        <tr>
                           <td class="text-center">${select2.id}</td>
                           <td class="text-center">${select2.c_tdate}</td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
   </div>
 
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>