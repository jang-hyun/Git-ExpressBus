<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src = "//developers.kakao.com/sdk/js/kakao.min.js"></script>
      <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
      <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/nice-select.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/style.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/home.css">
   <style>
      .logo a{color:#1AAB8A; font-weight:bold; font-size:30px;}
      #loginId{text-align:center; margin-top:7px;} 
/*       #kakao{width:390px; margin:0px auto; height:50px;} */
/*       #kakao-login-btn{width:279px; height:50px;} */
/*       #loginSub{width:350px; margin-left:5px;} */
.line_or {
   position: relative;
    display: block;
    width: 100%;
    padding: 15px 0;
    font-size: 0;
    line-height: 0;
}

.line_or:before, .line_or:after {
    display: inline-block;
    width: calc(50% - 20px);
    height: 1px;
    margin: 8px 0;
    background-color: #1AAB8A;
    vertical-align: top;
    content: '';
}

.line_or .txt_or {
    display: inline-block;
    width: 40px;
    font-size: 18px;
    line-height: 18px;
    text-align: center;
    color: #1AAB8A;
}
#loginLinks a {
	cursor: pointer;
}
   </style>
</head>
<body>
<div id="loginPage">
   <div class="loginBox">
   <div class="logo">
      <a href="/final/home">Express Bus</a>
   </div>
   <form name="frm">
      <div id="loginId" tabindex=1>
         <input type="text" name="user_id" class="user_id" placeholder="아이디 입력">
      </div>
      <div id="loginPw" tabindex=1>
         <input type="password" name="user_password" class="user_password" placeholder="비밀번호 입력">
      </div>
      <div id="chkLogin">
         <input type="checkbox" name="chkLogin">로그인 상태 유지
      </div>
      <div id="errorBox">
         <p></p>
      </div>
      <div id="loginSub">
         <input type="submit" value="로그인" class="loginBtn"> 
         <span class="line_or">
            <span class="txt_or">or</span>
         </span>
      </div>
      <div>
         
         <img id="naverIdLogin" src="/final/seat/display?fileName=Naver.png" width="360" height="52" style="cursor:pointer; margin-bottom:5px;">
         <img id="kakao" src="/final/seat/display?fileName=Kakao.png" width="360" height="52" style="cursor:pointer">
      </div>
      <div id="loginLinks">
         <div class="joinCus"><a href="/final/user/signUp">회원가입</a></div>
         <div class="findPw">
            <a class = "pw" onclick="find(this);">비밀번호 찾기</a>
         </div>
         <div class="findId">
            <a class = "id" onclick="find(this);">아이디 찾기</a>
         </div>
      </div>
      </form>
      </div>
         <div id="loginId">
          ※자동 로그인은 68년간 유지됩니다.
         </div>
</div>
<!--       <div id="kakao"> -->
<!--          <a id="kakao-login-btn"></a> -->
<!--          <a href="http://developers.kakao.com/logout"></a> -->
<!--       </div> -->
<!-- <div id = "naverIdLogin"></div> -->
</body>
<script type="text/javascript">
var naverLogin = new naver.LoginWithNaverId(
      {
         clientId: "YyYN81zmAXqzQHvNy9BJ",
         callbackUrl: "http://localhost:8080/final/user/callback",
         isPopup: false, /* 팝업을 통한 연동처리 여부 */
         loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
      }
);   
   /* 설정정보를 초기화하고 연동을 준비 */
   naverLogin.init();
   
   //------------↑(네이버) //  (카카오)↓-------------
   
   Kakao.init('0ffdc88736e160c536e65bbb4ac8a80b');
   
   //카카오 로그인 버튼을 생성합니다. 
   Kakao.Auth.createLoginButton({ 
       container: '#kakao', 
       success: function(authObj) { 
              Kakao.API.request({
                  url: '/v2/user/me',
                  success: function(res) {
                	  const id = res.id;
                	  const name = res.kakao_account.profile.nickname;
                	  $.ajax({
                		  type : "post",
                		  url : "/final/user/kakaoSignUp",
                		  data : {"user_id" : id, "user_name" : name},
                		  success : function() {
                			  location.href = "/final/home";
                		  }
                	  });
                    }
               })
         },
         fail: function(error) {
         alert(JSON.stringify(error));                             
         }
      });
</script>
<script>
	const dest = "${dest}";
	interceptorCheck();
   function interceptorCheck() {
	   if (dest.trim().length != 0) {
		   alert("로그인이 필요한 서비스입니다.");
	   }
   }
   $(frm).submit(function(e){
      e.preventDefault();
      let user_password=$(frm.user_password).val();
      let user_id=$(frm.user_id).val();
      let chkLogin = $(frm.chkLogin).is(":checked") ? true : false;
      if (user_id.trim() == "") {
         $("#errorBox p").html("id를 입력해 주세요.");
         $(frm.user_id).focus();
      } else if (user_password.trim() == "") {
         $("#errorBox p").html("비밀번호를 입력해 주세요.");
         $(frm.user_password).focus();
      } else {
         $.ajax({
            type:"post",
            url:"login",
            data:{"user_id":user_id, "user_password":user_password, "chkLogin":chkLogin},
            success:function(data){
               if(data==0){
                  $("#errorBox p").html("존재하지 않는 계정입니다.");
               }else if(data==1){
                  $("#errorBox p").html("비밀번호가 틀립니다.");
               }else{
                  location.href="../home";
               }
            }
         });
      }
   });
   
   function find(context) {
	   const type = context.className;
	   let data = "";
	   switch (type) {
	   case "id":
		   data += prompt("전화번호를 입력하세요. ['-' 제외]");
		   break;
	   case "pw":
		   data += prompt("ID를 입력하세요.");
		   data += "&" + prompt("email을 입력하세요.");
		   break;
	   }
	   $.ajax({
		   type : "post",
		   url : "/final/user/find",
		   data : {"type" : type, "data" : data},
		   success : function(returnData) {
			   const size = returnData.length;
			   switch (type) {
			   case "id":
				   msg = "";
				   if (size == 0) {
					   alert("전화번호를 확인해 주세요.");
				   } else if (size == 1) {
					   alert("ID는 " + returnData[0] + "입니다.");
				   } else {
					   for (var i = 0; i < size; i++) {
						   msg += returnData[i] + "\n";
					   }
					   alert("가입된 ID 목록\n" + msg);
				   }
				   break;
			   case "pw":
					alert(size == 0 ? "ID 혹은 이메일을 확인해 주세요." : returnData[0]);
					break;
			   }
		   }
	   });
   }
   </script>
</html>