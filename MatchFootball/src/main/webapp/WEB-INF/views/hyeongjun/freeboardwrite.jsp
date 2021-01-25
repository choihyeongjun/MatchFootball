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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
   <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
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

.navbar-brand {
	padding: 0;
}

.modal.show .modal-dialog {
    transform: none;
}

.modal-content {
    position: relative;
    display: flex;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
}

.container-fluid {
    width: 100%;
    padding-right: var(--bs-gutter-x,.75rem);
    padding-left: var(--bs-gutter-x,.75rem);
    margin-right: auto;
    margin-left: auto;
}

.modal {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1050;
    display: none;
    width: 100%;
    height: 100%;
    overflow: hidden;
    outline: 0;
}

.lili {
    padding: 3px 0 3px 0;
    text-indent: -30px;
    line-height: 170%;
    color: white;
}

.row>* {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x)/ 2);
    padding-left: calc(var(--bs-gutter-x)/ 2);
    margin-top: var(--bs-gutter-y);
}

.col-md-3 {
    flex: 0 0 auto;
    width: 25%;
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
   <section class="home" style="padding-bottom: 110px;">
      <div class="container">
      	<div>
      		<h5 style="text-align: center;">새 글 등록</h5>
      	</div>
         <form id="form1" method="post" class="form-horizontal"  action="${pageContext.request.contextPath}/freeinsert">
            <div align="center" id="mdiv" style="width: 100%">
               <table class="table" style="width: 100%">
                  <tbody>
                     <tr>
                     	<td style="text-align:center; width: 10%">I D</td>
                        <td style="width: 15%"><input name="id" type="text" value="${id}"></td>
                        <td style="text-align:center; width: 10%">제 목</td>
                        <td style="width: 65%"><input name="title" type="text" style="width: 100%"></td>
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