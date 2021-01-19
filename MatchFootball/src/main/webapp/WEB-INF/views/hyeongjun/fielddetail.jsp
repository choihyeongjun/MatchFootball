<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FullCalendar</title>

<link rel=" shortcut icon" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/image/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/fullcalendar.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap.min.css">
<link rel="stylesheet" href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/select2.min.css' />
<link rel="stylesheet" href='${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/css/bootstrap-datetimepicker.min.css' />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/hyeongjun/calander/css/main.css">
<script>
$(function(){
	$('.match1').on("click",function(){
		
	})
})

		

</script>
</head>

<body>

   <div class="container">
	
      <!-- 일자 클릭시 메뉴오픈 -->
      <div id="contextMenu" class="dropdown clearfix">
         <ul class="dropdown-menu dropNewEvent" role="menu"
            aria-labelledby="dropdownMenu"
            style="display: block; position: static; margin-bottom: 5px;">
            <li><a tabindex="-1" class="dd">개인축구</a></li>
            <li><a tabindex="-1" class="aa">개인풋살</a></li>
            
            <li><a tabindex="-1" class="match1">팀매치</a></li>
            <c:if test="${id eq f_id}">
             <li><a tabindex="-1" class="match2">개인매치</a></li>
             </c:if>
            <li class="divider"></li>
            <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
         </ul>
      </div>

      <div id="wrapper">
         <div id="loading"></div>
         <div id="calendar"></div>
      </div>

	<form action="" name="frm">
	<input type="hidden" name="d_id" id="d_id" value="${id}"/>
      <!-- 일정 추가 MODAL -->
      <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title"></h4>
               </div>
               <div class="modal-body">
					<label hidden=""></label>
           

                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-title">일정명</label> <input
                           class="inputModal" type="text" name="edit-title"
                           id="edit-title" required="required" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-start">시작</label> <input
                           class="inputModal" type="text" name="edit-start"
                           id="edit-start" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-end">끝</label> <input
                           class="inputModal" type="text" name="edit-end" id="edit-end" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type">구분</label> <select
                           class="inputModal" type="text" name="edit-type" id="edit-type">
                           <option value="개인축구">개인축구</option>
                           <option value="개인풋살">개인풋살</option>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-color">색상</label> <select
                           class="inputModal" name="color" id="edit-color">
                           <option value="#D25565" style="color: #D25565;">빨간색</option>
                           <option value="#9775fa" style="color: #9775fa;">보라색</option>
                           <option value="#ffa94d" style="color: #ffa94d;">주황색</option>
                           <option value="#74c0fc" style="color: #74c0fc;">파란색</option>
                           <option value="#f06595" style="color: #f06595;">핑크색</option>
                           <option value="#63e6be" style="color: #63e6be;">연두색</option>
                           <option value="#a9e34b" style="color: #a9e34b;">초록색</option>
                           <option value="#4d638c" style="color: #4d638c;">남색</option>
                           <option value="#495057" style="color: #495057;">검정색</option>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-desc">설명</label>
                        <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                           id="edit-desc"></textarea>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type">매니저</label> <select
                           class="inputModal" type="text" name="manager" id="manager">
                           <option value="없음">없음</option>
                           
                        </select>
                     </div>
                  </div>
               </div>
               <div class="modal-footer modalBtnContainer-addEvent">
                  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-primary" id="save-event">저장</button>
               </div>
               <div class="modal-footer modalBtnContainer-modifyEvent">
                	<button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                  <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      </form>
      <!-- /.modal -->
      <form action="" name="frm2">
      <!-- 일정 추가 MODAL -->
      <div class="modal fade" tabindex="-1" role="dialog" id="eventModalll">
      <input type="hidden" name="d_id" id="d_id" value="${id}"/>
     	<input type="text" name="m_no" id="m_no" readonly="readonly">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title1"></h4>
               </div>
               <div class="modal-body">
					<label hidden=""></label>
           

                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-title1">일정명</label> <input
                           class="inputModal" type="text" name="edit-title1"
                           id="edit-title1" required="required" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-start1">시작</label> <input
                           class="inputModal" type="text" name="edit-start1"
                           id="edit-start1" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-end1">끝</label> <input
                           class="inputModal" type="text" name="edit-end1" id="edit-end1" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type1">구분</label> <select
                           class="inputModal" type="text" name="edit-type1" id="edit-type1">
                           <option value="매치축구">매치축구</option>
                           <option value="매치풋살">매치풋살</option>
                          <c:if test="${id eq f_id}">
                            <option value="개인매치축구">개인매치축구</option>
                           <option value="개인매치풋살">개인매치풋살</option>
                          </c:if>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-color1">색상</label> <select
                           class="inputModal" name="color1" id="edit-color1">
                           <option value="#D25565" style="color1: #D25565;">빨간색</option>
                           <option value="#9775fa" style="color1: #9775fa;">보라색</option>
                           <option value="#ffa94d" style="color1: #ffa94d;">주황색</option>
                           <option value="#74c0fc" style="color1: #74c0fc;">파란색</option>
                           <option value="#f06595" style="color1: #f06595;">핑크색</option>
                           <option value="#63e6be" style="color1: #63e6be;">연두색</option>
                           <option value="#a9e34b" style="color1: #a9e34b;">초록색</option>
                           <option value="#4d638c" style="color1: #4d638c;">남색</option>
                           <option value="#495057" style="color1: #495057;">검정색</option>
                        </select>
                     </div>
                  </div>
                  <c:if test="${id eq f_id}">
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-mem">최대인원수</label>
                        <input
                           class="inputModal" type="text" name="edit-mem" id="edit-mem" />
                     </div>
                  </div>
                  </c:if>
                   <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-level">레벨</label>
                        <select
                           class="inputModal" type="text" name="edit-level" id="edit-level">
                           <option value="1">1</option>
                           <option value="2">2</option>
                            <option value="3">3</option>
                           <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-price">가격</label> <input
                           class="inputModal" type="text" name="edit-price"
                           id="edit-price" value="${price}" readonly="readonly"/>
                     </div>
                  </div>
            
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-desc">설명</label>
                        <textarea rows="4" cols="50" class="inputModal" name="edit-desc1"
                           id="edit-desc1"></textarea>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="manager1">매니저</label> <select
                           class="inputModal" type="text" name="manager1" id="manager1">
                           <option value="없음">없음</option>
                           <option value="ㅇㅇ">ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</option>
                           <option value="풋살"></option>
                        </select>
                     </div>
                  </div>
               </div>
               <div class="modal-footer modalBtnContainer-addEvent1">
                  <button type="button" class="btn btn-default1" data-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-primary" id="save-event1">저장</button>
               </div>
               <div class="modal-footer modalBtnContainer-modifyEvent1">
                	<button type="button" class="btn btn-danger" id="deleteEvent1">삭제</button>
                  <button type="button" class="btn btn-primary" id="updateEvent1">저장</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      </form>
      <script>
		f_id="${f_id}" 
		id="${sessionStorage.id}"
		</script>
		 ${id}
      ${f_id}
     <div id="result"></div>
      <div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 경기예약일정
         </div>
         
         <div class="card-body">
            <div class="table-responsive">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                     <tr>
                     	<th>제목</th>
                        <th>경기시간</th>
                        <th>경기예약자</th>
                        <th>내용</th>
                        <th>진행매니저</th>
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                     	<th>제목</th>
                        <th>경기시간</th>
                        <th>경기예약자</th>
                        <th>내용</th>
                        <th>진행매니저</th>
                     </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach var="f" items="${list}">
                     <tr>
                        <td>${f.title}</td>
                        <td>${f.start}~${f.end}</td>
                        <td>${f.id}</td>
                        <td>${f.description}</td>
                        <td>${f._id}</td> 
                     </tr>
                     
                    </c:forEach>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <!-- /.container -->
		
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/moment.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/fullcalendar.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/ko.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/select2.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/vendor/js/bootstrap-datetimepicker.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/main.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/addEvent.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/editEvent.js"></script>
      <script src="${pageContext.request.contextPath}/resources/hyeongjun/calander/js/etcSetting.js"></script>
      
      <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
      <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
      <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>

</html>