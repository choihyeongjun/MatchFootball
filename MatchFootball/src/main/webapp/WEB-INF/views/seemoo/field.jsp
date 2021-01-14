<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>경기장 페이지</title>

<style type="text/css">
.area_reply {
    width: 100%;
    margin-top: 26px;
    overflow: hidden;
}
</style>

<script type="text/javascript">

</script>

</head>

<body>
	<div class="area_reply">
		<div class="box_reply_info">
			<a href="#rp" onclick="" class="reply_events">
				<p class="item_info">
					댓글 <span class="thema_apply"> <span id="commentCount61_0">0</span>
					</span>
				</p>
			</a>
			<button type="button" class="btn_fold">
				<span class="blind">댓글 접기</span>
			</button>
			<button type="button" class="btn_spread" style="display: none;">
				<span class="blind">댓글 펼치기</span>
			</button>
		</div>

		<div id="entry61Comment">
			<!-- reply_content -->
			<div class="reply_content">
				<button type="button" class="btn_more btn_replymore"
					style="display: none;">이전 댓글 더보기</button>

				<!-- box_comment_list -->
				<div class="box_comment_list"></div>
				<!-- // box_comment_list -->

				<form method="post" action="/comment/add/61" onsubmit="return false"
					style="margin: 0">
					<!-- reply_write -->

					<div class="reply_write">

						<div class="form_content thema_apply">
							<textarea id="comment" name="comment" placeholder="댓글을 입력해주세요."></textarea>
						</div>


						<div class="form_guest">
							<div class="box_inp">
								<div class="inner_inp">
									<input type="text" name="name" value="" title="이름"
										placeholder="이름" class="inp_comment inp_name">
								</div>
							</div>
							<div class="box_inp">
								<div class="inner_inp">
									<input type="password" name="password" value="" title="비밀번호"
										maxlength="12" placeholder="비밀번호"
										class="inp_comment inp_password">
								</div>
							</div>
						</div>


						<div class="form_reg">
							<label><input type="checkbox" name="secret"> 비밀글</label>
						</div>


						<div class="form_reg">
							<button type="button" class="btn_register thema_apply"
								onclick="addComment(this, 61); return false;">등록</button>
						</div>
					</div>
				</form>
				<!-- // reply_write -->


			</div>
			<!-- // reply_content -->
		</div>
		<script type="text/javascript">
			loadedComments[61] = true;
			findFragmentAndHighlight(61)
		</script>
	</div>
</body>
</html>