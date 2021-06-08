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
<script src="/resources/js/iamport/pay.js"></script>