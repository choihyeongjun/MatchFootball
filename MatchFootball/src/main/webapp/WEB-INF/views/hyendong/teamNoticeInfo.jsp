<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>teamNoticeInfo.jsp</title>
<style>
footer {
   position: fixed;
   left: 0px;
   bottom: 0px;
   width: 100%;
   background: grey;
   color: white;
}
.contentWrapper {
   max-width: 1024px;
   margin: 0 auto;
   overflow: auto;
}

.contentWrapper.matchDetail {
   max-width: inherit;
   padding: 0;
}

.contentWrapper.matchDetail .matchWrap {
   max-width: 1024px;
   margin: 0 auto;
}

.contentWrapper.w480 {
   max-width: 480px;
   margin: 0 auto;
   padding-bottom: 0;
}

.contentWrapper.acc {
   padding: 0 20px;
}

.articleTitle h1 {
   font-size: 22px;
   font-weight: 500;
}

.articleWrap {
   margin: 0 20px;
   padding: 20px 0;
}

.articleBody {
   border-bottom: 1px solid #ddd;
   padding: 20px 0;
   word-break: keep-all;
}

.articleBody pre {
   font-size: 15px;
   line-height: 22px;
   letter-spacing: -0.4px;
}

.articleBottom {
   padding: 20px 0;
}

.articleBottom p {
   margin-bottom: 15px;
   font-size: 18px;
   font-weight: 400;
}

.helpTagWrap {
   margin-top: 20px;
}

.helpTagWrap p {
   font-size: 14px;
}

.helpTagWrap li {
   display: inline-block;
}

.helpTagWrap li a {
   font-size: 14px;
   color: #999;
}

.helpTagWrap li:nth-child(2):before {
   display: none;
}

.helpTagWrap li:before {
   content: '·';
   padding: 0 2px;
   color: #999;
}
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
             <li class="nav-item"><a class="nav-link" href="teamMatchList">팀 매치 내역</a></li>
            </ul>
        </div>
    </div>
</nav>

   <div align="center">
      <h1>팀 공 지</h1>
      <hr>
   </div>
   
   <div>
   <form action="teamNoticeInsertt" method="post" encType="multipart/form-data">
      <article>
         <div class="container" role="main" >
               <div class="mb-3" style="float:right;">
                  <label for="reg_id">작성자</label> 
                  <input type="text" class="form-control" name="t_id" id="reg_id" value="${sessionScope.id }" placeholder="이름을 입력해 주세요" readonly>
               </div>
               <div class="mb-3" style="width: 1050px">
                  <label for="title">제목</label>
                  <input type="text" class="form-control" name="t_title" placeholder="제목을 입력해 주세요" value="${teamNoticeInfo.t_title }" readonly>
               </div>
               <div class="mb-3">
                  <label for="content">내용</label>
                  <textarea class="form-control" rows="5" name="t_content" id="content" placeholder="내용을 입력해 주세요" style="height: 250px">${teamNoticeInfo.t_content }</textarea>
               </div>
               <input type="text" name="t_num" value="${teamInfo.t_num }" style="display:none">
              <br>
            </div>
         </article>
      </form>
      <br>
      <div style="padding-left: 1424px;">
      <div style="float: left">
         <input type="button" class="btn btn-primary" value="목록" onclick="location.href='teamNotice?t_num=${teamInfo.t_num}'">
      </div>
      <div style="float: left; margin-left: 10px">
         <c:if test="${updateButton.t_author eq '팀장' }">
            <form action="teamNoticeUpdate">
               <input type="text" value="${teamInfo.t_num }" name="t_num" style="display: none"> <input type="text" value="${teamNoticeInfo.n_no }" name="n_no" style="display: none">
               <button type="submit" class="btn btn-primary">수정</button>
            </form>
         </c:if>
      </div>
      <div style="float: left; margin-left: 10px">
         <c:if test="${updateButton.t_author eq '팀장' }">
            <form action="teamNoticeDelete" method="post">
               <input type="text" value="${teamInfo.t_num }" name="t_num" style="display: none"> <input type="text" value="${teamNoticeInfo.n_no }" name="n_no" style="display: none">
               <button type="submit" class="btn btn-danger">삭제</button>
            </form>
         </c:if>
      </div>
      </div>
   </div>
</body>
</html>