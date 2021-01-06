<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.inser{
padding : 5px;
}
.form-floating{
padding-bottom:5px;

}
.form-control{
height : calc(4rem + 2px)
}
</style>
</head>
<body>
<form class="inser" action="sendapply" method="post">
	<div class="form-floating">
  <input  class="form-control" name="id" placeholder="Leave" id="floatingTextarea" readonly value="${sessionScope.id }">
  <label for="floatingTextarea">Id</label>
</div>
	<div class="form-floating">
  <input  class="form-control" name="name" placeholder="Leave" id="floatingTextarea" readonly value="${member.name }">
  <label for="floatingTextarea">이름</label>
</div>
	<div class="form-floating">
  <input  class="form-control" name="gender" placeholder="Leave" id="floatingTextarea" readonly value="${member.gender }">
  <label for="floatingTextarea">성별</label>
</div>
	<div class="form-floating">
  <input  class="form-control" name="pnum" placeholder="Leave" id="floatingTextarea" readonly value="${member.pnum }">
  <label for="floatingTextarea">휴대폰 번호</label>
</div>
	<div class="form-floating">
  <input  class="form-control" name="birth" placeholder="Leave" id="floatingTextarea" readonly value="${member.birth }">
  <label for="floatingTextarea">생일</label>
</div>
	<div class="form-floating">
  <textarea class="form-control" name="comm" placeholder="Leave" id="floatingTextarea2" style="height: 100px;"></textarea>
  <label for="floatingTextarea">소개</label>
</div>
	<div align="center">
	<button  style="margin : 20px; padding:10px; background-color:#08298A; color:white;"  >신청하기</button>
</div>
</form>
</body>
</html>