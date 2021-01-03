<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="resources/css/tournamentInfo/tournament.css">
</head>
<body>
	<div id="main_contents"
		style="margin-left: 500px; margin-top:50px; width: 50%">
		<div class="tournament_view_top">
			<div class="img">
				<img
					src="https://baro-match.co.kr/newsite/../site/_data/on_reservation/1982540371_b5f8280c_2018_ED8FACECB9B4EBA6ACEC8AA4EC9BA8ED8AB8_ED928BEC82B4ED9E88EC96B4EBA19CECA688_ED8FACEC8AA4ED84B0_ECB59CECA285.jpg"
					width="100%" title="">
			</div>

			<div class="info">
				<ul>
					<li class="tit">${tournamentList.title }</li>
					<li class="txt">대회기간 : ${tournamentList.s_date } ~ ${tournamentList.e_date }</li>
					<li class="txt">대회지역 : ${tournamentList.location }</li>
					<li class="txt">신청현황 : ${tournamentList.apply } / ${tournamentList.t_max }</li>
				</ul>
			</div>
		</div>

		<button type="button">참가하기</button>

		<div class="tournament_view_cont">
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;">풋살
						좋아하는 중학생들의 축제,</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;">전국
						6개지역에서 펼쳐지는 포카리스웨트와 함께하는 FUTSAL HEROES 2018!</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><u>*접수기간
							: 2018년 4월 2일 (월) ~4월 27일 (금)</u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><u><br></u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;">*대회에
						참여 하지 않더라고 미즈노 풋살화, 문화상품권, 포카리스웨트 상품 등</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;">다양한
						선물을 받을 수 있는 기회도 있으니 아래 링크에서 확인해보세요!<font face="dotum"><span
							style="font-family:" 나눔스퀘어="" bold";="" font-size:="" 16pt;"=""><font
								face="dotum"><span style="font-family:" 나눔스퀘어=""
									bold";="" font-size:="" 16pt;"=""><br></span></font></span></font>
				</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<span style="font-size: 10pt;"><a
					href="http://pocarisweat.co.kr/" target="_blank"
					style="font-size: 21.3333px;" data-fade="not_fade">http://pocarisweat.co.kr/</a></span>
			</p>
	</div>
	</div>
	
</body>
</html>