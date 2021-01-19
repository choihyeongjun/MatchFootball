<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/teamMenu.css">
<title>���� ���</title>
<style>
table.type05 th { width: 150px; padding: 10px; font-weight: bold; vertical-align: top; border-bottom: 1px solid #ccc; background: #efefef; }
table.type05 td { width: 100px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc; }
label { font-size: 22px}
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
                    <a class="nav-link" href="teamInfo?t_num=${sessionScope.t_num }">�� ����</a>
                </li>
                </c:if>
                <c:if test="${sessionScope.t_num eq null }">
                <li class="nav-item">
                 <a class="nav-link" href="teamMake">�� ����</a>
              </li>
              </c:if>
              <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamInvite?t_num=${sessionScope.t_num }">�� �ʴ�</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamGallery?t_num=${sessionScope.t_num }">��������</a>
             </li>
             </c:if>
             <c:if test="${sessionScope.t_num ne null }">
             <li class="nav-item">
                 <a class="nav-link" href="teamNotice?t_num=${sessionScope.t_num }">�� ����</a>
             </li>
             </c:if>
             <li class="nav-item">
                 <a class="nav-link" href="http://localhost/MatchFootball/teamList">�� ����Ʈ</a>
             </li>
             <li class="nav-item"><a class="nav-link" href="teamMatchList">�� ��ġ ����</a></li>
            </ul>
        </div>
    </div>
</nav>

   <div align="center">
      <br>
      <div> <h1>${teamInfo.t_name}�� �� �������</h1> </div>
      <hr>
      
   </div>
   <form action="teamNoticeInsertt" method="post" encType="multipart/form-data">
      <article>
         <div class="container" role="main" style="width: 500px">
               <div class="mb-3">
                  <label for="title">����</label>
                  <input type="text" class="form-control" name="t_title" placeholder="������ �Է��� �ּ���">
               </div>
               <div class="mb-3">
                  <label for="reg_id">�ۼ���</label> 
                  <input type="text" class="form-control" name="t_id" id="reg_id" value="${sessionScope.id }" placeholder="�̸��� �Է��� �ּ���" readonly>
               </div>
               <div class="mb-3">
                  <label for="content">����</label>
                  <textarea class="form-control" rows="5" name="t_content" id="content" placeholder="������ �Է��� �ּ���" style="height: 250px"></textarea>
               </div>
               
               <input type="text" name="t_num" value="${teamInfo.t_num }" style="display:none">
               <div align="center">   
                  <button type="submit" class="btn btn-primary" id="btnSave">���</button>
                  <button type="button" class="btn btn-success" id="btnList">���</button>
               </div>
         </div>
      </article>
   </form>
</body>
</html>