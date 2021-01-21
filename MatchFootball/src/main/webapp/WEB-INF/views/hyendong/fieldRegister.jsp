<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap -->
        <link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- font awesome -->
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Custom style -->
        <link rel="stylesheet" href="../plugin/bootstrap/css/style.css" media="screen" title="no title" charset="utf-8">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="../config/js/join.js"></script>
    </head>
    <body>
    	<div style="padding-bottom: 250px">
        <article class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                <h3>구장 관리자 회원가입</h3>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form action="fieldRegisterr" method="post">
                    <div class="form-group">
                        <label for="inputName">Id</label>
                        <input type="text" class="form-control" name="f_id" placeholder="Id를 입력해 주세요">
                    </div><br>
                    <div class="form-group">
                        <label for="inputPassword">비밀번호</label>
                        <input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력해주세요">
                    </div><br>
                    <div class="form-group">
                        <label for="inputPasswordCheck">비밀번호 확인</label>
                        <input type="password" class="form-control" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
                    </div><br>
                     <div class="form-group">
                        <label for="inputMobile">휴대폰 번호</label>
                        <input type="tel" class="form-control" name="pnum" placeholder="휴대폰번호를 입력해 주세요">
                    </div><br>
                    <div class="form-group">
                        <label for="inputPasswordCheck">성별</label><br>
                        <label for="huey">남</label><input type="radio" id="inputPasswordCheck" value="남" name="남">
                        <label for="huey">여</label><input type="radio" id="inputPasswordCheck" value="여" name="여">
                    </div><br>
                    <div class="form-group text-center">
                        <button type="submit" id="join-submit" class="btn btn-primary">회원가입<i class="fa fa-check spaceLeft"></i></button>
                        <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
                    </div>
                </form>
            </div>
        </article>
        </div>
    </body>
</html>