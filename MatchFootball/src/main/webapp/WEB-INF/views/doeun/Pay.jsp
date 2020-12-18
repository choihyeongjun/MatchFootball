<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Pay</title>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  width: 250px;
  position: fixed;
  left: 0;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: navy;
}

.main {

  margin-left: 300px;
  
}

button{
right: 20;}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
   
<div class="main">
<div class="sidenav">

      <nav id="navbar-example3" class="navbar navbar-light bg-light">
         <a class="navbar-brand" href="#">마이페이지</a><br><br><hr>
         <nav class="nav nav-pills flex-column">
            <a class="nav-link" href="#">내 정보</a><hr> <a
               class="nav-link" href="#">결제 | 쿠폰</a><br>
            <nav class="nav nav-pills flex-column">
               <a class="nav-link ms-3 my-1" href="#item-2-1">포인트 충전</a> <a
                  class="nav-link ms-3 my-1" href="#item-2-2">내 쿠폰</a> <a
                  class="nav-link ms-3 my-1" href="#item-2-3">환전</a>
            </nav><hr>
            <a class="nav-link" href="#item-3">내역</a><br>
            <nav class="nav nav-pills flex-column">
               <a class="nav-link ms-3 my-1" href="#">포인트 사용 내역</a>
                <a   class="nav-link ms-3 my-1" href="#">매치 신청 내역</a>
            </nav><hr>
            <a class="nav-link" href="#item-4">쪽지 | 게시글</a><br>
            <nav class="nav nav-pills flex-column">
               <a class="nav-link ms-3 my-1" href="#">쪽지</a> <a
                  class="nav-link ms-3 my-1" href="#">내가 쓴 게시글</a>
            </nav>
         </nav>
      </nav>
   </div>
   <div data-bs-spy="scroll" data-bs-target="#navbar-example3"
      data-bs-offset="0" tabindex="0">
            
      <h3 id="item-2">결제 | 쿠폰</h3>
      <br>
      
      <h4 id="item-2-1">포인트 결제</h4>
      <div id = "">
      <p>
      <input type="checkbox" id="point1">가격 예시<br>
      <input type="checkbox" id="point2">입니다<br>
      <input type="checkbox" id="point3">집에 가고<br>
      <input type="checkbox" id="point4">싶어여<br>
      </p>
      <div align="right"><button type="submit" class="btn btn-primary">결제</button></div>
      </div><hr>
      <h4 id="item-2-2">내 쿠폰</h4>
      <div>
      <p>
      <input type="checkbox" id="cp1" value="">쿠폰1 버튼 오른쪽으로<button type="button" class="btn btn-primary">삭제</button><br>
      <input type="checkbox" id="cp2">쿠폰2 이동 할 줄 아는<button type="button" class="btn btn-primary">삭제</button><br>
      <input type="checkbox" id="cp3">쿠폰3 새럼 구합니다,,<button type="button" class="btn btn-primary">삭제</button><br>
      <input type="checkbox" id="cp4">쿠폰4 절실해여<button type="button" class="btn btn-primary">삭제</button><br>
      </p>
      </div><hr>
      <h4 id="item-2-3">포인트 환전</h4><br>
      <div>
      <p>내 포인트</p>
      <br>
      <p>환전 가능한 포인트</p>
      <div align="right"><button type="button" class="btn btn-primary">환전</button>   </div>
      </div>
   </div>
</div>
</body>
</html>