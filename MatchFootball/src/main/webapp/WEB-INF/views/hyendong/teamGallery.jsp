<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.gallery:hover {
	border: 1px solid #777;
}

.responsive {
	padding: 6px;
	float: left;
	width: 14.99999%;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #1E285A;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
</head>
<body>
	<ul>
	  <li><a href="http://localhost/MatchFootball/teamInfo">ÆÀ Á¤º¸</a></li>
	  <li><a href="http://localhost/MatchFootball/teamGallery">ÆÀ °¶·¯¸®</a></li>
	  <li><a href="http://localhost/MatchFootball/teamNotice">ÆÀ °øÁö</a></li>
	  <li><a href="http://localhost/MatchFootball/#">ÆÀ ÃÊ´ë</a></li>
	  <li><a href="http://localhost/MatchFootball/#">ÆÀ ¸®½ºÆ®</a></li>
	</ul>
	<div align="center">
		<div>
			<h1>ÆÀ °¶·¯¸®</h1>
		</div>
		<hr />
	</div>
	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> 
			<img src="resources/to.png"  width="270" height="270" style="border-radius : 80px">
			</a>
		</div>
	</div>


	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" width="270" height="270" style="border-radius : 80px">
			</a>
		</div>
	</div>

	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" width="270" height="270" style="border-radius : 80px">
			</a>
		</div>
	</div>

	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" width="270" height="270" style="border-radius : 80px">
			</a>
		</div>
	</div>

</body>
</html>