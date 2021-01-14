<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>매니저관리페이지</title>

<script>
$(function(){
	alert("asd")
	var num = 61
	replyListView(num)
});

//댓글 목록 요청
function replyListView(num) {
	
   $.ajax({
      url:'${pageContext.request.contextPath}/admin/ajax',
      type:'GET',
      data: { num : num },
      error:function(xhr,status,msg){
         alert("상태값 :" + status + " Http에러메시지 :"+msg);
      },
      success: replyListViewResult
   });
}

//댓글 목록 응답
function replyListViewResult(data) {
   $("#replyListView").empty();
   
   $.each(data,function(idx,re){
      console.log(re);
      var uls = "<ul class = 'replyUl'>";// 작성된 댓글 아래 달아주는 버튼들

         var li1 = "<li class='btnUpdateReply'>수정</li><span>&nbsp;</span>";
         var li2 = "<li class='btnDeleteReply'>삭제</li><span>&nbsp;</span>";   
         var li3 = "<li class='btnNotifyReply'>신고</li><span>&nbsp;</span>";
         var li3 = "";   

      var ule = "</ul>";
      
      var ul = uls+li1+li2+li3+ule;
      
      if(re.fan_name == null || re.fan_name == ""){
         var name = re.st_name;
      }else{
         var name = re.fan_name;
      }
      
      $("<div class = 'replyInfo' data-no="+re.num+"><hr>") 
      .append($('<div class = \'row\'>').html(name + '&nbsp;' +re.w_date))
      .append($('<div class = \'row replyText\'>').html(re.w_comm))
      .append($('<div class = \'row flex-row-reverse\'>').append(ul))
      .appendTo('#replyListView');
   });//each
}




//댓글 등록 요청
function replyInsert(){
   var fbo_no = $("input:text[name='fbo_no']").val();   
   $.ajax({ 
       url: "${pageContext.request.contextPath}/star/fanBoard/reply",  
       type: 'POST',  
       data : $("#formReply").serialize(),
       success: function(response) {
          if(response == true) {
             fboardView(fbo_no);//게시물 재 출력
          }
       }, 
       error:function(xhr, status, message) { 
           /* alert(" status: "+status+" er:"+message); */
           alert("로그인 후 이용해주세요.");
       }
    });
}

//댓글 유효성 체크
function replyFormCheck(){
   if($("textarea[name='re_content']").val()==null || $("textarea[name='re_content']").val()==''){
      alert("내용을 입력하세요.")
      $("textarea[name='re_content']").focus();
      event.preventDefault();
   }else{
      return true;
   }
}





//댓글 수정을 위한 기본값, 틀 형성
function replyUpdateForm(replyOrigin) {
   var re_no = replyOrigin.data("no"); 
   var re_content = replyOrigin.find(".replyText").text() //새 textarea안에 기존 작성값 입력
   
   var textarea = "<hr><div class = 'row'><textarea class = 'col-xl-11 col-md-10 col-12 fboardReplyUpdate fboardReply' name='re_content' rows = 3 data-no="+re_no+">"
   var div = "</textarea><div class = 'col-xl-1 col-md-2 col-12 btnFboardReply'>";
   var btn = "<button type='button'  class='btnFboardReplyUpdate btn btn-primary py-2 px-4'>수정</button></div>";      
   var dib = textarea + re_content + div + btn;
   replyOrigin.replaceWith(dib);
}

//댓글 수정 요청 
function replyUpdate(reply) {
   var fbo_no = $("input:text[name='fbo_no']").val();
   var re_no = reply.data("no");
   var re_content = reply.parent().find(".fboardReplyUpdate").val();
   $.ajax({ 
       url: "${pageContext.request.contextPath}/star/fanBoard/reply/update/", 
       type: 'POST', 
          data : { re_no : re_no, re_content : re_content },
       success: function(response) {
         if(response == true) {
            alert('수정되었습니다.');
            fboardView(fbo_no);//화면 새로고침
         }
       }, 
       error:function(xhr, status, message) { 
           alert(" status: "+status+" er:"+message);
       } 
   });
}

//댓글 삭제 요청
function replyDelete(re_no) {
   var fbo_no = $("input:text[name='fbo_no']").val();   
   $.ajax({ 
      url: "${pageContext.request.contextPath}/star/fanBoard/reply/delete/", 
      type: 'POST', 
      data : { re_no : re_no },
      success: function(response) {
         if(response == true) {
            fboardView(fbo_no);
            alert('삭제되었습니다.');
         }
       },
      error:function(xhr, status, message) { 
          alert(" status: "+status+" er:"+message);
      } 
   });
}
</script>


</head>
<body>
	<div id="replyListView"></div>
	<div>바보밥</div>
</body>
</html>