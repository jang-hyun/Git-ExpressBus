<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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
</head>
<style>

/* GENERAL BUTTON STYLING */
#btnJoin, #btnCancle,
#btnJoin::after, #btnCancle::after {
  -webkit-transition: all 0.3s;
   -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
   transition: all 0.3s;
}

#btnJoin, #btnCancle {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: #fff;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding:10px;
  width:100%;
  position: relative;
  text-transform: uppercase;
}

#btnJoin::before, #btnCancle::before,
#btnJoin::after, #btnCancle::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

#btnJoin:hover, #btnCancle:hover {
  background:#82F9B7;
  color :white;
}

.btnStyle {
  overflow: hidden;
}

.btnStyle::after {
  height: 100%;
  left: -35%;
  top: 0;
  transform: skew(50deg);
  transition-duration: 0.6s;
  transform-origin: top left;
  width: 0;
}

.btnStyle:hover:after {
  height: 100%;
  width: 135%;
}
#btnJoin, #btnCancle{color: #2ecc71; background:#fff;}
</style>
<body>
   <div id="signUpPage">
      <h1>회원가입</h1>
      <div>※ id와 패스워드는 20글자 제한입니다.</div>
      <form name="frm" method="post" action="signUp">
		<strong class="spSubTitle">아이디 [필수] <span id = "idCheck" class = "check"></span></strong>
         <div id="signUpId">
            <input type="text" name="user_id" placeholder="아이디 입력"
               class="user_id" maxlength = 20>
         </div>
         <strong class="spSubTitle">비밀번호 [필수] <span id = "passwordCheck" class = "check"></span></strong>
         <div id="signUpPw">
            <input type="password" name="user_password" placeholder="비밀번호 입력"
               class="user_password" maxlength = 20>
         </div>
         <strong class="spSubTitle">이름 [필수] <span id = "nameCheck" class = "check"></span></strong>
         <div>
            <input type="text" name="user_name" placeholder="이름을 입력해주세요."
               class="user_nameIn" maxlength = 100>
         </div>
         <strong class="spSubTitle">전화번호 [필수] <span id = "telCheck" class = "check"></span></strong>
         <div id="signUpTel">
            <input type="text" name="user_tel" placeholder='전화번호 ("-"제외 숫자만 입력)'
               class="user_tel" maxlength = 11>
         </div>
         <strong class="spSubTitle">이메일</strong>
         <div id="signUpEmail">
            <input type="text" size="20" name="user_email" placeholder="이메일 입력"
               class="user_email">
         </div>
         <br>
         <div id="pagination">
            <input type="submit" value="가입하기" class="btnStyle" id="btnJoin"/> 
            <input type="button" value="취소" onclick="location.href='../home'"
               class="btnStyle" id="btnCancle">
         </div>
      </form>
   </div>
</body>
<script>
	var id = false, pass = false, name = false, tel = false, overlap = false;
	
	$(frm.user_id).change(function() {
		if ($(this).val().trim().length == 0) {
			$("#idCheck").html("<font color = 'red'>! 아이디를 입력해 주세요.</font>");
			id = false;
		} else {
			id = true;
			idCheck();
		}
	});
	
	$(frm.user_password).change(function() {
		$(frm.user_id).change();
		if ($(this).val().trim().length == 0) {
			$("#passwordCheck").html("<font color = 'red'>! 비밀번호를 입력해 주세요.</font>");
			pass = false;
	   } else {
	    	$("#passwordCheck").html(null);
	    	pass = true;
	   }
	});

	$(frm.user_name).change(function() {
		$(frm.user_id).change();
		$(frm.user_password).change();
		if ($(this).val().trim().length == 0) {
	    	  $("#nameCheck").html("<font color = 'red'>! 이름을 입력해 주세요.</font>");
	    	  name = false;
	      } else {
	    	  $("#nameCheck").html(null);
	    	  name = true;
	      }
	});
	
	$(frm.user_tel).change(function() {
		$(frm.user_id).change();
		$(frm.user_password).change();
		$(frm.user_name).change();
		if ($(this).val().trim().length == 0) {
	    	  $("#telCheck").html("<font color = 'red'>! 전화번호를 입력해 주세요.</font>");
	    	  tel = false;
	      } else if ($(this).val().trim().length < 10){
	    	  $("#telCheck").html("<font color = 'red'>! 전화번호를 올바르게 입력해 주세요.</font>");
	    	  tel = false;
	      } else {
	    	  $("#telCheck").html(null);
	    	  tel = true;
	      }
	});
	$(frm).keydown(function(key) {
		if (key.keyCode == 13) {
			key.preventDefault();
			return;
		}
	});
   $(frm).submit(function(e) {
      e.preventDefault();
      $(frm.user_id).change();
		$(frm.user_password).change();
		$(frm.user_name).change();
		$(frm.user_tel).change();
		if (!id) {
	    	  alert("id를 입력해 주세요.");
	    	  $(frm.user_id).focus();
	      } else if (!pass) {
	    	  alert("비밀번호를 입력해 주세요.");
	    	  $(frm.user_password).focus();
	      } else if (!name) {
	    	  alert("이름을 입력해 주세요.");
	    	  $(frm.user_name).focus();
	      } else if (!tel) {
	    	  alert("전화번호를 입력해 주세요.");
	    	  $(frm.user_tel).focus();
	      } else if (!overlap) {
	    	  alert("id 중복체크를 확인해주세요.");
	      } else if (!confirm("입력하신 정보로 가입하시겠습니까?")) {
	         return;
	      } else {
	         alert("가입 완료");
	         frm.submit();
	      }
   });
   function idCheck() {
	   if (id) {
			$.ajax({
				type : "post",
				url : "/final/user/isOverlap",
				data : {"user_id" : $(frm.user_id).val().trim()},
				success : function(data) {
					overlap = data;
					if (overlap) {
						$("#idCheck").html("<font color = 'green'>사용 가능한 id입니다.</font>");
					} else {
						$("#idCheck").html("<font color = 'red'>이미 사용중인 id입니다.</font>");
					}
				}
			});
		}
   }
</script>
</html>