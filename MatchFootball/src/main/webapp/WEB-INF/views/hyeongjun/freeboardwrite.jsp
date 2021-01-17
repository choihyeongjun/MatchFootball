<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>자유게시판 작성페이지</title>

<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
   <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
   <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
   <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<script
      src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script> 

<script> 
   $(document).ready(function() {
      //여기 아래 부분
      $('#summernote').summernote({
         height : 500, // 에디터 높이
         minHeight : null, // 최소 높이
         maxHeight : null, // 최대 높이
         focus : false, // 에디터 로딩후 포커스를 맞출지 여부
         lang : "ko-KR", // 한글 설정
         
      });
   });
    function sendFile(file, el) {
         var form_data = new FormData();
         form_data.append('file', file);
         $.ajax({
           data: form_data,
           type: "POST",
           url: 'freeinsert',
           cache: false,
           contentType: false,
           enctype: 'multipart/form-data',
           processData: false,
           success: function(url) {
             $(el).summernote('editor.insertImage', url);
             $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
           }
         });
       }

</script>
<style>
footer {
    position: fixed;
    left: 0px;
    bottom: 0px;
    width: 100%;
    background: grey;
    color: white;
}
#btnInsert:hover {
   background-color: #1752ff;
   border-color: #1752ff;
}

#btnReset {
border-color: #314d9f;
color: #314d9f;
}

#btnReset:hover {
   background-color: #314d9f;
   border-color: #314d9f;
   color: white;
}
</style>
</head>

<body>
   <section class="home">
      <div class="container">
         <form id="form1" method="post" class="form-horizontal"  action="${pageContext.request.contextPath}/freeinsert">
            <div align="center" id="mdiv" style="width: 100%">
               <table class="table" style="width: 100%">
                  <tbody>
                     <tr>
                        <td><input name="id" type="text" value="${id}"></td>
                     </tr>
                     <tr>
                        <td align="center" style="width: 20%">제목</td>
                        <td><input name="title" type="text" style="width: 100%"></td>
                     </tr>
                  </tbody>
               </table>
            </div>
            
            <div align="center">
               <textarea id="summernote" name="comm"></textarea><br>
               <button type="submit" class="btn btn-primary" id="btnInsert">등록</button>
               <button type="submit" class="btn btn-outline-primary" id="btnReset" onclick="javascript: form.action='${pageContext.request.contextPath}/free'" >돌아가기</button>
               
            </div>
         </form>
      </div>
   </section>
      <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/js1/jquery.migrate.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.js"></script>
   <script>
      var $target_end = $(".best-of-the-week");
   </script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/jquery-number/jquery.number.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/owl.carousel.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/easescroll/jquery.easeScroll.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.js"></script>
</body>
</html>