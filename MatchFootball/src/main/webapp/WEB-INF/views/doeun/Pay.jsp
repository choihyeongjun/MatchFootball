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

<!-- <script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
<!-- 결제api -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 결제api -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="https://kit.fontawesome.com/e15da187be.js"></script>

<%
	String id = (String) session.getAttribute("id");

String tel = (String) session.getAttribute("point.pnum");
%>
<script type="text/javascript">
	function goTop() {
		$(document).animate({
			scrollTop : 0
		})
	}
	
    var IMP = window.IMP;
	$(function() {	   
        IMP.init('imp22665146');
        pay();
	});	
	
	function pay(){
    $('#charge_kakao').click(function () {
        // getter
                //포인트 충전
        var money = $('input[name="cp_item"]:checked').val();
                var p_id = "${sessionScope.id}";		//회원 아이디
                var p_con = "포인트 충전";
                
        console.log(money);

        IMP.request_pay({
            pg: 'html5_inicis',
            pay_method : 'card',	// 결제 수단
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '매치풋볼 : 포인트 충전',
            amount: money, //.money,           
            buyer_name : 'aaa',<%-- '<%=id%>' --%>
            buyer_tel : '010-0000-0000'<%-- '<%=tel%>' --%>
           
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
           		
                //쿠폰
                
           		var npoint = money;	//구매한 포인트
           		var p_pay = money;		// 결제 금액
                alert("ajax실행전");
                console.log("=====id"+p_id+"point"+npoint+"pay"+p_pay)
                $.ajax({
                    url: "pointcharge", //충전 금액값을 보낼 url 설정
                    type: "POST", 
                    dataType : "JSON",
                    data: {
                        //point db에 담을 값을 넣음
                        p_id : p_id,
                        p_pay : p_pay,
                        npoint : npoint,  
                        p_con : p_con,                       
                     },
                    success : function(response){
                    	alert("ajax성공");
                    	cuponUp();
                    },
                    error:function(response){
                    	alert("ajax에러");
                    }
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
    });
	 function cuponUp(){
		$("input[name='cp_item']:checked").each(function(i, checkbox){
		var m_id = "${sessionScope.id}";
           var tr = $(checkbox).parent().parent();
           var td = $(tr).children();
           var c_num = td.eq(2).find("input").val();  
           var msg = "p 할인 쿠폰";
           console.log('----------------------------');
           console.log(m_id);
			console.log(c_num);
			console.log(msg);
			 $.ajax({
                 url: "insertCoupon", //충전 금액값을 보낼 url 설정
                 type: "POST", 
                 dataType : "JSON",
                 data: {
                     //coupon db에 담을 값을 넣음
                     m_id : m_id,
                     c_title : c_num+msg,
                     c_num: c_num
                     
                  },
                 success : function(response){
                 	alert("쿠폰성공");
                 },
                 error:function(response){
                 	alert("쿠폰에러");
                 }
             });
		})
	 }
}
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
											<th></th>
											<th>point</th>
											<th>coupon</th>
											<th>결제 금액</th>
										</tr>

										<tbody>
											<tr>
												<td><input type="checkbox" name="cp_item" value="5000"></td>
												<td><input type="hidden" name="point">5000</td>
												<td><input type="hidden" value="100">보너스 쿠폰</td>
												<td>\ &nbsp;5,000</td>
											</tr>
											<tr>
												<td><input type="checkbox" name="cp_item" value="10000"></td>
												<td>10000</td>
												<td><input type="hidden" value="1000">보너스 쿠폰</td>
												<td>\10,000</td>
											</tr>
											<tr>
												<td><input type="checkbox" name="cp_item" value="15000"></td>
												<td>15000</td>
												<td><input type="hidden" value="1500">보너스 쿠폰</td>
												<td>\15,000</td>
											</tr>

											<tr>
												<td><input type="checkbox" name="cp_item" value="25000"></td>
												<td>25000</td>
												<td><input type="hidden" value="2500">보너스 쿠폰</td>
												<td>\25,000</td>
											</tr>


											<tr>
												<td><input type="checkbox" name="cp_item" value="50000"></td>
												<td>50000</td>
												<td><input type="hidden" value="5000">보너스 쿠폰</td>
												<td>\50,000</td>
											</tr>
										</tbody>
									</table>
									<br>
									<p style="color: #ac2925;">최소 충전금액은 5,000원이며 최대 충전금액은
										50,000원 입니다.</p>
									<div align="right" style="margin-top:">
										<button type="button" class="btn btn-primary"
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