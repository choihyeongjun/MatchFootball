<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/teamMenu.css">
<link rel="stylesheet"
	href="resources/css/dong/tournamentPVP/bracket.css">
<link rel="stylesheet"
	href="resources/css/dong/tournamentPVP/easyMaker.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</head>
<style>
.hi {
	background-color: blue;
}
.hi2 {
	background-color: gray;
}
</style>
<script>
$(function(){
	$(".match_list_cont01 l01").on('click', function(){
		$(this).attr('class', 'match_list_cont01 click_on w01')
	});
})

$(function(){
	$(".match_list_cont01 click_on w01").on('click', function(){
		$(this).attr('class', 'match_list_cont01 l01')
	});
})

$(function(){
	$(".hi").on('click', function(){
		$(this).attr('class', 'hi2')
	});
	
	$(".hi2").on('click', function(){
		$(this).attr('class', 'hi')
	});
})
</script>
<body>
	<div class="hi">title0</div>
	<div class="bracket_overflow" style="overflow: visible;" align="center">
		<div class="match_list_outer" id="bracket_capture">
			<div class="round_set_outer">
				<div class="round_set">
					<p class="screen">8강</p>
				</div>
				<div class="round_set">
					<p class="screen">4강</p>
				</div>
				<div class="round_set">
					<p class="screen">FINAL</p>
				</div>
			</div>
			<div id="loser_players" class="team_player_1"></div>
			<div id="team_players" class="team_player_1">
				<div class="match01 round_group">
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>01</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 click_on w01">
									<span>01</span>
									<div>
										<p>팀1&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>02</span>
									<div>
										<p>팀8&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01 on"></span><span
									class="line_sty02_01 on"></span><span class="line_sty04 on"></span><span
									class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01">
							<p class="bracket_num">
								#<em>02</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 click_on w01">
									<span>03</span>
									<div>
										<p>팀4&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>04</span>
									<div>
										<p>팀3&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02 on"></span><span
									class="line_sty03 on"></span><span class="line_sty04 on"></span><span
									class="line_sty05"></span>
							</div>
						</div>
					</div>
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>03</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 click_on w01">
									<span>05</span>
									<div>
										<p>팀5&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>06</span>
									<div>
										<p>팀6&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01 on"></span><span
									class="line_sty02_01 on"></span><span class="line_sty04 on"></span><span
									class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>04</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 click_on w01 w02">
									<span>07</span>
									<div>
										<p>팀7&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>08</span>
									<div>
										<p>팀2&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02 on"></span><span
									class="line_sty03 on"></span><span class="line_sty04 on"></span><span
									class="line_sty05"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="match02 round_group">
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>05</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 click_on w01">
									<span>01</span>
									<div>
										<p>팀1&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>03</span>
									<div>
										<p>팀4&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01 on"></span><span
									class="line_sty02_01 on"></span><span class="line_sty04 on"></span><span
									class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>06</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 l01">
									<span>05</span>
									<div>
										<p>팀5&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 click_on w01 w02">
									<span>07</span>
									<div>
										<p>팀7&nbsp;</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02 on"></span><span
									class="line_sty03 on"></span><span class="line_sty04"></span><span
									class="line_sty05 on"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="match03 round_group last_match">
					<div class="match_g01">
						<div class="match_list win">
							<p class="bracket_num">
								#<em>07</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 l01">
									<span>01</span>
									<div>
										<p>팀1&nbsp;</p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 click_on w02">
									<span>07</span>
									<div>
										<p>팀7&nbsp;</p>
									</div>
									<em></em>
								</div>
							</div>
						</div>
						<div class="match_list match_list_third" style="display: none;">
							<p class="bracket_num">
								#<em>08</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="match_list_cont01 l01">
									<span></span>
									<div>
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="match_list_cont02 l01">
									<span>05</span>
									<div>
										<p>팀5&nbsp;</p>
									</div>
									<em></em>
								</div>
							</div>
							<p class="third_txt">3,4위전</p>
						</div>
						<div class="champion_box" style="margin-top: -70px;">
							<p class="txt">WINNER</p>
							<div class="player">
								<div class="winner">
									<p>팀7&nbsp;</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>