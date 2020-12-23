<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>경기참가내역</title>

<link rel="shortcut icon" href="/heunheuntrip/img/favicon.ico">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	 <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/selectric.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/myStyle.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/colors/blue.css" rel="stylesheet">
<link href="../../../lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../../../lib/aos/aos.css" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" rel="stylesheet">


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>
</head>

<style>
  .mb50 {
    margin-bottom: 10px !important;
  }
  
  .text-success {
      color: #d3d3d3 !important;
  }
  
  .main-title {
    margin-bottom: 15px;
    line-height: 34px;
    color: #777777;
}
</style>

<body>
	<div id="main">
		
		<div class="clearfix"></div>
		<div id="content">
			<div class="container">
				<div class="row justify-content-md-center">
					<div class="col col-lg-12 col-xl-10">
						<div class="row has-sidebar">
							<div class="col-md-5 col-lg-4 col-xl-4 col-sidebar">
								<div id="sidebar" class="sidebar-left">
									<div class="sidebar_inner">
										<div class="agent-detail">
											<div class="text-center">
												<div id='profileimg'></div>
												<h4 class="main-name" style="color: #869E9E; font-weight:bold;"></h4>
											</div>
										</div>
										<div class="list-group no-border list-unstyled">

											<a href="my_profile.html" class="list-group-item"><i
												class="far fa-id-card"></i> 내 프로필</a> <a href="my_password.html"
												class="list-group-item "><i class="fas fa-unlock-alt"></i>
												비밀번호 변경</a> <a href="list.html" class="list-group-item"><i
												class="fas fa-h-square"></i> 예약</a> <a href="bookmark.html"
												class="list-group-item"><i class="fas fa-bookmark"></i>
												찜 관리</a> <a href="review.html" class="list-group-item active"><i
												class="fas fa-sliders-h"></i> 리뷰 관리</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-7 col-lg-8 col-xl-8">
								<div class="page-header bordered">
									<h1>경기내역<small>Review</small></h1>
								</div>
								<button class="btn btn-primary btn-circle" id="to-top">
		<i class="fa fa-angle-up"></i>
	</button>
	<div id='heun-footer'></div>
	<div id="tr-template" type="text/x-handlebars-template">
    <input type="hidden" class="riw-page" data-page={{pageNo}}>
    {{#each list}}
                 <div class="card">
                    <div class="media mt-0">
                          <div class="media-left"> 
                             <img class="media-object rounded-circle" src="/heunheuntrip/app/json/images/down/{{roomPhoto}}.jpeg" width="100" height="100" alt=""> 
                          </div>
                            <div class="media-body row" style="position: relative">
                              <div class="main-riw col-12 col-sm-6 col-md-8" data-photo={{userPhoto}} data-hostphoto={{hostphoto}}>
                               <h6 class="media-heading riw-cont" id="aaa-{{no}}" data-reply="{{reply}}" data-hostname={{hostname}} data-name={{name}}>{{contents}}</h6>
                               <p class="text-muted"><i class="fas fa-map-marker-alt"></i>        {{roomName}}</p>
                               <p class="text-muted">작성일 : {{createdDate}}</p>
                              </div>
                              <div class="riw-btn col-6 col-md-4" data-no={{no}} data-grd={{grd}}>
                               <a href="#" data-toggle="modal" data-target="#leadform" class="reply-complete"></a>
                               <a class="btn btn-link riw-delete" href="#" style="position: absolute; bottom: 0">삭제</a>
                              </div>
                           </div>
                        </div>
                    </div>

  </div>

	<div id="page-template" type="text/x-handlebars-template">
    <nav>
      <ul class="pagination pagination-centered">
          <li class="page-item {{#if disabled}}disabled{{/if}}"><a class="page-link" href="#" onclick="loadList({{n}})">&laquo;&laquo;</a></li>
    
          <li id="prevPage" class="page-item {{#if disabled}}disabled{{/if}}"><a class="page-link" href="#" onclick="loadList({{n}})">&laquo;</a></li>
    
          <li class="page-item {{#if active}}active{{/if}}"><a class="page-link" data-no='{{n}}' href="#" onclick="loadList({{n}})">{{n}}</a></li>
    
          <li id="nextPage" class="page-item {{#if disabled}}disabled{{/if}}"><a  class="page-link" href="#" onclick="loadList({{n}})">&raquo;</a></li>
    
          <li class="page-item {{#if disabled}}disabled{{/if}}"><a class="page-link" href="#" onclick="loadList({{n}})">&raquo;&raquo;</a></li>
    </ul>
    </nav>
    </div>
    
								<div class="card-list"></div>
								<div class="pagination-menu"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>

</html>