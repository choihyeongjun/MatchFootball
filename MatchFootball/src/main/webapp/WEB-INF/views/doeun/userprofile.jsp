   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <!DOCTYPE html>
   <html>
   <head>
   
   <meta charset="UTF-8">
   <title>My Page</title>
   
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
   <!-- <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>-->
   
   <style>
   footer {  left: 0px; bottom: 0px; width: 100%; background: grey; color: white; }
   </style>
   </head>
   <body>
      <div id="main">
         <div id="content">
            <div class="container">
               <div class="row">
                  <jsp:include page="Mybar.jsp"></jsp:include>
                  <div class="col-md-7 col-lg-8 col-xl-8">
                  <div class="page-header bordered">
                        <h1 id="item-2">
                           내 프로필<small>my profile</small>
                        </h1>
                     </div>
                     <div class="row gutters-sm">
                     <br>
                        <div class="col-md-5 mb-3">
                           <div class="card" style="height:525px;">
                              <div class="card-body">
                                 <div class="d-flex flex-column align-items-center text-center">
                                    <br> <img id="img" name="img" src="${pageContext.request.contextPath}/images/${mb.img}"
												class="rounded-circle" width="150" style="height: 200px; width: 200px; border: none" />
                                    <div class="mt-3">
                                    <br>
                                       <h4 style="font-family: 'NanumSquareRound';">${mb.name}</h4>
                                    <br>   <p class="text-secondary mb-1">활동 지역 : ${mb.location2}
                                    <br>   포지션 : ${mb.pos} <br>연령대 : ${kage}</p>
                                    <br>   <a href="userupdate"><button class="btn btn-primary">수정</button>
                                       </a>
                                       <button class="btn btn-outline-primary" onclick="location.href='../message'">Message</button>
                                       <br>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-7">
                           <div class="card mb-3">
                              <div class="card-body">
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <a class="mb-0">성별</a>
                                    </div>
                                    <div class="col-sm-9 text-secondary">${mb.gender}</div>
                                 </div>
                                 <hr>
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <a class="mb-0">주소</a>
                                    </div>
                                    <div class="col-sm-9 text-secondary">${mb.location1}</div>
                                 </div>
                                 <hr>
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <a class="mb-0">Email</a>
                                    </div>
                                    <div class="col-sm-9 text-secondary">${mb.email}</div>
                                 </div>
                                 <hr>
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <a class="mb-0">Phone</a>
                                    </div>
                                    <div class="col-sm-9 text-secondary">${mb.pnum}</div>
                                 </div>
                                 <hr>
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <a class="mb-0">Helper</a>
                                    </div>
                                    <div class="col-sm-9 text-secondary">${mb.author2}</div>
                                 </div>
                              </div>
                           </div>
                           <div class="row gutters-sm">
                              <div>
                                 <div class="card char mb-3">
                                    <div class="card-body">
                                       <a class="d-flex align-items-center mb-3"> <i
                                          class="material-icons text-info mr-2">assignment</i>경기 승률
                                       </a> 
                                       <small>매너점수</small>
                                       <div class="progress mb-3" style="height: 5px">
                                          <div class="progress-bar bg-primary" role="progressbar" id="manner"
                                             style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                       </div>
                                       <small>실력</small>
                                       <div class="progress mb-3" style="height: 5px">
                                          <div class="progress-bar bg-primary" role="progressbar" id="lv"
                                             style="width: 72%" aria-valuenow="72" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                       </div>
                                       <small></small>
                                    </div>
                                 </div>
                              </div>
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