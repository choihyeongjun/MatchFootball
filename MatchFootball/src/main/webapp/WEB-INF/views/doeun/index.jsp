<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: white;
  overflow-x: hidden;
  padding-top: 20px;
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


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
	<div class="sidenav">
	<br>
		<nav id="navbar-example3" class="navbar navbar-light bg-light">
			<a class="navbar-brand" href="#">마이페이지</a><br><br><hr>
			<br><nav class="nav nav-pills flex-column">
				<a class="nav-link" href="#">내 정보</a><br><hr> <a
					class="nav-link" href="#">결제 | 쿠폰</a><br>
				<nav class="nav nav-pills flex-column">
					<a class="nav-link ms-3 my-1" href="#item-2-1">포인트 충전</a> <a
						class="nav-link ms-3 my-1" href="#item-2-2">내 쿠폰</a> <a
						class="nav-link ms-3 my-1" href="#item-2-3">환전</a>
				</nav><br><hr>
				<a class="nav-link" href="#item-3">내역</a><br>
				<nav class="nav nav-pills flex-column">
					<a class="nav-link ms-3 my-1" href="#">포인트 사용 내역</a>
					 <a	class="nav-link ms-3 my-1" href="#">매치 신청 내역</a>
				</nav><br><hr>
				<a class="nav-link" href="#item-4">쪽지 | 게시글</a><br><br>
				<nav class="nav nav-pills flex-column">
					<a class="nav-link ms-3 my-1" href="#">쪽지</a> <a
						class="nav-link ms-3 my-1" href="#">내가 쓴 게시글</a>
				</nav><br>
			</nav>
		</nav>
	</div>
<div class="main">
	<div align="center" >
		<div align="left" id="MyImg">img</div>
		<div align="right">
		이름
		<input id="myname"><br>
		성별
		<input id="gender">
		</div>
		
	</div>
		
</div>
</body>
</html>