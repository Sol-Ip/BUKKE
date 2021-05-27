
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
		check_ok = invaildCRN();
		check_ok = invaildFile();
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
	function invaildCRN() {
		// required 빈 칸을 허용하지 않음
		// format @가 포함되어야 함
		return false;
	}
	function invaildFile() {
		return false;
	}