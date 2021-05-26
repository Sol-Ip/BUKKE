<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/member/loginForm.css">
</head>
<body>
<form action="memberLogin.com" method="POST">
  <svg width="200px" height="200px" viewBox="0 0 200 200" aria-labelledby="svg-title svg-desc">
    <title id="svg-title">Floating Ghost</title>
    <desc id="svg-desc">A smiling ghost that floats ups and down while looking at the user interactions.</desc>
    <style>
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
    </style>
     <g id="ghost-body" fill="white" fill="#fff" stroke="#999" stroke-width="3" stroke-linejoin="round">
      <path d="M 54,181 C 44,131 13,11 99,11 185,12 164,110 150,182 146,195 139,185 137,177 134,170 126,169 124,179 120,192 114,190 109,179 105,167 98,166 94,179 92,185 85,193 79,179 74,170 68,168 66,179 62,193 56,191 54,181 Z" />
      <path id="eye-right" class="eye" fill="#ffffee" d="M 69,71 C 69,64 73,54 84,55 96,56 100,62 100,70 100,79 89,83 84,83 78,83 69,80 69,71 Z" />
      <path id="eye-left" class="eye" fill="#ffffee" d="M 105,73 C 104,66 108,57 120,57 130,57 134,65 134,71 134,80 125,85 119,85 114,85 105,82 105,73 Z" />
      <circle id="pupil-right" class="pupil" cx="84" cy="69" r="3" fill="rgba(0,0,0,0.25)" />
      <circle id="pupil-left" class="pupil" cx="120" cy="71" r="3" fill="rgba(0,0,0,0.25)" />
      <path id="mouth" d="M 75,115 C 79,120 91,126 101,125 110,125 126,118 127,114 125,117 117,125 101,125 85,126 79,117 75,115 Z" fill="#aa4040" stroke="#600" />
      <path id="ghost-arm-right" class="ghost-arm" d="M 45,89 C 25,92 9,108 11,124 13,141 27,115 48,119" />
      <path id="ghost-arm-left" class="ghost-arm" d="M 155,88 C 191,90 194,114 192,125 191,137 172,109 155,116" data-hover="M 155,88 C 145,68 105,51 103,62 102,74 123,117 155,116" style="animation-delay:-1s" />
    </g>
  </svg>
  <div class="member-checkbox">
  	<input type="radio" name="loginType" value="typeMember" checked>
  	<label name="typeMember" for="typeMember"><span class="spread-underline">일반회원</span></label>
  	<input type="radio" name="loginType" value="typeShop">
    <label name="typeShop" class="spread-underline" for="typeShop"><span class="spread-underline">업체회원</span></label>
  </div>
  <fieldset class="member-filed with-placeholder">
    <legend>아이디</legend>
    <div>
      <input type="text" name="memberId" id="memberId" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" required />
      <div class="placeholder">USER NAME</div>
    </div>
    <div class="invalid-check"></div>
  </fieldset>
  <fieldset class="member-filed">
    <legend>비밀번호</legend>
    <div>
      <input type="password" name="memberPw" id="memberPw" placeholder="⦁⦁⦁⦁⦁⦁" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" required />
    </div>
    <div class="invalid-check"></div>
  </fieldset>
  <fieldset id="submit-field">
  	<input type="button" name="submit" id="submit" value="로그인"/>
  </fieldset>
  <fieldset id="member-filed">
    <input type="button" name="kakao" id="kakao" value="카카오 로그인"/>
    <div id="registerMember">
      <a href="#">ID/PW 찾기</a>
      <a href="memberRegisterForm.com">회원가입</a>
    </div>
  </fieldset>
</form>
 <!-- JS -->
  <script src="/resources/js/member/loginForm.js"></script>
  <script src="/resources/js/member/loginAjax.js"></script>
</body>
</html>