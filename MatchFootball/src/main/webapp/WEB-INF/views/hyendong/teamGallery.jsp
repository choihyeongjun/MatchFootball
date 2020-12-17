<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.gallery:hover {
	border: 1px solid #777;
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}

* {
	box-sizing: border-box;
}

.responsive {
	padding: 0 6px;
	float: left;
	width: 24.99999%;
}

@media only screen and (max-width: 700px) {
	.responsive {
		width: 49.99999%;
		margin: 6px 0;
	}
}

@media only screen and (max-width: 500px) {
	.responsive {
		width: 100%;
	}
}

.clearfix:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>ÆÀ °¶·¯¸®</h1>
		</div>
		<hr />
	</div>
	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" alt="Cinque Terre" width="250" height="250" style="border-radius : 70px;">
			</a>
		</div>
	</div>


	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" alt="Forest" width="250" height="250" style="border-radius : 70px;">
			</a>
		</div>
	</div>

	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" alt="Northern Lights" width="250"
				height="250" style="border-radius : 70px;">
			</a>
		</div>
	</div>

	<div class="responsive">
		<div class="gallery">
			<a target="_blank" href="resources/to.png"> <img
				src="resources/to.png" alt="Mountains" width="250" height="250" style="border-radius : 70px;">
			</a>
		</div>
	</div>

</body>
</html>