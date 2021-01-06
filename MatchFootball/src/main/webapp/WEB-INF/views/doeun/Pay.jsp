<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Pay</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/selectric.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/Magnific-popup.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/myStyle.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/colors/blue.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/my_profile.css">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico|ZCOOL+XiaoWei&display=swap&subset=cyrillic"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- 결제api -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 결제api -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="https://kit.fontawesome.com/e15da187be.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d91f3d18bd10e8cd72b2f2827dea9f7c&libraries=services"></script>
<script type="text/javascript">
        var IMP = window.IMP;
        IMP.init('imp22665146');
	function goTop() {
		$(document).animate({
			scrollTop : 0
		})
	}
	
    $('#charge_kakao').click(function () {
        // getter
        var money = $('input[name="cp_item"]:checked').val();
        console.log(money);

        IMP.request_pay({
            pg: 'kakao',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '주문명 : 주문명 설정',
            amount: money,
            buyer_tel: "${mb.pnum}"
           
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                $.ajax({
                    type: "GET", 
                    url: "/user/mypage/pointcharge", //충전 금액값을 보낼 url 설정
                    data: {
                        "amount" : money
                    },
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="/profile"; //alert창 확인 후 이동할 url 설정
        });
    });

</script>
</head>
<body>
	<form id="MyPayFrm">
		<div id="main" style="height: 850px">
			<div id="content">
				<div class="container">
					<div class="row">
						<jsp:include page="Mybar.jsp"></jsp:include>
						<div class="col-md-7 col-lg-8 col-xl-8 col-sidebar">
							<div class="page-header bordered">
								<h1 id="item-2">
									결제<small>payment</small>
								</h1>
							</div>
							<div>
								<br>

								<h4 id="item-2-1">포인트 결제</h4>
								<br>
								<div>
									<p>
									<table style="width: 100%">
										<tr>
											<td><input type="checkbox" name="cp_item" value="5000"></td>
											<td>5000</td>
											<td>보너스 쿠폰</td>
											<td>\5,000</td>
										</tr>
										<tr>
											<td><input type="checkbox" name="cp_item" value="10000"></td>
											<td>10000</td>
											<td>보너스 쿠폰</td>
											<td>\10,000</td>
										</tr>
										<tr>
											<td><input type="checkbox" name="cp_item" value="15000"></td>
											<td>15000</td>
											<td>보너스 쿠폰</td>
											<td>\15,000</td>
										</tr>

										<tr>
											<td><input type="checkbox" name="cp_item" value="25000"></td>
											<td>25000</td>
											<td>보너스 쿠폰</td>
											<td>\25,000</td>
										</tr>


										<tr>
											<td><input type="checkbox" name="cp_item" value="50000"></td>
											<td>50000</td>
											<td>보너스 쿠폰</td>
											<td>\50,000</td>
										</tr>
									</table>
									<br>
									<p style="color: #ac2925; ">최소 충전금액은
										5,000원이며 최대 충전금액은 50,000원 입니다.</p>
									<div align="right" style="margin-top: ">
										<button type="submit" class="btn btn-primary"
											id="charge_kakao">충 전 하 기</button>
									</div>
								</div>
								<hr>

								<h4 id="item-2-3">포인트 환전</h4>
								<br>
								<div>
									<p>내 포인트</p>
									<br>
									<p>환전 가능한 포인트</p>
									<div align="right">
										<button type="button" class="btn btn-primary">환전</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<button class="btn btn-primary btn-circle" id="to-top"
			style="visibility: visible; opacity: 0.5;" onclick="toTop()">
			<!-- 위로가기버튼 -->
			<i class="fa fa-angle-up"></i>
		</button>
	</form>
</body>
</html>