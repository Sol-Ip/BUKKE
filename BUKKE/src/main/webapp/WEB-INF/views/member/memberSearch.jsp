<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/member/memberSearch.css">
</head>
<body>
	<form action="#" method="POST">
		<svg width="200px" height="0px" viewBox="0 0 200 200"
			aria-labelledby="svg-title svg-desc">
  <div style="text-align: center">
  	<h2>아이디 / 비밀번호 찾기</h2>
  	<p>인증된 이메일을 통해 찾으실 수 있습니다.</p>
  </div>
    <!-- <style>
      @keyframes float { 
        from { transform: translate(0, 0px); }
        to   { transform: translate(0, 8px); } 
      }
      @keyframes float-arm { 
        from { transform: translate(-1px, 0px); }
        to   { transform: translate(1px, 4px); } 
      }
      #ghost-body { animation: float 2s linear alternate infinite; }
      .ghost-arm { animation: float-arm 3s linear alternate infinite; }
      .pupil, #mouth, .ghost-arm { transition: all 0.25s; }
    </style> -->
  </svg>
		<div class="member-checkbox">
			<input type="radio" id="search1" name="searchTotal" onclick="searchCheck(1)" checked="checked"> 
				<label for="search1"><span class="spread-underline">아이디</span></label>
			<input type="radio" id="search2" name="searchTotal" onclick="searchCheck(2)"> 
				<label class="spread-underline" for="search2">
				<span class="spread-underline">비밀번호</span></label>
		</div>
		<!-- 아이디 찾기 -->

		<div id="searchI">
			<fieldset class="member-filed with-placeholder">
				<legend>이름</legend>
				<div>
					<input type="text" name="inputName1" id="inputName1" />
					<div class="placeholder">USER NAME</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<fieldset class="member-filed with-placeholder">
				<legend>휴대폰 번호</legend>
				<div>
					<input type="text" name="inputPhone1" id="inputPhone1"
						autocomplete="off" autocorrect="off" autocapitalize="off"
						spellcheck="false" required />
					<div class="placeholder">-없이 입력해주세요</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<br>
			<fieldset id="submit-field">
				<button id="searchBtn1" type="button" onclick="idSearchClick1()"
					class="ok">확인</button>
			</fieldset>
			<fieldset id="member-filed">
				<button id="searchBtn2" type="button" onclick="idSearchClick2()"
					class="cancle">취소</button>
			</fieldset>
		</div>

		<!-- 비밀번호 찾기 -->

		<div id="searchP" style="display: none;">
			<fieldset class="member-filed with-placeholder">
				<legend>아이디</legend>
				<div>
					<input type="text" name="inputId2" id="inputId2" />
					<div class="placeholder">USER ID</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<fieldset class="member-filed with-placeholder">
				<legend>이메일</legend>
				<div>
					<input type="email" name="inputEmail" id="inputEmail"
						autocomplete="off" autocorrect="off" autocapitalize="off"
						spellcheck="false" required />
					<div class="placeholder">Email@gmail.com</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<br>
			<fieldset id="submit-field">
				<button id="searchBtn3" type="button" onclick="idSearchClick1()"
					class="ok">확인</button>
			</fieldset>
			<fieldset id="member-filed">
				<button id="searchBtn4" type="button" onclick="idSearchClick2()"
					class="cancle">취소</button>
			</fieldset>
		</div>
	</form>
	
	<script type="text/javascript">
	function searchCheck(num) {
		if (num == '1') {
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";	
		} else {
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
		}
	}
	</script>
	<!-- JS -->
	<script src="/resources/js/member/loginForm.js"></script>
	<script src="/resources/js/member/loginAjax.js"></script>

</body>
</html>