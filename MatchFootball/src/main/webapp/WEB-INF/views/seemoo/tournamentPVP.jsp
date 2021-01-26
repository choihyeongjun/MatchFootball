<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong/tournamentPVP/bracket.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dong/tournamentPVP/easyMaker.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
	</script>
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
		border-color: #137eaa;
	}

	.match_g01 .match_list.win .line_sty02_02.on {
		border-color: #137eaa;
	}

	.match_g01 .match_list.win .line_sty03.on {
		border-color: #137eaa;
	}

	.match_g01 .match_list.win .line_sty04.on {
		border-color: #137eaa;
	}

	.match_g01 .match_list.win .line_sty05.on {
		border-color: #137eaa;
	}

	.match_g01 .match_list.win .line_sty_L.on {
		border-color: #137eaa;
	}
	.champion_box .txt {
    line-height: 40px;
    margin-top: 0;
    font-size: 36px;
    font-weight: bold;
    color: #000160;
}

.btn-primary {
    color: #fff;
    background-color: #6c7b89;
    border-color: #ffffff;
}
</style>
<script>
	var link = [
		[],
		['01', '04', '02_01'],
		['05', '01', '02_01']
	]
	var link2 = [
		[],
		['04', '03', '02_02'],
		['05', '03', '02_02']
	]



	$(function () {
		var match_no = '${tournamentPVP[0].t_num }';

		$(".noClick").on('click', function () {

			var $this = $(this);
			var win_team = $this.data('seq');
			var lose_team = win_team % 2 == 1 ? win_team + 1 : win_team - 1;
			var data_title = $(this).parentsUntil('.round_group').parent().data('title');
			win_team = $('#rel_' + win_team).data('num');
			lose_team = $('#rel_' + lose_team).data('num');
			console.log(win_team, lose_team, data_title);

			$.ajax({
				url: '${pageContext.request.contextPath}/tournament_proc',
				data: {
					match_no: match_no,
					win_team: win_team,
					lose_team: lose_team,
					msg: data_title
				},
				success: function (resolve) {
					if (resolve == 'success') {
						// 아래부분 스타일 변경.
						// $('.noClickdown').removeClass('clickdown'); 아래로 변경.
						$this.next().removeClass('clickdown');

						var t = 2;
						for (i = 0; i < link[t].length; i++) {
							$this.parent().find(".line_sty" + link[t][i]).removeClass('on');
						}

						$this.toggleClass('click');
						var s = parseInt($this.data('id'));
						for (i = 0; i < link[s].length; i++) {
							$this.parent().find(".line_sty" + link[s][i]).toggleClass('on');
						}

						settingLocation($this, $this.data('num'));

					} else {
						console.log('cannot update');
					}
				},
				error: function (reject) {
					console.log(reject);
				}
			});

		});

		$(".noClickdown").on('click', function () {

			var $this = $(this);
			var win_team = $this.data('seq');
			var lose_team = win_team % 2 == 1 ? win_team + 1 : win_team - 1;
			var data_title = $(this).parentsUntil('.round_group').parent().data('title');
			win_team = $('#rel_' + win_team).data('num');
			lose_team = $('#rel_' + lose_team).data('num');
			console.log(win_team, lose_team, data_title);

			$.ajax({
				url: '${pageContext.request.contextPath}/tournament_proc',
				data: {
					match_no: match_no,
					win_team: win_team,
					lose_team: lose_team,
					msg: data_title
				},
				success: function (resolve) {
					if (resolve == 'success') {
						// $('.noClick').removeClass('click');
						$this.prev().removeClass('click');

						var t = 1;
						for (i = 0; i < link[t].length; i++) {
							$this.parent().find(".line_sty" + link[t][i]).removeClass('on');
						}

						$this.toggleClass('clickdown')
						var s = parseInt($this.data('id'));
						for (i = 0; i < link[s].length; i++) {
							$this.parent().find(".line_sty" + link[s][i]).toggleClass('on');
						}

						// var v = $(this).find('p').html();
						// $('div[data-seq="9"]').find('p').html(v);
						settingLocation($this, $this.data('num'));

					} else {
						console.log('cannot update');
					}
				},
				error: function (reject) {
					console.log(reject);
				}
			});

		});


		$(".noClick2").on('click', function () {

			var $this = $(this);
			var win_team = $this.data('seq');
			var lose_team = win_team % 2 == 1 ? win_team + 1 : win_team - 1;
			var data_title = $(this).parentsUntil('.round_group').parent().data('title');
			win_team = $('#rel_' + win_team).data('num');
			lose_team = $('#rel_' + lose_team).data('num');
			console.log(win_team, lose_team, data_title);

			$.ajax({
				url: '${pageContext.request.contextPath}/tournament_proc',
				data: {
					match_no: match_no,
					win_team: win_team,
					lose_team: lose_team,
					msg: data_title
				},
				success: function (resolve) {
					if (resolve == 'success') {

						$this.next().removeClass('clickdown2');
						var t = 2;
						for (i = 0; i < link[t].length; i++) {
							$this.parent().find(".line_sty" + link2[t][i]).removeClass('on');
						}

						$this.toggleClass('click2');
						var s = parseInt($this.data('id'))
						for (i = 0; i < link2[s].length; i++) {
							$this.parent().find(".line_sty" + link2[s][i]).toggleClass('on');
						}

						// var v = $(this).find('p').html();
						// $('div[data-seq="10"]').find('p').html(v);
						settingLocation($this, $this.data('num'));
					} else {
						console.log('cannot update');
					}
				},
				error: function (reject) {
					console.log(reject);
				}
			});

		});

		$(".noClickdown2").on('click', function () {

			var $this = $(this);
			var win_team = $this.data('seq');
			var lose_team = win_team % 2 == 1 ? win_team + 1 : win_team - 1;
			var data_title = $(this).parentsUntil('.round_group').parent().data('title');
			win_team = $('#rel_' + win_team).data('num');
			lose_team = $('#rel_' + lose_team).data('num');
			console.log(win_team, lose_team, data_title);

			$.ajax({
				url: '${pageContext.request.contextPath}/tournament_proc',
				data: {
					match_no: match_no,
					win_team: win_team,
					lose_team: lose_team,
					msg: data_title
				},
				success: function (resolve) {
					if (resolve == 'success') {

						$this.prev().removeClass('click2');
						var t = 1;
						for (i = 0; i < link[t].length; i++) {
							$this.parent().find(".line_sty" + link2[t][i]).removeClass('on');
						}

						$this.toggleClass('clickdown2');
						var s = parseInt($this.data('id'))
						for (i = 0; i < link2[s].length; i++) {
							$this.parent().find(".line_sty" + link2[s][i]).toggleClass('on');
						}

						// var v = $(this).find('p').html();
						// $('div[data-seq="10"]').find('p').html(v);
						settingLocation($this, $this.data('num'));
					} else {
						console.log('cannot update');
					}
				},
				error: function (reject) {
					console.log(reject);
				}
			});

		});


		function settingLocation($this, t_num) {
			console.log($this, t_num)
			var seq = $this.data('seq');
			//console.log(seq);
			var dest = 0;
			if (seq == '1' || seq == '2') {
				dest = '9';
			} else if (seq == '3' || seq == '4') {
				dest = '10';
			} else if (seq == '5' || seq == '6') {
				dest = '11';
			} else if (seq == '7' || seq == '8') {
				dest = '12';
			} else if (seq == '9' || seq == '10') {
				dest = '13';
			} else if (seq == '11' || seq == '12') {
				dest = '14';
			} else if (seq == '13' || seq == '14') {
				dest = '15';
			}

			var v = $this.find('p').html();
			//console.log(v);
			$('div[data-seq="' + dest + '"]').find('p').html(v);
			$('div[data-seq="' + dest + '"]').data('num', t_num);
			var data_num = $('div[data-seq="' + dest + '"]').data('num');
			console.log('data_num: ', data_num);
		}
	})
</script>

<body style="background: white;">
	<div class="bracket_overflow"
		style="overflow: visible; margin-bottom: 270px; padding-left: 500px; padding-top: 100px" align="center">
		<div style="font-size: 36px">토너먼트 대진표 관리</div><br>
		<hr>
		<div class="match_list_outer" id="bracket_capture">
			<div id="loser_players" class="team_player_1"></div>
			<div id="team_players" class="team_player_1">
				<!-- match 1번째 -->
				<div class="match01 round_group" data-title='4강'>
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>01</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick" data-id="1" data-seq="1" id="rel_1"
									data-num='${tournamentPVP[0].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[0].t_name } / ${tournamentPVP[0].t_num }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="2" id="rel_2"
									data-num='${tournamentPVP[1].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[1].t_name } / ${tournamentPVP[1].t_num }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span>
								<span class="line_sty02_01"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01">
							<p class="bracket_num">
								#<em>02</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="3" id="rel_3"
									data-num='${tournamentPVP[2].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[2].t_name } / ${tournamentPVP[2].t_num }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="4" id="rel_4"
									data-num='${tournamentPVP[3].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[3].t_name } / ${tournamentPVP[3].t_num }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span>
								<span class="line_sty03"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
					</div>
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>03</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick" data-id="1" data-seq="5" id="rel_5"
									data-num='${tournamentPVP[4].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[4].t_name } / ${tournamentPVP[4].t_num }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="6" id="rel_6"
									data-num='${tournamentPVP[5].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[5].t_name } / ${tournamentPVP[5].t_num }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span>
								<span class="line_sty02_01"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>04</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="7" id="rel_7"
									data-num='${tournamentPVP[6].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[6].t_name } / ${tournamentPVP[6].t_num }</p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="8" id="rel_8"
									data-num='${tournamentPVP[7].t_num }'>
									<div style="height: 25px">
										<p>${tournamentPVP[7].t_name } / ${tournamentPVP[7].t_num }</p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span>
								<span class="line_sty03"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
					</div>
				</div>
				<!-- match2번째 -->
				<div class="match02 round_group" data-title='결승'>
					<div class="match_g01">
						<div class="match_list">
							<p class="bracket_num">
								#<em>05</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick" data-id="1" data-seq="9" id="rel_9" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="10" id="rel_10" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<span class="line_sty01"></span>
								<span class="line_sty02_01"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
						<div class="match_list botton01 botton01_end win">
							<p class="bracket_num">
								#<em>06</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick2" data-id="1" data-seq="11" id="rel_11" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown2" data-id="2" data-seq="12" id="rel_12" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<span class="line_sty02_02"></span>
								<span class="line_sty03"></span>
								<span class="line_sty04"></span>
								<span class="line_sty05"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="match03 round_group last_match" data-title='우승'>
					<div class="match_g01">
						<div class="match_list win">
							<p class="bracket_num">
								#<em>07</em> <span>&gt;</span>
							</p>
							<div class="box_s">
								<div class="noClick" data-id="1" data-seq="13" id="rel_13" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
								<div class="noClickdown" data-id="2" data-seq="14" id="rel_14" data-num="">
									<div style="height: 25px">
										<p></p>
									</div>
									<em></em>
								</div>
							</div>
						</div>
						<div class="champion_box" style="margin-top: -70px; padding-bottom: 20px;">
							<p class="txt" style="color: #6c7b89">WINNER</p>
							<div class="player" data-seq="15" style="background: #6c7b89; border-radius: 3em;">
								<div class="winner">
									<p style="color: white"></p>
								</div>
							</div>
						</div>
					</div>

					<form action="winTournament" method="post" style="padding-top: 150px; padding-right:10px">
						<input type="text" value="${tournamentPVP[3].t_name }" name="t_num" style="display:none">
						<input type="text" value="${tournamentPVP[0].t_no }" name="t_no" style="display:none">
						<div align="right" style="padding-right: 164px">
							<input type="submit" value="상금전달" class="btn btn-primary" style="font-size: 15px">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>