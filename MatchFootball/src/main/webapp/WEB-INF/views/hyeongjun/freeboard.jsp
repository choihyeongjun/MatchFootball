<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta property="og:image"
   content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>Insert title here</title>
<link rel="stylesheet" href="/css/owl.carousel.css">
<!-- Bootstrap -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/hyeongjun/css1/style.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
      src="${pageContext.request.contextPath}/resources/hyeongjun/js1/e-magz.js"></script> 
<style>
.ion-android-favorite:before { content: "\f388"; }

.ion-android-favorite-outline111:before { content: "\f387"; }

footer {
    position: fixed;
    left: 0px;
    bottom: 0px;
    width: 100%;
    background: grey;
    color: white;
}

#btnwriter:hover {
   background-color: #1752ff;
   border-color: #1752ff;
}
</style>
<script>
var likecnt;
var clickstate;
var love = function() {   
   $(".love").click(function(){
         var $this =$(this)
         
         if(!$(this).hasClass("active")) {
            clickstate=1;
            $(this).find(".animated").remove();
            $(this).addClass("active");
            $(this).find("i").removeClass("ion-android-favorite-outline");
            $(this).find("i").addClass("ion-android-favorite");
            $(this).find("div").html($.number($(this).find("div").html()));
            $(this).append($(this).find("i").clone().addClass("animated"));
            $(this).find("i.animated").on("animationend webkitAnimationEnd oAnimationEnd MSAnimationEnd", function(e){
               $(this).remove();
              $(this).off(e);
            });
            
            // add some code ("love")
         }else{
            clickstate=0;
            $(this).find(".animated").remove();
            $(this).removeClass("active");
            $(this).find("i").addClass("ion-android-favorite-outline");
            $(this).find("i").removeClass("ion-android-favorite");
            $(this).find("div").html($.number($(this).find("div").html()));   
            // add some code ("unlove")
         }
         $.ajax({
            url:"likecheck/"+clickstate,
            method:"post",
            data:{
               id:'<%=(String)session.getAttribute("id")%>',
               num:$this.find('#num').val()
               
            },error : function(xhr, status, msg) {
               alert("상태값 :" + status + " Http에러메시지 :" + msg);
            },
            success : function(data){
               console.log("성공");
            }
         })  //ajax
         
   
      
   });  //clich
   
};
/* var bbsidx = ${bbsidx};
var useridx = ${useridx};
 
var btn_like = document.getElementById("love");
 btn_like.onclick = function(){ changeHeart(); }
 

 function changeHeart(){ 
     $.ajax({
            type : "POST",  
            url : "/free",       
            dataType : "json",   
            data : {
               id:sessionScope.id,
               num:$('#no').attr('value'),
               likeit:('like').attr('value')
                 }
            error : function(){
                Rnd.alert("통신 에러","error","확인",function(){});
            },
            success : function(jdata) {
                if(jdata.resultCode == -1){
                    Rnd.alert("좋아요 오류","error","확인",function(){});
                }
                else{
                    if(jdata.likecheck == 1){
                       
                        $("#likecnt").empty();
                        $("#likecnt").append(jdata.likecnt);
                    }
                    else if (jdata.likecheck == 0){
                       $(this).find(".animated").remove();
                    $(this).addClass("active");
                    $(this).find("i").removeClass("ion-android-favorite-outline");
                    $(this).find("i").addClass("ion-android-favorite");
                    $(this).append($(this).find("i").clone().addClass("animated"));
                    $(this).find("i.animated").on("animationend webkitAnimationEnd oAnimationEnd MSAnimationEnd", function(e){
                       $(this).remove();
                      $(this).off(e);
                        $("#likecnt").empty();
                        $("#likecnt").append(jdata.likecnt);
                        
                    }
                }
            }
        });
 } */
</script>
</head>
<body>
   <section class="home">
      <div class="container">
         <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">

               <div class="line">
                  <div>인기글</div>
               </div>

               <div class="row" style="flex-wrap: nowrap;">
                  <c:forEach var="f" items="${list}" begin="0" end="2">
                  
                     <div class="col-md-6 col-sm-6 col-xs-12">

                        <article class="article col-md-12">
                           <div class="inner">
                              <figure>
                                  <img id="${f.num}"
                                    src=""
                                    alt="대표사진이없습니다.">
                                 
                              </figure>
                              <div class="padding">
                                 <div>
                                 <input id="no" type="text" value="${f.num}" hidden=""/>
                                 <td>게시글번호:${f.num}</td>
                                 </div>
                                 <div class="detail">
                                    <div class="time">${f.b_date}</div>
                                 </div>
                                 <h2>
                                    ${f.title}
                                 </h2>
                                 
                                 <div class="likeit">
                                    <c:if test="${f.heartstate eq '0'}">
                                    <a href="#" class="love"><i
                                       class="ion-android-favorite-outline"></i>
                                       <input id="num" name="num" type="text" value="${f.num}" hidden=""/>
                                       <div>${f.likeit}</div></a>
                                    </c:if>
                                    
                                     <c:if test="${f.heartstate eq '1'}">
                                    <a href="#" class="love active"><i
                                       class="ion-android-favorite"></i>
                                       <input id="num" type="text" name="num" value="${f.num}" hidden=""/>
                                       <div>${f.likeit}</div></a>
                                    </c:if> 
                                       
                                       
                                       <div>조회수:${f.cnt}</div> <a class="btn btn-primary more"
                                       href="${pageContext.request.contextPath}/free/freedetail/${f.num}/${f.cnt}">
                                       <div>More</div>
                                       <div>
                                          <i class="ion-ios-arrow-thin-right"></i>
                                       </div>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </article>
                     </div>
                    <script>
                  var sentence = '${f.comm}';
                  console.log('======');
                  console.log(sentence);
                  var start = sentence.indexOf('src="');
                  var end = sentence.indexOf('"', start+5);
                  var list = sentence.substring(start+5, end);
                  $('#${f.num}').attr('src',list);
            
                  
         </script>

                  </c:forEach>
               </div>
               </div>
               <div class="line">
                  <div>인기글</div>
                  <br />
               </div>
               <div class="card mb-4">
                  <div class="card-header">
                     <i class="fas fa-table mr-1"></i> 자유게시판
                  </div>

                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%"
                           cellspacing="0">
                           <thead>
                              <tr>
                                 <th>번호</th>
                                 <th>제목</th>
                                 <th>작성자</th>
                                 <th>작성날짜</th>
                                 <th>좋아요수</th>
                                 <th>조회수</th>
                              </tr>
                           </thead>
                           <tfoot>
                              <tr>
                                 <th>번호</th>
                                 <th>제목</th>
                                 <th>작성자</th>
                                 <th>작성날짜</th>
                                 <th>좋아요수</th>
                                 <th>조회수</th>
                              </tr>
                           </tfoot>
                           <tbody>
                              <c:forEach var="f" items="${list}" begin="3">
                                 <tr>
                                    <td>${f.num}</td>
                                    <td><a href="${pageContext.request.contextPath}/free/freedetail/${f.num}/${f.cnt}">${f.title}</a></td>
                                    <td>${f.id}</td>
                                    <td>${f.b_date}</td>
                                    <td>${f.likeit}</td>
                                    <td>${f.cnt}</td>
                                 </tr>
                              </c:forEach>
                           </tbody>
                        </table>
                     <div>
                        <button type="submit" class="btn btn-primary" id="btnwriter" onclick="location.href='${pageContext.request.contextPath}/freewriter'" style="float: right;">글쓰기</button>
                     </div>
                     </div>
                  </div>
               </div>
               <!-- /.container -->
            
         </div>
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