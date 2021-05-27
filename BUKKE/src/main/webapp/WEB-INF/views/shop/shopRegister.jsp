<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- 파일업로드 커스텀 css -->
<title>업체 - 회원가입</title>
</head>
<style>
    @media (min-width: 650px) {
        .container {
            width: 650px;
        }
    }
    .invalid-check {
    	display: none;
        color: #f00;
    }
    .upload-name {
	height: 34px;
	}
</style>
<body>
	<div class="py-5 text-center">
		<h2>회원가입</h2>
	</div>
	<div class="container">
        <form action="memberRegister.com" method="post">
        	<hr>
            <div class="form-group">
                <label for="memberId">아이디</label>
                <input type="text" class="form-control" name="shopId" placeholder="아이디를 입력해주세요">
                <div class="invalid-check invalid-id">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopPw">비밀번호</label>
                <input type="password" class="form-control" name="shopPw" placeholder="비밀번호를 입력해주세요">
                <div class="invalid-check invalid-pw">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopPw">비밀번호 재확인</label>
                <input type="password" class="form-control" name="shopPw_re"  placeholder="비밀번호를 한번 더 입력해주세요">
                <div class="invalid-check invalid-pw_re">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="ceoName">대표자명</label>
                <input type="text" class="form-control" name="ceoName" placeholder="대표자명을 입력해주세요">
                <div class="invalid-check invalid-name">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopName">업체명</label>
                <input type="text" class="form-control" name="shopName" placeholder="업체명을 입력해주세요">
                <div class="invalid-check invalid-nick">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="shopAddr1">도로명주소   <button type="button" class="btn btn-default btn-sm" id="postSearch">주소찾기</button></label>
                <input type="text" class="form-control postcodify_address" name="shopAddr1" readonly>
                <div class="invalid-check invalid-addr">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopAddr2">상세주소</label>
                <input type="text" class="form-control" name="shopAddr2" placeholder="상세주소를 입력해주세요">
            </div>
            <hr>
            <div class="form-group">
                <label for="shopPhone">연락처</label>
                <input type="text" class="form-control" name="shopPhone" placeholder="-를 제외한 전화번호를 입력해주세요">
                <div class="invalid-check invalid-phone">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopEmail">이메일</label>
                <input type="text" class="form-control" name="shopEmail" placeholder="이메일을 입력해주세요">
                <div class="invalid-check invalid-email">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="crnNo">사업자번호</label>
                <input type="text" class="form-control" name="crnNo" placeholder="사업자번호를 입력해주세요">
                <div class="invalid-check invalid-crn">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label id = "crnFile">사업자등록증</label>
                <div class="filebox bs3-primary preview-image"></div>
                <input class="upload-name" value="파일선택" disabled="disabled" >
                <label for="input-file" class="btn btn-primary">업로드</label>
                <input type="file" id="input-file">
                <div class="invalid-check invalid-file">필수 정보입니다.</div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-large">가입하기</button>
            </div>
        </form>
    </div>
</body>
<!-- 파일업로드 커스텀 js -->
<script src="/resources/js/shop/shopFileUpload.js"></script>
<!-- 유효성검사 ajax + 주소검색 -->
<script src="/resources/js/shop/shopRegister.js"></script>
</html>