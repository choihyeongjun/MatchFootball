<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
footer {
   position: fixed;
   left: 0px;
   bottom: 0px;
   width: 100%;
   background: grey;
   color: white;
}
.contentWrapper {
	max-width: 1024px;
	margin: 0 auto;
	overflow: auto;
}
#main_contents {
    margin: 0 0 70px 0;
    min-height: 500px;
    font-size: 1.05em;
}
.tournament_wrap li .wrap {
    padding: 0 10px;
     list-style:none;
}
.tournament_wrap li {
    float: left;
    width: 33.3%;
    margin-bottom: 20px;
     list-style:none;
}
.tournament_img {
    height: 230px;
    border: 1px solid #e7e7e7;
    border-bottom: 0;
}
.tournament_img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.tournament_info {
    border: 1px solid #e7e7e7;
    padding: 20px 15px;
    text-decoration: none;
}
.tournament_info dl dd {
    color: #737373;
    font-size: 13.65px;
    text-decoration: none;
}
.tournament_info dl dt {
    float: left;
    margin-right: 12px;
    color: #181818;
    background: url(../image/acc01.png) no-repeat 0 8px;
    background-size: 4px;
    text-indent: 10px;
}
.tournament_info .tit {
    color: #2f2f2f;
    font-size: 17px;
    font-weight: bold;
    overflow: hidden;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    white-space: nowrap;
    text-decoration: none;
}
</style>
</head>
<body>
<script>
function noteam(url){
	   if('${sessionScope.t_num}' == ''){
	      alert("토너먼트는 팀에 가입된 사용자만 이용 가능 합니다.")
	   }else{
	      location.href=url
	   }
	}
</script>
<div class="contentWrapper">
	<div id="main_contents">
		<ul class="tournament_wrap">
			<c:forEach items="${tournamentList}" var="tournamentList">
			<li><a
				href="javascript:noteam('tournamentInfo?t_no=${tournamentList.t_no }')"
				data-fade="fade" style="text-decoration:none">
					<div class="wrap">
						<div class="tournament_img">
							<img
								src="images/${tournamentList.img }"
								width="100%">
						</div>

						<div class="tournament_info">
							<p class="tit">${tournamentList.title }</p>
							<dl>
								<dt>대회기간</dt>
								<dd>${tournamentList.s_date } ~ ${tournamentList.e_date }</dd>
							</dl>
							<dl>
								<dt>대회지역</dt>
								<dd>${tournamentList.address }</dd>
							</dl>
							<dl>
								<dt>대회구장</dt>
								<dd>${tournamentList.location }</dd>
							</dl>
							<dl>
								<dt>상금</dt>
								<dd>${tournamentList.t_point }P</dd>
							</dl>
						</div>
					</div>
			</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
</body>
</html>