<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment</title>
<!-- 아임포트 .js (jquery 필요) -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
    /* 결제자 정보를 전달할 때, 카카오 연동한 계정은 개인정보 누락문제 해결 */
</style>
</head>
<body>
<!-- 아임포트 사용설명서 -->
<a href="https://github.com/iamport/iamport-manual/blob/master/%EC%9D%B8%EC%A6%9D%EA%B2%B0%EC%A0%9C/README.md"></a>
<button type="button" id="iamport">결제테스트</button>
</body>
</html>
<script>
$(document).ready(function(){
    IMP.init('imp18509268');
});

$("#iamport").click(function(e){
    IMP.request_pay({
        pg : 'html5_inicis',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '클래스예약: 미술시간',
        amount : 10,
        buyer_email : 'user@gmail.com',
        buyer_name : '홍찬희',
        buyer_tel : '010-1111-2222',
        buyer_addr : '서울특별시 중구 남대문로 120,2층',
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제에 성공하였습니다.';
            msg += ' 고유ID : ' + rsp.imp_uid;
            msg += ' 상점 거래ID : ' + rsp.merchant_uid;
            msg += ' 결제 금액 : ' + rsp.paid_amount;
            msg += ' 카드 승인번호 : ' + rsp.apply_num;
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += ' 에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });
})
</script>
