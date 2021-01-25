<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>용병 초대 리스트</title>

<style>
footer {
   position: fixed;
   left: 0px;
   bottom: 0px;
   width: 100%;
   background: grey;   
   color: white;
}
.lili a { color: white; }
#modal {
   display: none;
   position: relative;
   width: 100%;
   height: 100%;
   z-index: 1;
}

#modal h2 {
   margin: 0;
}

#modal button {
   display: inline-block;
   width: 100px;
   margin-left: calc(100% - 100px - 10px);
}

#modal .modal_content {
   width: 300px;
   margin: 100px auto;
   padding: 20px 10px;
   background: #fff;
   border: 2px solid #666;
}

#modal .modal_layer {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   z-index: -1;
}
.close {
	border: 0;
}
</style>
<script>
   $(function() {
      memberlist();
      inviteSelect();
      
   });

   function inviteSelect() {
      $('body').on('click', '#btnSelect', function() {
         $('#dd').empty();
         var userId = $(this).closest('tr').find('#hidden_userId').val();
         var c_id='<%=(String)session.getAttribute("id")%>';
         console.log(c_id);
         console.log(userId);
         $.ajax({
            url : "bollowsearch/ajax",
            type : 'GET',
            data : {
               c_id:c_id,
               title:$('#title').val(),
               comm:$('#comm').val(),
               m_no:$('#select').val(),
               r_id : userId,
               id:userId
               
            },
            dataType : 'json',
            error : function(xhr, status, msg) {
               alert("상태값 :" + status + " Http에러메시지 :" + msg);
            },
            success : function(data){
               for(var i=0;i<data.length;i++){
                  var tag="<tr>"+
                  "<td>"+data[i].r_id+"</td>"
                  +"<td>"+data[i].s_date+"</td>"
                  +"<td>"+data[i].title+"</td>"
                  +"<td>"+data[i].comm+"</td>"
                  +"<td>"+data[i].check1+"</td>"
                  +"</tr>"
                  $("#dd").append(tag);
               }
            }
         });
      });
   }//inviteselect
   //document.querySelector('#dd > tr > td').innerHTML = 111

   function invitelist(data) {
      
   };
   function memberlist() {
      $.ajax({
         url : "bollow/ajax",
         type : 'GET',
         dataType : 'json',
         error : function(xhr, status, msg) {
            alert("상태값 :" + status + "에러" + msg);
         },
         success : memberListResult
      });
   }//memberlist
   function memberListResult(data) {
      $('.search').empty();
      $.each(data, function(idx, item) {
    	  $('.search').append('<tr><td><b>포지션</b></td><td>'+item.pos+'</td><td><b>실력</b></td><td>'+item.lv+'</td>'
			                + '<td><b>아이디</b></td><td>'+item.id+'</td>'
			                + '<input type=\'hidden\' id=\'hidden_userId\' value=\''+item.id+'\'>'
			                + '<td rowspan="3" style="border-bottom: 3px solid #dfe2e6;"><button type="button" class="btn btn-primary" id=\'btnSelect\' >초대하기</button></td></tr>'
			                + '<tr><td><b>이름</b></td><td>'+item.name+'</td><td><b>성별</b></td><td>'+item.gender+'</td>'
			                + '<td><b>연락처</b></td><td>'+item.pnum+'</td></tr>'
			                + '<tr><td style="border-bottom: 3px solid #dfe2e6;"><b>주소</b></td><td colspan="5" style="border-bottom: 3px solid #dfe2e6;">'+item.location1+'</td></tr>');
      });
    	  
//    	 $('<tr>')
//            .append($('<td>').html(item.id))
//            .append($('<td>').html(item.name))
//            .append($('<td>').html(item.gender))
//            .append($('<td>').html(item.location1))
//            .append($('<td>').html(item.pnum))
//            .append($('<td>').html(item.manner))
//            .append($('<td>').html(item.lv))
//            .append($('<td>').html(item.pos))
//            .append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
//            .append($('<td>').html('<button type="button" class="btn btn-primary" id=\'btnSelect\'>초대하기</button>'))
//            .appendTo('#search');
        
           
      $('#dataTable').DataTable();
   };
</script>

</head>

<body>
<section class="home" style="padding-bottom: 110px;">
	<div class="container">
      <div class="card mb-4" style="width: 55%; float: left; margin-left: 10px; margin-top: 10px;">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 용병참가 목록
            <div style="float: right;">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="modal_opne_btn">초대장 작성하기</button>
         </div>
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left; height: 650px;">
                  <table class="table table-bordered" id="dataTable">
                     <thead style="text-align: center;">
                        <tr>
		                     <th colspan="6" style="border-top: 3px solid #dfe2e6; border-bottom: 3px solid #dfe2e6;">용병목록</th>
		                     <th style="border-top: 3px solid #dfe2e6; border-bottom: 3px solid #dfe2e6;">초대</th>
		                </tr>
                     </thead>
                     <tbody class="search" style="text-align: center;">
                       
                  </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
      
      <div class="card mb-4" style="float: right; width: 42%; margin-right: 10px; margin-top: 10px;">
         <div class="card-header">
            <i class="fas fa-table mr-1"></i> 초대된 목록
         </div>
         <div class="card-body">
            <div class="table-responsive">
               <div class="container" style="float: left;">
                  <table class="table table-bordered">
                     <thead align="center">
                        <tr class="tr1">
		                     <th>아이디</th>
		                     <th>초대날짜</th>
		                     <th>제목</th>
		                     <th>내용</th>
		                     <th>초대 여부</th>
		                </tr>
                     </thead>
                     <tbody id="dd"  style="text-align: center;">
            </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
      
   <div class="modal fade" id="myModal">
      <div class="modal-dialog">
         <div class="modal-content" style="width: 117%;">

            <div class="modal-header" style="width: 585px;">
               <h3 class="modal-title" style="margin-left: 25px;">초대장</h3>
            </div>
               <!-- Modal body -->
               <div class="modal-body" style="height: 300px">
	            <form method="get" action="${pageContext.request.contextPath}/bollowsearch/ajax">
                  <table style="margin: 0% 4% 0% 4%">
                     <tr>
                        <td>제목</td>
                        <td><input id="title" name="title" type="text" style="margin: 1%"></td>
                        <br>
                     </tr>
                     <tr>
                        <td>내용</td>
                        <td><textarea id="comm" name="comm" type="text" rows="4" cols="50" style="margin: 1%; resize: none;"></textarea></td>
                     </tr>
                     <tr>
                        <td>매치선택</td>
                        <td>
	                        <select id="select" title="경기를선택하세요">
		                        <c:forEach items="${matchlist}" var="m">
		                        	<option value="${m.m_no}">${m.m_date},${m.f_name}</option>
		                        </c:forEach>
	                        </select>
                        </td>
                     </tr>
                  </table>
	            </form>
               </div>

            <!-- Modal footer -->
            <div class="modal-footer">
               <button type="submit" class="btn btn-danger" data-dismiss="modal">저장</button>
               <input type="reset" class="btn btn-danger" data-dismiss="modal" value="닫기"></button>
            </div>
         </div>
      </div>
   </div>
	</div>
</section>
   
   <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="${pageContext.request.contextPath}/resources/seemoo/assets/demo/datatables-demo.js"></script>
   
</body>
</html>