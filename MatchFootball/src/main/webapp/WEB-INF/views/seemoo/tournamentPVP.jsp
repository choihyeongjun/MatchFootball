<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong/tournamentPVP/bracket.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dong/tournamentPVP/easyMaker.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</head>
<style>
.noClick {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-radius: 5px 5px 0 0;
	font-size: 12px;
	background: #f5f5f5;
	color: #000;
	font-size: 15px;
}

.click {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-radius: 5px 5px 0 0;
	font-size: 12px;
	background: #4bb8e6;
	z-index: 10;
	font-size: 15px;
}

.noClickdown {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-top: 0 none;
	border-radius: 0 0 5px 5px;
	font-size: 12px;
	background: #f5f5f5;
	font-size: 15px;
}

.clickdown {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-top: 0 none;
	border-radius: 0 0 5px 5px;
	font-size: 12px;
	background: #4bb8e6;
	z-index: 10;
	font-size: 15px;
}
.noClick2 {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-radius: 5px 5px 0 0;
	font-size: 12px;
	background: #f5f5f5;
	color: #000;
	font-size: 15px;
}

.click2 {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-radius: 5px 5px 0 0;
	font-size: 12px;
	background: #4bb8e6;
	z-index: 10;
	font-size: 15px;
}

.noClickdown2 {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-top: 0 none;
	border-radius: 0 0 5px 5px;
	font-size: 12px;
	background: #f5f5f5;
	font-size: 15px;
}

.clickdown2 {
	display: block;
	width: 188px;
	border: 1px solid #002541;
	border-top: 0 none;
	border-radius: 0 0 5px 5px;
	font-size: 12px;
	background: #4bb8e6;
	z-index: 10;
	font-size: 15px;
}
.match_g01 .match_list.win .line_sty01.on {
	border-color: #137eaa;
}

.match_g01 .match_list.win .line_sty02_01.on {
	border-color:  #137eaa;
}

.match_g01 .match_list.win .line_sty02_02.on {
	border-color:  #137eaa;
}

.match_g01 .match_list.win .line_sty03.on {
	border-color: #137eaa;
}

.match_g01 .match_list.win .line_sty04.on {
	border-color:  #137eaa;
}

.match_g01 .match_list.win .line_sty05.on {
	border-color:  #137eaa;
}

.match_g01 .match_list.win .line_sty_L.on {
	border-color:  #137eaa;
}

</style>
<script>
	var link = [[],['01','04','02_01'],['05','01', '02_01']]
	var link2 = [[],['04','03','02_02'],['05','03', '02_02']]
	
	$(function() {
		$(".noClick").on('click', function() {
			$(this).toggleClass('click')
			var s =parseInt( $(this).data('id'))
			for(i=0; i<link[s].length; i++){
				$(this).parent().find(".line_sty"+link[s][i]).toggleClass('on')
			}
			
			
		});

		$(".noClickdown").on('click', function() {
			$(this).toggleClass('clickdown')
			var s =parseInt( $(this).data('id'))
			for(i=0; i<link[s].length; i++){
				$(this).parent().find(".line_sty"+link[s][i]).toggleClass('on')
			}
		});
		
		$(".noClick2").on('click', function() {
			$(this).toggleClass('click2')
			var s =parseInt( $(this).data('id'))
			for(i=0; i<link2[s].length; i++){
				$(this).parent().find(".line_sty"+link2[s][i]).toggleClass('on')
			}
			
		});
		
		$(".noClickdown2").on('click', function() {
			$(this).toggleClass('clickdown2')
			var s =parseInt( $(this).data('id'))
			for(i=0; i<link2[s].length; i++){
				$(this).parent().find(".line_sty"+link2[s][i]).toggleClass('on')
			}
		});
	})
	

</script>
<body style="background: white;">
	<div class="bracket_overflow" style="overflow: visible; margin-bottom: 270px; padding-left: 500px; padding-top: 100px" align="center">
		<div class="match_list_outer" id="bracket_capture">
			<div id="loser_players" class="team_player_1"></div>
			<div id="team_players" class="team_player_1">
				<div class="match01 round_group">
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>01</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick" data-id="1" data-seq="1">
									<div style="height: 25px">
										<p>${tournamentPVP[0].t_name }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="2">
									<div style="height: 25px">
										<p>${tournamentPVP[1].t_name }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span> <span
									class="line_sty02_01"></span> <span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01">
							<p class="bracket_num">
								#<em>02</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="3">
									<div style="height: 25px" >
										<p>${tournamentPVP[2].t_name }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="4">
									<div style="height: 25px" >
										<p>${tournamentPVP[3].t_name }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span><span
									class="line_sty03"></span><span class="line_sty04"></span><span
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
								<div class="noClick" data-id="1" data-seq="5">
									<div style="height: 25px" >
										<p>${tournamentPVP[4].t_name }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="6">
									<div style="height: 25px" >
										<p>${tournamentPVP[5].t_name }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span><span
									class="line_sty02_01"></span><span class="line_sty04"></span><span
									class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>04</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="7">
									<div style="height: 25px" >
										<p>${tournamentPVP[6].t_name }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="8">
									<div style="height: 25px" >
										<p>${tournamentPVP[7].t_name }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span><span
									class="line_sty03"></span><span class="line_sty04"></span><span
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
								<div class="noClick" data-id="1" data-seq="9">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="10">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span><span
									class="line_sty02_01"></span><span class="line_sty04"></span><span
									class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>06</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="11">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="12">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span><span
									class="line_sty03"></span><span class="line_sty04"></span><span
									class="line_sty05"></span>
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
								<div class="noClick" data-id="1" data-seq="13">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="14">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
							</div>
						</div>
						<div class="champion_box" style="margin-top: -70px;" >
							<p class="txt">WINNER</p>
							<div class="player" data-seq="15">
								<div class="winner">
									<p></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<button type="button">상금 전달</button>
	</div>
</body>
</html>