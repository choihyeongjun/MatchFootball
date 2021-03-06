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

<style>
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
</style>



<style>
#dataTable_filter { padding-left: 358px; }
#aa {
	position: relative;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    padding-top: .5rem;
    padding-bottom: .5rem;
    margin-top: -27px;
    margin-left: -27px;
    width: 1900px;
    height: 71px
}
.navbar-brand { margin-top: -33px;}
footer { position: fixed; left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }

#a2{   
    position: relative;
    display: -ms-flexbox;
    display: flex;
    flex-direction: column;
    width: 1000px;
    margin-left: -200px;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    outline: 0;
}
.lili a {
    padding: 3px 0 3px 0;
    line-height: 170%;
    margin-left: -23px;
    color: white;
    padding-left: 35px;
}
</style>

</head>

<body>
<section class="home" style="padding-bottom: 110px;">
   <div class="container">
      <!-- ?????? ????????? ???????????? -->
      <div id="contextMenu" class="dropdown clearfix">
         <ul class="dropdown-menu dropNewEvent" role="menu"
            aria-labelledby="dropdownMenu"
            style="display: block; position: static; margin-bottom: 5px;">
            <li><a tabindex="-1" class="dd">????????????</a></li>
            <li><a tabindex="-1" class="aa">????????????</a></li>
             <c:if test="${author eq '??????'}">
            <li><a tabindex="-1" class="match1">?????????</a></li>
            </c:if>
            <c:if test="${id eq f_id}">
             <li><a tabindex="-1" class="match2">????????????</a></li>
             </c:if>
            <li class="divider"></li>
            <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
         </ul>
      </div>

      <div id="wrapper" style="position: sticky;">
         <div id="loading"></div>
         <div id="calendar"></div>
      </div>

	<form action="" name="frm">
	<input type="hidden" name="d_id" id="d_id" value="${id}"/>
      <!-- ?????? ?????? MODAL -->
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
                        <label class="col-xs-4" for="edit-title">?????????</label> <input
                           class="inputModal" type="text" name="edit-title"
                           id="edit-title" required="required" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-start">??????</label> <input
                           class="inputModal" type="text" name="edit-start"
                           id="edit-start" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-end">???</label> <input
                           class="inputModal" type="text" name="edit-end" id="edit-end" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type">??????</label> <select
                           class="inputModal" type="text" name="edit-type" id="edit-type">
                           <option value="????????????">????????????</option>
                           <option value="????????????">????????????</option>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-price">??????</label> <input
                           class="inputModal" type="text" name="edit-price1"
                           id="edit-price1" value="${price}" readonly="readonly"/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-color">??????</label> <select
                           class="inputModal" name="color" id="edit-color">
                           <option value="#D25565" style="color: #D25565;">?????????</option>
                           <option value="#9775fa" style="color: #9775fa;">?????????</option>
                           <option value="#ffa94d" style="color: #ffa94d;">?????????</option>
                           <option value="#74c0fc" style="color: #74c0fc;">?????????</option>
                           <option value="#f06595" style="color: #f06595;">?????????</option>
                           <option value="#63e6be" style="color: #63e6be;">?????????</option>
                           <option value="#a9e34b" style="color: #a9e34b;">?????????</option>
                           <option value="#4d638c" style="color: #4d638c;">??????</option>
                           <option value="#495057" style="color: #495057;">?????????</option>
                        </select>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-desc">??????</label>
                        <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                           id="edit-desc"></textarea>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="coupon">??????</label> <select
                           class="inputModal"  name="coupon" id="coupon">
                           <option value="??????">??????</option>
                        </select>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type">?????????</label> <select
                           class="inputModal" type="text" name="manager" id="manager">
                           <option value="??????">??????</option>
                        </select>
                     </div>
                  </div>
               </div>
               <div class="modal-footer modalBtnContainer-addEvent">
                  <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                  <button type="button" class="btn btn-primary" id="save-event">??????</button>
               </div>
               <div class="modal-footer modalBtnContainer-modifyEvent">
                	<button type="button" class="btn btn-danger" id="deleteEvent">??????</button>
                  <button type="button" class="btn btn-primary" id="updateEvent">??????</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      </form>
      <!-- /.modal -->
      <form action="" name="frm2">
      <!-- ?????? ?????? MODAL -->
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
                        <label class="col-xs-4" for="edit-title1">?????????</label> <input
                           class="inputModal" type="text" name="edit-title1"
                           id="edit-title1" required="required" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-start1">??????</label> <input
                           class="inputModal" type="text" name="edit-start1"
                           id="edit-start1" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-end1">???</label> <input
                           class="inputModal" type="text" name="edit-end1" id="edit-end1" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-type1">??????</label> <select
                           class="inputModal" type="text" name="edit-type1" id="edit-type1">
                           <c:if test="${id ne f_id}">
                           <option value="????????????">???????????????</option>
                           <option value="????????????">???????????????</option>
                           </c:if>
                          <c:if test="${id eq f_id}">
                            <option value="5:5 ??????">5:5 ??????</option>
                           <option value="6:6 ??????">6:6 ??????</option>
                           <option value="??????">??????</option>
                          </c:if>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-color1">??????</label> <select
                           class="inputModal" name="color1" id="edit-color1">
                           <option value="#D25565" style="color1: #D25565;">?????????</option>
                           <option value="#9775fa" style="color1: #9775fa;">?????????</option>
                           <option value="#ffa94d" style="color1: #ffa94d;">?????????</option>
                           <option value="#74c0fc" style="color1: #74c0fc;">?????????</option>
                           <option value="#f06595" style="color1: #f06595;">?????????</option>
                           <option value="#63e6be" style="color1: #63e6be;">?????????</option>
                           <option value="#a9e34b" style="color1: #a9e34b;">?????????</option>
                           <option value="#4d638c" style="color1: #4d638c;">??????</option>
                           <option value="#495057" style="color1: #495057;">?????????</option>
                        </select>
                     </div>
                  </div>
                  <c:if test="${id eq f_id}">
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-mem">???????????????</label>
                        <input
                           class="inputModal" type="text" name="edit-mem" id="edit-mem" />
                     </div>
                  </div>
                  </c:if>
                  <c:if test="${id ne f_id}">
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-mem">???????????????</label>
                        <input
                           class="inputModal" type="text" name="edit-mem" id="edit-mem" />
                     </div>
                  </div>
                  </c:if>
                   <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-level">??????</label>
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
                        <label class="col-xs-4" for="edit-price">??????</label> <input
                           class="inputModal" type="text" name="edit-price"
                           id="edit-price" value="${price}" readonly="readonly"/>
                     </div>
                  </div>
            		<div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="coupon">??????</label> <select
                           class="inputModal"  name="coupon1" id="coupon1">
                           <option value="??????">??????</option>
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="edit-desc">??????</label>
                        <textarea rows="4" cols="50" class="inputModal" name="edit-desc1"
                           id="edit-desc1"></textarea>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-xs-12">
                        <label class="col-xs-4" for="manager1">?????????</label> <select
                           class="inputModal" type="text" name="manager1" id="manager1">
                           <option value="??????">??????</option>
                           
                        </select>
                     </div>
                  </div>
               </div>
               <div class="modal-footer modalBtnContainer-addEvent1">
                  <button type="button" class="btn btn-default1" data-dismiss="modal">??????</button>
                  <button type="button" class="btn btn-primary" id="save-event1">??????</button>
               </div>
               <div class="modal-footer modalBtnContainer-modifyEvent1">
                	<button type="button" class="btn btn-danger" id="deleteEvent1">??????</button>
                  <button type="button" class="btn btn-primary" id="updateEvent1">??????</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
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
      ${author}
     <div id="result"></div>
      <div class="card mb-4" style="height: 500px;">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> ??????????????????
         </div>
         
         <div class="card-body">
            <div class="table-responsive" style="padding: 10px;">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                     <tr>
                     	<th>??????</th>
                        <th>????????????</th>
                        <th>???????????????</th>
                        <th>??????</th>
                        <th>???????????????</th>
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                     	<th>??????</th>
                        <th>????????????</th>
                        <th>???????????????</th>
                        <th>??????</th>
                        <th>???????????????</th>
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
	</div>
</section>
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