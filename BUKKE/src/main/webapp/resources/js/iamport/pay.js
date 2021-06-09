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

/*

*/