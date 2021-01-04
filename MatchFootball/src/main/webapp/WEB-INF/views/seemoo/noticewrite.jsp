<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script src="${pageContext.request.contextPath}/resources/seemoo/json.min.js"></script>
<script>
	$(function() {
		nqList();

		nqSelect();

		nqDelete();

		nqInsert();

		nqUpdate();

		init();
		
		$("#uf").on('change',function(){
			  if(window.FileReader){

			      var filename = $(this)[0].files[0].name;

			    } else {

			      var filename = $(this).val().split('/').pop().split('\\').pop();

			    }

			  $('#la').text(filename);

			  });
		$("#filter").on('change',function(){
			nqList();
		});
		
	});

	//초기화
	function init() {
		//초기화 버튼 클릭
		$('#btnInit').on('click', function() {
			$('#form1').each(function() {
				this.reset();
				$('.note-editable').html("");
				$('#la').html("선택한 파일 없음");
				alert("초기화되었습니다");
			});
		});
	}//init
	
	//사용자 삭제 요청
	function nqDelete() {
	//삭제 버튼 클릭
	$('body').on('click','#btnDelete',function(){
	var nq_no = $(this).closest('tr').find('#hidden_nq_no').val();
	var result = confirm(nq_no +" 번 글을 정말로 삭제하시겠습니까?");
	if(result) {
	$.ajax({
	url:'../nq/'+nq_no,  
	type:'DELETE',
	contentType:'application/json;charset=utf-8',
	dataType:'json',
	error:function(xhr,status,msg){
	console.log("상태값 :" + status + " Http에러메시지 :"+msg);
	}, success:function(xhr) {
	console.log(xhr.result);
	nqList();
	$('#form1').each(function() {
		alert("삭제되었습니다");
		this.reset();
		$('.note-editable').html("");
		$('#la').html("선택한 파일 없음");
	});
	}
	});      }//if
	}); //삭제 버튼 클릭
	}//nqDelete
	
	//사용자 조회 요청
	function nqSelect() {
		//조회 버튼 클릭
		$('body').on('click', '#btnSelect', function() {
			var nq_no = $(this).closest('tr').find('#hidden_nq_no').val();
			//특정 사용자 조회
			$.ajax({
				url : '../nq/' + nq_no,
				type : 'GET',
				contentType : 'application/json;charset=utf-8',
				dataType : 'json',
				error : function(xhr, status, msg) {
					alert("상태값 :" + status + " Http에러메시지 :" + msg);
				},
				success : nqSelectResult
			});
		}); //조회 버튼 클릭
	}//nqSelect

	//사용자 조회 응답
	function nqSelectResult(nq) {
		console.log(nq);
		
		$('select:text[name="nq_category"]').val(nq.nq_category).prop(
				"selected", true);
		$('input:text[name="nq_title"]').val(nq.nq_title);
	    $('#la').html(nq.nq_file);
		$('#nq_no').val(nq.nq_no);
		$('#summernote').summernote('code',nq.nq_content);
	}//nqSelectResult

	
	//사용자 수정 요청
	function nqUpdate() {
	//수정 버튼 클릭
	
	$('#btnUpdate').on('click',function(){
	var form = $('#form1')[0];
	var formData = new FormData(form);

	$.ajax({ 
	url: "../nq", 
	type: 'PUT', 
	dataType: 'json', 
	data: formData,
	contentType : false,
    processData : false,
	success: function(data) { 
	nqList();
	$('#form1').each(function() {
		this.reset();
		$('.note-editable').html("");
		$('#la').html("선택한 파일 없음");
		alert("수정되었습니다");
	});
	},
	error:function(xhr, status, message) { 
	alert(" status: "+status+" er:"+message);
	}
	});
	});//수정 버튼 클릭
	}//userUpdate
	 
	//사용자 등록 요청
	function nqInsert() {
		//등록 버튼 클릭
		

		$('#btnInsert').on('click', function() {
			var form = $('#form1')[0];
	   		var formData = new FormData(form);
			$.ajax({
				url : "../nq",
				type : 'POST',
				dataType : 'json',
				//data: JSON.stringify({ id: id, name:name,password: password, role: role }),
				data : formData,
				contentType : false,
			    processData : false ,
				success : function(response) {
					if (response.result == true) {
						nqList();
						$('#form1').each(function() {
							this.reset();
							$('.note-editable').html("");
							$('#la').html("선택한 파일 없음");
							alert("등록되었습니다");
						});
					}
				},
				error : function(xhr, status, message) {
					alert("status: " + status + " er:" + message);
				}
			});
		});//등록 버튼 클릭
	}//userInsert

	//사용자 목록 조회 요청
	function nqList() {
		var filter=$("#filter").val()
		$.ajax({
			url : '../nq',
			type : 'GET',
			//contentType:'application/json;charset=utf-8',
			dataType : 'json',
			data: {nq_category : filter},
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + " Http에러메시지 :" + msg);
			},
			success : nqListResult
		});
	}//userList
</script>
<br>

<script src="${pageContext.request.contextPath}/resources/seemoo/summernote/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/seemoo/summernote/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resources/seemoo/summernote/css/summernote/summernote-lite.css">

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
<div id="form1" class="form-horizontal">

	<div align="center" id="mdiv" style="width: 100%">


		<table class="table" style="width: 100%">
			<tbody>
				<tr>
					<td align="center" style="width: 10%">분류</td>
					<td><select name="nq_category">
							<option value="공지사항">공지사항</option>
							<option value="자주묻는 질문" selected>자주묻는 질문</option>
					</select></td>
				</tr>
				<tr>
					<td align="center" style="width: 10%">제목</td>
					<td><input name="nq_title" type="text" style="width: 100%"></td>
				</tr>
				<tr>
					<td align="center" style="width: 10%">첨부파일</td>
					<td><input type="file" name="uploadFile" id="uf"/>
						<div  style="display: inline-block; position:relative; width: 300px; left:-210px; background: white;"><label id="la">선택한 파일 없음</label></div>
						<input type="hidden" id="nq_no" name="nq_no">
					</td>
				</tr>
			</tbody>
		</table>
		
	</div>
	<div align="right">
		 <textarea id="summernote" name="nq_content"></textarea> 
		<br> <input type="button" class="btn btn-primary" value="등록"
			id="btnInsert" /> <input type="button" class="btn btn-primary"
			value="수정" id="btnUpdate" /> <input type="button"
			class="btn btn-primary" value="초기화" id="btnInit" />
	</div>


</div>