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
					<li class="txt">��ȸ�Ⱓ : ${tournamentList.s_date } ~ ${tournamentList.e_date }</li>
					<li class="txt">��ȸ���� : ${tournamentList.location }</li>
					<li class="txt">��û��Ȳ : ${tournamentList.apply } / ${tournamentList.t_max }</li>
				</ul>
			</div>
		</div>

		<button type="button">�����ϱ�</button>

		<div class="tournament_view_cont">
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;">ǲ��
						�����ϴ� ���л����� ����,</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;">����
						6���������� �������� ��ī������Ʈ�� �Բ��ϴ� FUTSAL HEROES 2018!</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><u>*�����Ⱓ
							: 2018�� 4�� 2�� (��) ~4�� 27�� (��)</u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 11pt;"><u><br></u></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;">*��ȸ��
						���� ���� �ʴ���� ����� ǲ��ȭ, ��ȭ��ǰ��, ��ī������Ʈ ��ǰ ��</span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;"><br></span></font>
			</p>
			<p align="center"
				style="list-style: none; font-size: 12px; font-family: dotum;">
				<font face="dotum"><span style="font-size: 10pt;">�پ���
						������ ���� �� �ִ� ��ȸ�� ������ �Ʒ� ��ũ���� Ȯ���غ�����!<font face="dotum"><span
							style="font-family:" ����������="" bold";="" font-size:="" 16pt;"=""><font
								face="dotum"><span style="font-family:" ����������=""
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