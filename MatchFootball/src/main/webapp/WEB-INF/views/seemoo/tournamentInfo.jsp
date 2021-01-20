<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong1/assets/css/style.css">
<style>
li {
	list-style: none;
}

.info {
	background: rgba(0,0,0,0)
}
.tournament_admin_btn01 {
	display: inline-block;
	line-height: 20px;
	padding: 0 8px;
	color: #fff;
	background: #f98d3e;
	border: 1px solid #f77d31;
	border-radius: 2px;
	font-size: 12px;
} /* 주황색 작은 버튼 */
.tournament_admin_btn02 {
	display: inline-block;
	line-height: 20px;
	padding: 0 8px;
	color: #fff;
	background: #aaa;
	border: 1px solid #999;
	border-radius: 2px;
	font-size: 12px;
} /* 회색 작은버튼 */

/*   비밀번호 찾기 등 작게 뜨는 새창   ======================================================================*/
.newwin_cont {
	padding: 10px;
}

#newwin_title {
	height: 21px;
	background-color: #29a312;
	border-bottom: 3px solid #dedede;
	padding: 8px 0 10px 13px;
	color: #fff;
	font-family: '나눔고딕', NanumGothic;
	font-size: 18px;
	font-weight: bold;
	line-height: 120%;
	margin: 0;
	letter-spacing: -1px;
}

.newwin_cont {
	padding: 15px;
}

.newwin_btn {
	margin: 0 15px;
	text-align: center;
	padding: 15px;
	border-top: 1px solid #dfdfdf;
}

.newwin_input {
	border: 1px solid #cccccc;
	line-height: 120%;
	height: 17px;
	padding: 0 5px;
}

.newwin_table {
	border-collapse: collapse;
	table-layout: fixed;
}

.newwin1 {
	background-color: #ececec;
	text-align: center;
	color: #717171;
	padding: 3px;
	border: solid 1px #cccccc;
	line-height: 120%;
	letter-spacing: -1px;
	font-size: 11px;
}

.newwin2 {
	background-color: #f7f7f7;
	text-align: center;
	color: #818181;
	padding: 3px;
	border: solid 1px #cccccc;
	font-size: 12px;
}

.newwin3 {
	padding: 3px 8px;
	border: solid 1px #cccccc;
	vertical-align: top;
}

.newwin_close {
	text-align: center;
	padding: 5px;
	background-color: #aaa;
}

.newwin_title {
	background-color: #454545;
	height: 40px;
	width: 100%;
}

.newwin_area {
	padding: 15px;
}

.btn_area {
	text-align: center;
}

/* 탭메뉴(지역별일정) */
.tournament_list {
	overflow: hidden;
	border-top: 1px solid #eb3b04;
	border-bottom: 1px solid #ddd;
	padding: 20px 0 20px 20px;
	margin: 10px 0 30px 0;
}

.tournament_list li {
	float: left;
	width: 12%;
	background: url('../image/icon01.gif') no-repeat 4px 6px;
	background-size: 3px;
}

.tournament_list_txt {
	padding: 0 0 0 15px;
	font-size: 1.2em;
	color: #8b8b8b;
	text-align: left;
}

.tournament_list_txt:hover, .tournament_list .tab_on {
	font-weight: bold;
	color: #eb3b04;
	background: url('../image/icon01_on.gif') no-repeat 4px 6px;
	background-size: 3px;
}

/* 리스트 */
.brd_tit {
	height: 52px;
	line-height: 52px;
	background: #f7f7f7;
	border: 1px solid #e1e1e1;
	margin-bottom: 25px;
	text-align: center;
}

.brd_tit .strong {
	font-size: 20px;
	line-height: 100%;
	margin: 0 10px;
}

.brd_tit .prev, .brd_tit .next {
	background: #959999;
	padding: 3px 8px;
}

.brd_tit .prev img, .brd_tit .next img {
	width: 5px;
}

.tournament_wrap {
	overflow: hidden;
}

.tournament_wrap li {
	float: left;
	width: 33.3%;
	margin-bottom: 20px;
}

.tournament_wrap li .wrap {
	padding: 0 10px;
}

.tournament_img {
	height: 230px;
	border: 1px solid #e7e7e7;
	border-bottom: 0;
}

.tournament_img	img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.tournament_info {
	border: 1px solid #e7e7e7;
	padding: 20px 15px;
}

.tournament_info .tit {
	color: #2f2f2f;
	font-size: 17px;
	font-weight: bold;
	margin-bottom: 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	-o-text-overflow: ellipsis;
	white-space: nowrap;
}

.tournament_info dl {
	padding: 5px 0 0 0;
	overflow: hidden;
}

.tournament_info dl dt {
	float: left;
	margin-right: 12px;
	color: #181818;
	background: url('../image/acc01.png') no-repeat 0 8px;
	background-size: 4px;
	text-indent: 10px;
}

.tournament_info dl dd {
	color: #717171;
}

/* 뷰 */
.tournament_view_top {
	overflow: hidden;
	border-top: 1px solid #e7e7e7;
	border-bottom: 1px solid #e7e7e7;
	background: #fafafa;
	margin-bottom: 30px;
}

.tournament_view_top .img {
	float: left;
	width: 40%;
	height: 260px;
}

.tournament_view_top .img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.tournament_view_top .info {
	float: right;
	width: 60%;
}

.tournament_view_top .info ul {
	padding: 30px 25px;
}

.tournament_view_top .info .tit {
	color: #111;
	font-size: 22px;
	line-height: 120%;
	margin-bottom: 10px;
}

.tournament_view_top .info .txt {
	font-size: 15px;
	padding: 7px 0 0 10px;
	color: #4c4c4c;
	background: url('../image/acc01.png') no-repeat 0 15px;
	background-size: 4px;
}

.tournament_view_cont {
	
}

/*	뷰 탭메뉴	*/
.tournament_tabmenu03 {
	min-height: 34px;
	border-top: 2px solid #323232;
	border-bottom: 1px solid #ccc;
	background: #f5f5f5;
}

.tournament_tabmenu03 li {
	float: left;
	margin-left: -1px;
}

.tournament_tabmenu03 li:first-child {
	margin-left: 0;
}

.tournament_tabmenu03 li a {
	display: inline-block;
	zoom: 1;
	*display: inline;
	padding: 0 20px;
	line-height: 34px;
	text-align: center;
	color: #555;
	border: 1px solid #d3d3d3;
	border-bottom: none;
}

.tournament_tabmenu03 li a:hover {
	color: #3f63d5;
}

.tournament_tabmenu03 li a.on {
	font-weight: bold;
	background: #fff;
	color: #000;
	border: 1px solid #d3d3d3;
	border-bottom: 1px solid #fff;
}

.tournament_tabmenu03 li a.on:hover {
	
}

/* Tablet screen 1024 */
@media screen and (max-width:1024px) {
	.tournament_wrap li {
		width: 50%;
	}
	.tournament_view_top {
		margin-bottom: 20px;
	}
}

/* mobie screen 768 */
@media screen and (max-width:768px) {
	.brd_tit {
		line-height: 42px;
		height: 42px;
	}
	.brd_tit .strong {
		font-size: 1.2em;
	}
	.tournament_list_txt {
		font-size: 1.1em;
	}
	.tournament_info .tit {
		font-size: 1.1em;
	}
	.tournament_wrap li .wrap {
		padding: 0 5px;
	}
	.tournament_view_top .img {
		height: 200px;
	}
	.tournament_view_cont img {
		width: 100%;
	}
	.tournament_view_top .info ul {
		padding: 20px;
	}
	.tournament_view_top .info .tit {
		font-size: 1.3em;
		margin-bottom: 5px;
	}
	.tournament_view_top .info .txt {
		font-size: 1em;
	}
}

/* mobie screen 580 */
@media screen and (max-width:580px) {
	.tournament_list {
		padding: 10px 10px 5px 10px;
	}
	.tournament_list li {
		width: 25%;
		padding-bottom: 5px;
	}
	.tournament_wrap li {
		width: 100%;
	}
	.tournament_wrap li .wrap {
		padding: 0;
	}
	.tournament_img {
		height: 100%;
	}
	.tournament_info {
		padding: 15px;
	}
	.tournament_view_top .img {
		float: none;
		width: 100%;
		height: 100%;
	}
	.tournament_view_top .info {
		float: none;
		width: 100%;
		border-top: 1px solid #e7e7e7;
	}
	.tournament_view_top .info ul {
		padding: 15px;
	}
	.tournament_view_top .info .tit {
		font-size: 1.3em;
		font-weight: bold;
	}
	.tournament_view_top .info .txt {
		padding: 5px 0 0 10px;
		background-position: 0 12px;
	}
}

/* mobie screen 480 */
@media screen and (max-width:480px) {
}
</style>
</head>
<body>
	<div id="main_contents"
		style="margin-left: 570px; width: 50%; margin-top: 30px; margin-bottom: 110px; padding-top: 80px">
		<div class="tournament_view_top">
			<div class="img">
				<img
					src="${pageContext.request.contextPath}/images/${tournamentTeam.img}"
					width="100%">
			</div>
			<div class="info">
				<ul>
					<li class="tit">${tournamentTeam.title }</li>
					<li class="txt">대회기간 : ${tournamentTeam.s_date } ~ ${tournamentTeam.e_date }</li>
					<li class="txt">대회지역 : ${tournamentTeam.address }</li>
					<li class="txt">신청현황 : ${tournamentTeam.apply } / ${tournamentTeam.t_max }</li>
					<li class="txt">참 &nbsp;가  &nbsp;비 : 100000 P</li><br>
					<li class="txt">총 &nbsp;&nbsp;상금 : ${tournamentTeam.t_point } P</li>
				</ul>
			</div>
		</div>
		<div align="center">
		<form action="teamTournaInsert" method="post">
			<input type="text" value="${tournamentTeam.t_no }" name="t_no" style="display:none">
			<input type="text" value="${sessionScope.t_num }" name="t_num" style="display:none">
			<input type="text" value="${members.id }" name="id" style="display:none">
			<input type="text" value="${members.point }" name="point" style="display:none">
			<input type="text" value="${tournamentTeam.t_point }" name="t_point" style="display:none">
		</form>
			<input type="submit" class="genric-btn info circle" value="대진표" onclick="location.href='tournamentPVP?t_no=${tournamentTeam.t_no}'"/>
		</div>
		<br>
		<div class="tournament_view_cont">
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">풋살, 축구
						좋아하는 사람들의 축제,</span></font>

			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">대구
						 펼쳐지는 매치 풋살과 함께하는 FUTSAL HEROES 2021!</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"><u>* 대회기간
							: ${tournamentTeam.s_date } ~ ${tournamentTeam.e_date }</u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;"></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 17px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 15pt;">* 참가 포인트는 전체 상금 포인트에 누적됩니다.</span></font>
			</p>
		</div>
	</div>
	
</body>
</html>