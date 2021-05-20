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
<title>부캐 - 회원가입</title>
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
      
</style>
<body>
    <div class="container">
        <div class="py-5 text-center">
            <h2>회원가입</h2>
        </div>
        <form action="memberRegister.com" method="post">
            <div class="form-group">
                <label for="memberId">아이디</label>
                <input type="text" class="form-control" name="memberId" placeholder="아이디를 입력해주세요">
                <div class="invalid-check invalid-id">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberPw">비밀번호</label>
                <input type="password" class="form-control" name="memberPw" placeholder="비밀번호를 입력해주세요">
                <div class="invalid-check invalid-pw">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberPw">비밀번호 재확인</label>
                <input type="password" class="form-control" name="memberPw_re"  placeholder="비밀번호를 한번 더 입력해주세요">
                <div class="invalid-check invalid-pw_re">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberName">이름</label>
                <input type="text" class="form-control" name="memberName" placeholder="이름을 입력해주세요">
                <div class="invalid-check invalid-name">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberNick">부캐명</label>
                <input type="text" class="form-control" name="memberNick" placeholder="당신의 부캐명을 입력해주세요">
                <div class="invalid-check invalid-nick">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberAddr1">도로명주소   <button type="button" class="btn btn-default btn-sm" id="postSearch">주소찾기</button></label>
                <input type="text" class="form-control postcodify_address" name="memberAddr1" readonly>
                <div class="invalid-check invalid-addr">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberAddr2">상세주소</label>
                <input type="text" class="form-control" name="memberAddr2" placeholder="상세주소를 입력해주세요">
            </div>
            <div class="form-group">
                <label for="memberPhone">전화번호</label>
                <input type="text" class="form-control" name="memberPhone" placeholder="-를 제외한 전화번호를 입력해주세요">
                <div class="invalid-check invalid-phone">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberEmail">이메일</label>
                <input type="text" class="form-control" name="memberEmail" placeholder="이메일을 입력해주세요">
                <div class="invalid-check invalid-email">필수 정보입니다.</div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-large">가입하기</button>
            </div>
        </form>
    </div>
</body>
<script>
	// css 속성 (fucus상태에서 테두리)
	$(".form-control").focus(function(){
		$(this).css({
			"box-shadow" : "0px 0px 5px #0033c"
		})
	})
	// 주소 검색
	$(function() {
		$("#postSearch").postcodifyPopUp({})
	})
	// 전송 시 유효성 검사
	$("form").submit(function(e){
		var check_ok = false;
		check_ok = invaliedId();
		check_ok = invaliedPw();
		check_ok = invaliedPw_re();
		check_ok = invaliedName();
		check_ok = invaliedAddr();
		check_ok = invaliedPhone();
		check_ok = invaildEmail();
		if(check_ok) {
			return false;
		} else {
			return true;
		}
	})
	function invaliedId() {
		// required 빈 칸을 허용하지 않음
		// duplicate 중복을 허용하지 않음
		// format 영어, 숫자, _만 허용
		return false;
	}
	function invaliedPw() {
		// required 빈 칸을 허용하지 않음
		// format 영어, 숫자, 특수문자만 허용
		return false;
	}
	function invaliedPw_re() {
		// required 빈 칸을 허용하지 않음
		// match 비밀번호가 일치해야 함
		return false;
	}
	function invaliedName() {
		// required 빈 칸을 허용하지 않음
		return false;
	}
	function invaliedAddr() {
		// required 빈 칸을 허용하지 않음
		return false;
	}
	function invaliedPhone() {
		// required 빈 칸을 허용하지 않음
		// format 11자리의 숫자로만 이루어져야 함
		return false;
	}
	function invaildEmail() {
		// required 빈 칸을 허용하지 않음
		// format @가 포함되어야 함
		return false;
	}
</script>
</html>