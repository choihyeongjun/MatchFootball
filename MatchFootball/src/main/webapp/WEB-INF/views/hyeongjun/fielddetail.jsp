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
<title>관리자페이지</title>
<link href="${pageContext.request.contextPath}/resources/seemoo/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>


<link href='${pageContext.request.contextPath}/resources/seemoo/packages/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/seemoo/packages/daygrid/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/seemoo/packages/timegrid/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/seemoo/packages/list/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/seemoo/packages/core/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/seemoo/packages/interaction/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/seemoo/packages/daygrid/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/seemoo/packages/timegrid/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/seemoo/packages/list/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendarInteraction.Draggable

    /* initialize the external events
    -----------------------------------------------------------------*/

    var containerEl = document.getElementById('external-events-list');
    new Draggable(containerEl, {
      itemSelector: '.fc-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText.trim()
        }
      }
    });


    var calendarEl = document.getElementById('calendar');
    var calendar = new Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar
      drop: function(arg) {
        // is the "remove after drop" checkbox checked?
        if (document.getElementById('drop-remove').checked) {
          // if so, remove the element from the "Draggable Events" list
          arg.draggedEl.parentNode.removeChild(arg.draggedEl);
        }
      }
    });
    calendar.render();

  });

</script>
<style>

  body {
    margin-top: 40px;
    font-size: 14px;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
  }

  #wrap {
    width: 1100px;
    margin: 0 auto;
  }

  #external-events {
    float: right;
    width: 150px;
    padding: 0 10px;
    border: 1px solid #ccc;
    background: #eee;
    text-align: left;
  }

  #external-events h4 {
    font-size: 16px;
    margin-top: 0;
    padding-top: 1em;
  }

  #external-events .fc-event {
    margin: 10px 0;
    cursor: pointer;
  }

  #external-events p {
    margin: 1.5em 0;
    font-size: 11px;
    color: #666;
  }

  #external-events p input {
    margin: 0;
    vertical-align: middle;
  }

  #calendar {
    float: left;
    width: 900px;
    
  }

</style>

</head>
<body>
<div id="layoutSidenav_content">
       <div id='wrap'>

          <div id='external-events'>
               <h4>일정표</h4>

            <div id='external-events-list'>
                 <div class='fc-event'>토너먼트</div>
                 <div class='fc-event'>풋살시합</div>
               <div class='fc-event'>축구시합</div>
            </div>

            <p>
                 <input type='checkbox' id='drop-remove' />
                 <label for='drop-remove'>remove after drop</label>
             </p>
       </div>

          <div id='calendar'></div>

          <div style='clear:both'></div>
        
        
        <div class="card mb-4">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 경기일정
                  </div>
                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                           <thead>
                              <tr>
                                 <th>경기날짜</th>
                                 <th>경기시간</th>
                                 <th>경기장</th>
                                 <th>진행매니저</th>
                                 <th>경기현황</th>
                              </tr>
                           </thead>
                           <tfoot>
                              <tr>
                                 <th>경기날짜</th>
                                 <th>경기시간</th>
                                 <th>경기장</th>
                                 <th>진행매니저</th>
                                 <th>경기현황</th>
                              </tr>
                           </tfoot>
                           <tbody>
                              <tr>
                                 <td>2020.01.01</td>
                                 <td>성준배토너먼트 현황</td>
                                 <td>최행배</td>
                                 <td>2020.01.01</td>
                                 <td>10</td>
                              </tr>
                              <tr>
                                 <td>2</td>
                                 <td>도은이배리그시작</td>
                                 <td>김도은</td>
                                 <td>2020.01.01</td>
                                 <td>10</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/js/scripts.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/chart-area-demo.js"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/chart-bar-demo.js"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
</body>
</html>