<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.size { width: 280px; height: 280px; }
.ap-info { background-color: #314d9f; border-radius: 10px; color: white; text-align: center; padding: 7px; border: 0; outline: 0; }
a { text-decoration: none;}

.card { border: none; padding: 15px; border-radius: 3px; box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1); margin-bottom: 20px; }
.size { display: block; margin: 0px auto; text-align:center; width=350px; height=350px; border-radius: 40%; overflow: hidden; }
table.type05 { border-collapse: separate; border-spacing: 1px; text-align: left; line-height: 1.5; border-top: 1px solid #ccc; margin: 20px 10px; }
table.type05 th { width: 100px; padding: 10px; font-weight: bold; vertical-align: top; border-bottom: 1px solid #ccc; background: #efefef; }
table.type05 td { width: 100px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc; }
#main_menu {}
</style>

<script>
function teamMemberOut(){
   if (confirm("해당 팀원을 추방하시겠습니까?") == true){    //확인
      alert("추방 완료..");
       }else{   //취소
           return false;
       }
}
function teamJoin(){
    if (confirm("팀에 가입 신청을 하시겠습니까?") == true){    //확인
       alert("가입 신청 완료");
        }else{   //취소
            return true;
        }
 }
function teamCancle(){
    if (confirm("팀의 가입 신청을 취소 하시겠습니까?") == true){    //확인
       alert("가입 신청 취소");
        }else{   //취소
            return false;
        }
 }
function teamOut(){
    if (confirm("팀에서 나가시겠습니까?") == true){    //확인
       alert("팀 탈퇴가 되었습니다");
        }else{   //취소
            return false;
        }
 }
</script>

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

   <div align="center" style="padding-bottom: 591px">
      <br>
      <div> <h1>${teamInfo.t_name}의 팀 정보</h1> </div>
      <hr>
         <div class="card" style="float: left; margin-left: 28%; height: 600px;">
            <img class="size" src="images/${teamInfo.t_logo }" class="img-thumbnail" style=" text-align: center; ">
            <hr> 
            
            <table style="text-align: center;">
               <tr><th align="center" style="font-size: 20px">${teamInfo.t_name}</th></tr>
            </table>
            
            <input type="text" name="t_num" value="${teamInfo.t_num }" style="display: none" />
            
            <table class="type05" style="text-align: center;">
               <tr>
                  <th scope="row">경기유형</th>
                  <td>${teamInfo.t_type }</td>
                  <th scope="col">연령대</th>
                  <td><input type="text" value=${teamInfo.t_num } name="t_num" style="display: none">${avgAge.age }</td>
               </tr>
               <tr>
                  <th scope="row">팀원수</th>
                  <td>${count.c }명</td>
                  <th scope="row">실력</th>
                  <td>${teamInfo.t_type }</td>
               </tr>
               <tr>
                  <th scope="row">지역</th>
                  <td colspan="3">${teamInfo.t_address }</td>
               </tr>
               <tr>
                  <th scope="row" style="height: 100px; margin-top: 10px" >팀 소개</th>
                  <td colspan="3">${teamInfo.t_info }</td>
               </tr>
            </table>
            
            <div>
               <c:if test="${updateButton.t_author eq '팀장' }">
                  <button type="submit" class="ap-info"
                        onclick="location.href='teamUpdate?t_num=${teamInfo.t_num}'">팀 정보 변경</button>
               </c:if>
                  <form action="teamListOut?t_num=${teamInfo.t_num }">
                  <input type="text" value="${sessionScope.t_num }" name="t_num" style="display:none">
                  <c:if test="${members.t_num ne null && updateButton.t_author eq '팀원'}">
                  <button type="submit" class="ap-info" onclick="teamOut();">팀 탈퇴</button>
                  </c:if>
                  </form>
            </div>
            
            <div align="center">
               <form method="post">
                  <c:if test="${members.t_num eq null && hh.sel eq 0}">
                     <input type="text" value="${sessionScope.id }" name="id" style="display:none">
                     <input type="text" value="${members.pos }" name="i_pos" style="display:none">
                     <input type="text" value="${members.lv }" name="i_lv" style="display:none">
                     <input type="text" value="${members.manner }" name="i_manner" style="display:none">
                     <button type="submit" class="ap-info" onclick="javascript: form.action='${pageContext.request.contextPath}/teamInviteInsert?t_num=${teamInfo.t_num}'; teamJoin();">팀 가입 신청</button>
                  </c:if>
                  <c:if test="${hh.sel eq 1 }">
                  ${sessionScope.id }님은  ${where.t_name } 팀에 가입 신청 중입니다.
                  <input type="text" value="${sessionScope.id }" name="id" style="display:none">
                  <button type="submit" class="ap-info" onclick="javascript: form.action='${pageContext.request.contextPath}/teamInviteCancle?t_num=${teamInfo.t_num}'; teamCancle();">팀 가입 취소</button>
                  </c:if>
               </form>
            </div>
            
         </div>

         <div class="card" style="float: left; margin-left: 2%; text-align: center;" >
            <table class="table table-hover">
               <thead>
                  <tr class="table-secondary">
                     <th scope="col">ID</th>
                     <th scope="col">이름</th>
                     <th scope="col">포지션</th>
                     <th scope="col">권한</th>
                     <th scope="col"></th>
                  </tr>
               </thead>
               <c:if test="${teamInfo.t_hidden ne 'Y' }">
                  <tbody align="center">
                     <tr>
                        <td colspan="3">비공개</td>
                     </tr>
                  </tbody>
               </c:if>
               <c:if test="${teamInfo.t_hidden eq 'Y' }">

                  <c:forEach items="${teamMembers}" var="teamMembers">
                     <tr>
                        <td>${teamMembers.id }</td>
                        <td>${teamMembers.name }</td>
                        <td>${teamMembers.pos }</td>
                        <td>${teamMembers.t_author }</td>
                        <td>
                        <form method="post">
                        <input type="text" value="${teamMembers.id }" name="id" style="display:none">
                        <c:if test="${teamMembers.t_author eq '팀원' && updateButton.t_author eq '팀장'}">
                        <button type="submit" class="ap-info" onclick="javascript: form.action='${pageContext.request.contextPath}/memberOut'; teamMemberOut();">추방</button>
                        </c:if>
                        </form>
                        </td>
                     </tr>
                  </c:forEach>
                  <script>
                     function goPage(p) {
                        location.href = "teamInfo?page=" + p +"&t_num=" + ${teamInfo.t_num};
                     }
                  </script>
               </c:if>
            </table>
                  <div>
                     <my:paging paging="${paging}" jsfunc="goPage" />
                  </div>
         </div>
      </div>
      <br>
</body>
</html>