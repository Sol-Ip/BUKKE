<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<title>부캐 - 회원가입</title>
</head>
<style>
	.container {
		margin-bottom: 50px;
	}
    @media (min-width: 650px) {
        .container {
        	border: 1px solid rgb(204, 204, 204);
            width: 650px;
        }
    }
    .invalid-check {
    	margin-top: 3px;
    	padding: 1px;
    	display: none;
        color: #f00;
    }
    .title {
    	font-family: 'Poppins', Arial, sans-serif;
    	font-size: 30px;
    	font-weight: 900;
    	cursor: Pointer;
    }
    .signUp {
    	padding: 6px 24px;
    	margin-bottom: 13px;
    }
    /* ajax 기다리는 동안 로딩아이콘 표시 */
    #ajax_indicator {
    	width: 2rem;
    	height: 2rem;
    	display: none;
    	margin-left: 10px;
    }
</style>
<body>
	<div class="py-5 title text-center">BUKKE</div>
	<div class="container">
		<div class="text-left">
			<h3>회원가입</h3>
		</div>
        <form action="memberRegister.com" id="registerform" method="post">
        	<hr>
            <div class="form-group">
                <label for="memberId">아이디</label><span id="ajax_indicator"><img src="/resources/images/ajax-loader_circle.gif"></span>
                <input type="text" class="form-control" id="memberId" name="memberId" placeholder="아이디를 입력해주세요">
                <div class="invalid-id invalid-check">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberPw">비밀번호</label>
                <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="비밀번호를 입력해주세요">
                <div class="invalid-pw invalid-check">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberPw_re">비밀번호 재확인</label>
                <input type="password" class="form-control" id="memberPw_re" name="memberPw_re"  placeholder="비밀번호를 한번 더 입력해주세요">
                <div class="invalid-pw_re invalid-check">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="memberName">이름</label>
                <input type="text" class="form-control" id="memberName" name="memberName" placeholder="이름을 입력해주세요">
                <div class="invalid-name invalid-check">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberNick">부캐명</label>
                <input type="text" class="form-control" id="memberNick" name="memberNick" placeholder="당신의 부캐명을 입력해주세요">
                <div class="invalid-nick invalid-check">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="memberAddr1">도로명주소   <button type="button" class="btn btn-default btn-sm" id="postSearch">주소찾기</button></label>
                <input type="text" class="form-control postcodify_address" id="memberAddr1" name="memberAddr1" readonly>
                <div class="invalid-addr invalid-check">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberAddr2">상세주소</label>
                <input type="text" class="form-control" name="memberAddr2" placeholder="상세주소를 입력해주세요">
            </div>
            <hr>
            <div class="form-group">
                <label for="memberPhone">전화번호</label>
                <input type="text" class="form-control" id="memberPhone" name="memberPhone" placeholder="-를 제외한 전화번호를 입력해주세요">
                <div class="invalid-phone invalid-check">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="memberEmail">이메일</label>
                <input type="text" class="form-control" id="memberEmail" name="memberEmail" placeholder="이메일을 입력해주세요">
                <div class="invalid-email invalid-check">필수 정보입니다.</div>
            </div>
            <div class="text-center">
                <button type="button" id="form-submit" class="btn btn-dark signUp">가입하기</button>
            </div>
        </form>
    </div>
</body>
<jsp:include page="../common/registerFooter.jsp"></jsp:include>
<!-- 유효성 ajax + 주소검색 -->
<script>
	// bukke 클릭시 홈으로 이동
	$(".title").click(function(){
		location.href='home.com';
	})
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
	// 실시간 비밀번호 재확인 검사
	$("#memberPw_re").on("keyup",function(){
		invalidPw_re();
	})
	// 전송 시 유효성 검사
	$("#form-submit").click(function(e){
		var check_ok = false;
		$.ajax({
			url: "memberCheckIdDup.com",
			type: "POST",
			data: { memberId : $("#memberId").val() },
			async: false,
			success: function(data) {
				if (data == "yes") {
					$("#memberId").focus();
					$(".invalid-id").html("이미 사용중인 ID입니다.");
					$(".invalid-id").show();
					check_ok = true;
				}
			},
			error: function() {
				$("#memberId").focus();
				$(".invalid-id").html("서버 연결 상태가 좋지 않습니다.");
				$(".invalid-id").show();
				check_ok = true;
			},
			beforeSend: function() {
				//통신을 시작할때 처리
				$('#ajax_indicator').show();
			},
			complete: function() {
				//통신이 완료된 후 처리
				$('#ajax_indicator').fadeOut();
			}
		});
		check_ok = (check_ok || invalidId());
		check_ok = (check_ok || invalidPw());
		check_ok = (check_ok || invalidPw_re());
		check_ok = (check_ok || invalidName());
		check_ok = (check_ok || invalidNick());
		check_ok = (check_ok || invalidAddr());
		check_ok = (check_ok || invalidPhone());
		check_ok = (check_ok || invaildEmail());
		if(!check_ok) {
			$("#registerform").submit();
		}
	})
	function invalidId() {
		var Id = $("#memberId").val();
		var regexp = /^[a-zA-Z0-9_]{4,12}$/;
		if(Id == "") {
			$("#memberId").focus();
			$(".invalid-id").html("필수 정보입니다.");
			$(".invalid-id").show();
			return true;
		} else if(!regexp.test(Id)) {
			$("#memberId").focus();
			$(".invalid-id").html("아이디는 4 ~ 12자리의 영어, 숫자, _만 사용할 수 있습니다.");
			$(".invalid-id").show();
			return true;
		}
		return false;
	}
	function invalidPw() {
		var Pw = $("#memberPw").val();
		var regexp = /^[a-zA-Z0-9!@#$%^&*]{4,12}$/;
		if(Pw == "") {
			$("#memberPw").focus();
			$(".invalid-pw").html("필수 정보입니다.");
			$(".invalid-pw").show();
			return true;
		} else if(!regexp.test(Pw)) {
			$("#memberPw").focus();
			$(".invalid-pw").html("비밀번호는 4 ~ 12자리의 영어, 숫자, 특수문자만 사용할 수 있습니다.");
			$(".invalid-pw").show();
			return true;
		}
		return false;
	}
	function invalidPw_re() {
		var Pw = $("#memberPw").val();
		var Pw_re = $("#memberPw_re").val();
		$(".invalid-pw_re").show();
		if(Pw == "") {
			$(".invalid-pw_re").hide();
		}
		if(Pw_re == "") {
			$("#memberPw_re").focus();
			$(".invalid-pw_re").css("color","#f00");
			$(".invalid-pw").html("필수 정보입니다.");
			return true;
		} else if(Pw != Pw_re) {
			$("#memberPw_re").focus();
			$(".invalid-pw_re").css("color","#f00");
			$(".invalid-pw_re").html("비밀번호가 일치하지 않습니다.");
			return true;
		} else if(Pw == Pw_re) {
			$(".invalid-pw_re").css("color","#28a745");
			$(".invalid-pw_re").html("비밀번호가 일치합니다.");
			return false;
		}
		return false;
	}
	function invalidName() {
		var Name = $("#memberName").val();
		var regexp = /^.{0,20}$/;
		if(Name == "") {
			$("#memberName").focus();
			$(".invalid-name").html("필수 정보입니다.");
			$(".invalid-name").show();
			return true;
		} else if(!regexp.test(Name)) {
			$("#memberName").focus();
			$(".invalid-name").html("이름의 길이는 20자를 넘을 수 없습니다.");
			$(".invalid-name").show();
			return true;
		}
		return false;
	}
	function invalidNick() {
		var Nick = $("#memberNick").val();
		var regexp = /^.{0,20}$/;
		if(Nick == "") {
			$("#memberNick").focus();
			$(".invalid-nick").html("필수 정보입니다.");
			$(".invalid-nick").show();
			return true;
		} else if(!regexp.test(Nick)) {
			$("#memberNick").focus();
			$(".invalid-nick").html("부캐명은 20자를 넘을 수 없습니다.");
			$(".invalid-nick").show();
			return true;
		}
		return false;
	}
	function invalidAddr() {
		var Addr = $("#memberAddr1").val();
		if(Addr == "") {
			$("#memberAddr1").focus();
			$(".invalid-addr").html("필수 정보입니다.");
			$(".invalid-addr").show();
			return true;
		} 
		return false;
	}
	function invalidPhone() {
		var Phone = $("#memberPhone").val();
		var regexp = /^[0-9]{10,11}$/;
		if(Phone == "") {
			$("#memberPhone").focus();
			$(".invalid-phone").html("필수 정보입니다.");
			$(".invalid-phone").show();
			return true;
		} else if(!regexp.test(Phone)) {
			$("#memberPhone").focus();
			$(".invalid-phone").html("전화번호는 10 ~ 11 자리의 숫자만 입력해주세요.");
			$(".invalid-phone").show();
			return true;
		}
		return false;
	}
	function invaildEmail() {
		var Email = $("#memberEmail").val();
		var regexp = /^[a-zA-Z0-9_]*@[a-zA-Z0-9_.]*$/;
		if(Email == "") {
			$("#memberEmail").focus();
			$(".invalid-email").html("필수 정보입니다.");
			$(".invalid-email").show();
			return true;
		} else if(!regexp.test(Email)) {
			$("#memberEmail").focus();
			$(".invalid-email").html("이메일 형식에 맞지 않습니다. 영어, 숫자, @가 필수로 포함되었는지 확인해주세요.");
			$(".invalid-email").show();
			return true;
		}
		return false;
	}
	$(".form-control").focus(function(){
		if($(this).attr("id") == "memberPw_re") {
		} else {
			$(this).next().hide();
		}
	})
</script>
</html>