<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/member/memberSearch.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<jsp:include page="userIdSearchModal.jsp"></jsp:include>
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
					<input type="text" name="memberName" id="memberName" />
					<div class="placeholder">USER NAME</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<fieldset class="member-filed with-placeholder">
				<legend>휴대폰 번호</legend>
				<div>
					<input type="text" name="memberPhone" id="memberPhone"
						autocomplete="off" autocorrect="off" autocapitalize="off"
						spellcheck="false" />
					<div class="placeholder">-없이 입력해주세요</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<br>
			<fieldset id="submit-field">
				<button id="searchBtn1"  onclick="idSearchClick1()" type="button"
					class="ok">확인</button>
			</fieldset>
			<fieldset id="member-filed">
				<button id="searchBtn2"  onclick="idSearchClick2()" type="button"
					class="cancle">취소</button>
			</fieldset>
		</div>

		<!-- 비밀번호 찾기 -->

		<div id="searchP" style="display: none;">
			<fieldset class="member-filed with-placeholder">
				<legend>아이디</legend>
				<div>
					<input type="text" name="memberId" id="memberId" />
					<div class="placeholder">USER ID</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<fieldset class="member-filed with-placeholder">
				<legend>이메일</legend>
				<div>
					<input type="email" name="memberEmail" id="memberEmail"
						autocomplete="off" autocorrect="off" autocapitalize="off"
						spellcheck="false"/>
					<div class="placeholder">Email@gmail.com</div>
				</div>
				<div class="invalid-check"></div>
			</fieldset>
			<br>
			<fieldset id="submit-field">
				<button id="searchBtn3" onclick="idSearchClick1()" type="button"
					class="ok">확인</button>
			</fieldset>
			<fieldset id="member-filed">
				<button id="searchBtn4" onclick="idSearchClick2()" type="button"
					class="cancle">취소</button>
			</fieldset>
		</div>
	</form>
	
	<!-- 아이디/비밀번호 찾기 버튼 js -->
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
	
	 $(document).ready(function(){
		$('#searchBtn1').click(function() {
			$('#backgroundModal').fadeIn();
			
		});
		// 2. 모달창 닫기 버튼
		$('#close').on('click', function() {
			$('#backgroundModal').fadeOut();
		});
		// 3. 모달창 윈도우 클릭 시 닫기
		$(window).on('click', function() {
			if (event.target == $('#backgroundModal').get(0)) {
	            $('#backgroundModal').hide();
	         }
		});
	}); 
	
	  var idV = "";
	  var memberName =$("#memberName").val;
	  var memberPhone =$("#memberPhone").val;
		// 아이디 값 받고 출력하는 ajax
		var idSearchClick1 = function(){
			console.log($('#memberName').val());
			console.log($('#memberPhone').val());
			$.ajax({
				type:"POST",
				url:"memberSearchId.com",
				dataType:'json',
				data: {"memberName": memberName, "memberPhone" : memberPhone},
				success:function(data){
					if(data == 0){
						$('#idValue').text("회원 정보를 확인해주세요!");
					} else {
						$('#idValue').text(data);
						// 아이디값 별도로 저장
						idV = data;
					}
				}
			});
		} 
	 </script> 
	
	
	<!-- JS -->
	  <script src="/resources/js/member/loginForm.js"></script>
	<script src="/resources/js/member/loginAjax.js"></script> 

</body>
</html>