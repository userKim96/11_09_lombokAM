<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name ="google-signin-client_id" content="891003585325-osuvqghhlkrit99elnesu8jf3gjm85gr.apps.googleusercontent.com">

	<c:set var="pageTitle" value="MEMBER LOGIN" />
	
	<%@ include file="../common/head.jsp" %>
	
	<script>
		const loginForm_onSubmit = function(form) {
			form.loginId.value = form.loginId.value.trim();
			form.loginPw.value = form.loginPw.value.trim();
			
			if (form.loginId.value.length == 0) {
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			
			if (form.loginPw.value.length == 0) {
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}
			
			form.submit();
		}
	</script>
	
	<script>
	
	//처음 실행하는 함수
	function init() {
		gapi.load('auth2', function() {
			gapi.auth2.init();
			options = new gapi.auth2.SigninOptionsBuilder();
			options.setPrompt('select_account');
	        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
			options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
	        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
	        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
			gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
		})
	}
	
	function onSignIn(googleUser) {
		var access_token = googleUser.getAuthResponse().access_token
		$.ajax({
	    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
			url: 'https://people.googleapis.com/v1/people/me'
	        // key에 자신의 API 키를 넣습니다.
			, data: {personFields:'birthdays', key:'AIzaSyAizD3y1ydbccCZqA8BT-5gz0EianLTXDU', 'access_token': access_token}
			, method:'GET'
		})
		.done(function(e){
	        //프로필을 가져온다.
			var profile = googleUser.getBasicProfile();
			console.log(profile)
		})
		.fail(function(e){
			console.log(e);
		})
	}
	function onSignInFailure(t){		
		console.log(t);
	}
	</script>
	
	<section class="mt-8 text-xl">
		<div class="container mx-auto px-3">
			<form action="doLogin" method="post" onsubmit="loginForm_onSubmit(this); return false;">
				<div class="table-box-type">
					<table class="table table-lg">
						<tr>
							<th>아이디</th>
							<td><input class="input input-bordered input-primary w-9/12" name="loginId" type="text" placeholder="아이디를 입력해주세요"/></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input class="input input-bordered input-primary w-9/12" name="loginPw" type="text" placeholder="비밀번호를 입력해주세요" /></td>
						</tr>
						<tr>
							<td class="text-center" colspan="2"><button class="btn-text-color btn btn-wide btn-outline">로그인</button></td>
						</tr>
					</table>
				</div>
				
			    <div id="naver_id_login"></div>
			    <div id="GgCustomLogin">
					<a href="javascript:void(0)"><span>Login with Google</span></a>
			    </div>
			    

			    <script type="text/javascript">
			        var naver_id_login = new naver_id_login("5RMdNBtqNhFEwFIz8tWO", "http://localhost:8081/callback.html");
			        var state = naver_id_login.getUniqState();
			        naver_id_login.setButton("white", 20,400);
			        naver_id_login.setDomain("http://localhost:8081/usr/member/login");
			        naver_id_login.setState(state);
			        naver_id_login.setPopup();
			        naver_id_login.init_naver_id_login();
			    </script>
			</form>
			
			
			
			<div class="btns mt-2 flex justify-between">
				<button class="btn-text-color btn btn-outline btn-sm" onclick="history.back();">뒤로가기</button>
				<div>
					<a class="btn-text-color btn btn-outline btn-sm" href="findLoginId">아이디 찾기</a>
					<a class="btn-text-color btn btn-outline btn-sm" href="findLoginPw">비밀번호 찾기</a>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="../common/foot.jsp" %>