<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>공지사항 페이지</title>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/json.min.js"></script>

<script>
$(function(){
	noticeList();

	noticeSelect();
	
	noticeDelete();
	
	noticeInsert();

	//noticeUpdate();
	
	//init();
});

/* //초기화
function init() {
	//초기화 버튼 클릭
	$('#btnInit').on('click',function(){
		$('#form1').each(function(){
			this.reset();
		});
	});
}//init */

//사용자 삭제 요청
function noticeDelete() {
	//삭제 버튼 클릭
	$('body').on('click','#btnDelete',function(){
		var n_no = $(this).closest('tr').find('#hidden_userId').val();
		var result = confirm("글번호 " + n_no +" 사용자를 정말로 삭제하시겠습니까?");
		if(result) {
			$.ajax({
				url:'${pageContext.request.contextPath}/noticedelete/'+n_no,  
				type:'DELETE',
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success:function(xhr) {
					console.log(xhr.result);
					noticeList();
				}
			});     
		}//if
	}); //삭제 버튼 클릭
}//noticeDelete

/* //수정 요청
function noticeUpdate() {
	//수정 버튼 클릭
	$('#btnUpdate').on('click',function(){
		var id = $('input:text[name="id"]').val();
		var name = $('input:text[name="name"]').val();
		var password = $('input:text[name="password"]').val();
		var role = $('select[name="role"]').val();		
		$.ajax({ 
		    url: "users", 
		    type: 'PUT', 
		    dataType: 'json', 
		    data: JSON.stringify({ id: id, name:name,password: password, role: role }),
		    contentType: 'application/json',
		    success: function(data) { 
		        userList();
		    },
		    error:function(xhr, status, message) { 
		        alert(" status: "+status+" er:"+message);
		    }
		});
	});//수정 버튼 클릭
}//userUpdate */

//등록 요청
function noticeInsert(){
	//등록 버튼 클릭
	$('#btnInsert').on('click',function(){
		$("#form1")
		$.ajax({ 
		    url: "${pageContext.request.contextPath}/noticeinsert",  
		    type: 'POST',  
		    dataType: 'json', 
		    //data: JSON.stringify({ id: id, name:name,password: password, role: role }),
		    data : $("#form1").serialize(),	
		    success: function(response) {
		    	if(response == true) {
		    		alert('등록 되었습니다.');
		    		noticeList();
		    	}
		    }, 
		    error:function(xhr, status, message) { 
		        alert(" status: "+status+" er:"+message);
		    } 
		 });  
	});//등록 버튼 클릭
}//userInsert

//사용자 목록 조회 요청
function noticeList() {
	$.ajax({
		url:'../../noticewrite/ajax',
		type:'GET',
		//contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :" + status + " Http에러메시지 :"+msg);
		},
		success:noticeListResult
	});
}//noticeList

//조회 요청
function noticeSelect() {
	//조회 버튼 클릭
	$('.body').on('click','#btnSelect',function(){
		var n_no = $(this).closest('tr').find('#hidden_userId').val();
		//특정 사용자 조회
		$.ajax({
			url:'${pageContext.request.contextPath}/noticeselect/'+n_no,
			type:'GET',
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			error:function(xhr,status,msg){
				alert("상태값 :" + status + " Http에러메시지 :"+msg);
			},
			success:noticeSelectResult
		});
	}); //조회 버튼 클릭
}//userSelect

/* //조회 응답
function noticeSelectResult(notice) {
	$('input:text[name="n_title"]').val(user.id);
	$('input:text[name="n_img"]').val(user.name);
	$('input:text[name="n_comm"]').val(user.password);
}//userSelectResult
 */

	//사용자 조회 응답
	function noticeSelectResult(notice) {
		console.log(notice);
		$('input:text[name="n_title"]').val(notice.n_title);
	    $('#la').html(notice.nq_file);
		$('#n_no').val(notice.n_img);
		$('#summernote').summernote('code',notice.n_comm);
	}//nqSelectResult
 
//사용자 목록 조회 응답
function noticeListResult(data) {
	$('#noti').empty();
	$.each(data,function(idx,item){
		$('<tr>')
		.append($('<td>').html(item.n_no))
		.append($('<td>').html(item.n_title))
		.append($('<td>').html(item.id))
		.append($('<td>').html(item.n_date))
		.append($('<td>').html(item.n_check))
		.append($('<td>').html('<button id=\'btnSelect\' class="btn btn-primary">조회</button>'))
		.append($('<td>').html('<button id=\'btnDelete\' class="btn btn-danger">삭제</button>'))
		.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.n_no))
		.appendTo($('#noti'));
	});//each
	$('#dataTable').DataTable()
}//noticeListResult
</script>

<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/seemoo/notice/summernote/css/summernote/summernote-lite.css">

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
</script>

</head>

		<body style="padding-left: 250px; padding-top: 100px">
			<form id="form1" class="form-horizontal">
				<div align="center" id="mdiv" style="width: 100%">
					<table class="table" style="width: 100%">
						<tbody>
							<tr>
								<td align="center" style="width: 20%">제목</td>
								<td><input name="n_title" type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<td align="center" style="width: 20%">첨부파일</td>
								<td><input type="file" name="uploadFile" id="uf" />
									<div style="display: inline-block; position: relative; width: 300px; left: -210px; background: white;">
										<label id="la">선택한 파일 없음</label>
									</div> <input type="hidden" id="n_no" name="n_no"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div align="center">
					<textarea id="summernote" name="n_comm"></textarea><br> 
						<input type="button" class="btn btn-primary" value="등록" id="btnInsert" /> 
						<input type="button" class="btn btn-primary" value="수정" id="btnUpdate" /> 
						<input type="button" class="btn btn btn-danger" value="초기화" id="btnInit" />
				</div>
			</form>

				<!-- 게시글 -->			
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead style="text-align: center;">
								<tr>
									<th>No.</th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
									<th>조회수</th>
									<th>조회</th>
									<th>삭제</th>
								</tr>
						</thead>
				<tbody id="noti" style="text-align: center;"></tbody>
			</table>
		</div>
	</div>
</body>
</html>