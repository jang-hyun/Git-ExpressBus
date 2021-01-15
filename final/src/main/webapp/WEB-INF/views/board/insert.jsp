<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- CSS here -->
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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=92cf83f3199535cf8a92bf2c30b348d5"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/x-icon"
   href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">
<title>글 쓰기</title>
<style>
#tradeTbl .trow {cursor: pointer;}
.map_wrap {
   position: relative;
   overflow: hidden;
   width: 700px;
   height: 700px;
}

.radius_border {
   border: 1px solid #919191;
   border-radius: 5px;
}
.write-section{
   padding-bottom:120px;
}
.custom_typecontrol {
   position: absolute;
   top: 10px;
   right: 10px;
   overflow: hidden;
   width: 130px;
   height: 30px;
   margin: 0;
   padding: 0;
   z-index: 1;
   font-size: 12px;
   font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
   display: block;
   width: 65px;
   height: 30px;
   float: left;
   text-align: center;
   line-height: 30px;
   cursor: pointer;
}

.custom_typecontrol .btn {
   background: #fff;
   background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
   background: #f5f5f5;
   background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
   background: #e6e6e6;
   background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
   color: #fff;
   background: #425470;
   background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
   color: #fff;
}

.custom_zoomcontrol {
   position: absolute;
   top: 50px;
   right: 10px;
   width: 36px;
   height: 80px;
   overflow: hidden;
   z-index: 1;
   background-color: #f5f5f5;
}

.custom_zoomcontrol span {
   display: block;
   width: 36px;
   height: 40px;
   text-align: center;
   cursor: pointer;
}

.custom_zoomcontrol span img {
   width: 15px;
   height: 15px;
   padding: 12px 0;
   border: none;
}

.custom_zoomcontrol span:first-child {
   border-bottom: 1px solid #bfbfbf;
}

#darken-background {
   position: absolute;
   top: 0px;
   left: 0px;
   right: 0px;
   height: 100%;
   width: 100%;
   max-width: 100%;
   display: none;
   background: rgba(0, 0, 0, 0.5);
   z-index: 10000;
   overflow-y: scroll;
}

#lightbox {
   position: absolute;
   top: 100px;
   left: 30%;
   width: 50%;
   max-width: 700px;
   margin: 20px auto;
   border: 1px solid #333333;
   border-radius: 5px;
   background: white;
   box-shadow: 0px 5px 5px rgba(34, 25, 25, 0.4);
   text-align: center;
}
#container12{
    max-width: 1240px;
    margin: 0 auto;
    padding-top: 50px}
#content{width:100%; height:400px; border:0; padding:20px;}

#title{margin:3px 3px 3px 3px;height:27px;}
#type{margin:3px 3px 3px 3px; height:27px;}
#btnSingo{background:black;}
.tradeT{font-size: 22px; text-align: center; white-space: nowrap; overflow: hidden;
       text-overflow: ellipsis; background:#d2d2d2;}
.ticket{background:white;}

.write-head{
   padding: 37px 0 16px;
    border-top: 3px solid #272727;
    height:100px;
}
.nice-select{
   margin-right:10px;
   height:50px;
   line-height:48px;
   clip:auto;
   width:120px;
}
.input-box{
   overflow:hidden;
   height: 50px;
    border: 1px solid #848484;
    letter-spacing: -.01em;
    float:left;
}
.write-head .input-box{
   width:1106px;
}
#title{
   display: block;
    border: 0;
    vertical-align: middle;
    background: transparent;
    height: 50px;
    padding-left: 25px;
    font-size: 15px;
    font-weight: 400;
    line-height: 50px;
    float:left;
    width:911px;
}
.write-head .info-user{
   float:left;
    font-size: 18px;
    font-weight: 400;
    line-height: 50px;
    color: #8a8a8a;
    letter-spacing: -.01em;
    vertical-align: top;
    text-align: right;
    border-left:1px solid #A4A4A4;
}
#user_id{
   border:0;
   text-align: center;
}
.write-body{
   width: calc(100% - 2px)!important;
    margin: 0 auto;
    border: 1px solid #848484;
    box-shadow: none;
    vertical-align: top;
    background: transparent;
    text-decoration: none;
    color: #595959;
    font-size: 22px;
    text-shadow: none;
    float: none;
    position: static;
    height: 501px;
    white-space: nowrap;
    cursor: inherit;
    -webkit-tap-highlight-color: transparent;
    line-height: normal;
    font-weight: normal;
    text-align: left;
    -moz-box-sizing: content-box;
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
    direction: ltr;
    max-width: none;
}
.write-foot{
   overflow: hidden;
    width: 100%;
    padding-bottom: 120px;
}
.write_btn{
   float: right;
    padding-top: 45px;
}
.write_btnIn {
  background: transparent;
  text-transform: uppercase;
  font-weight: 500;
  font-style: normal;
  font-size: 1rem;
  letter-spacing: 0.3em;
  color: #eb566c;
  border-radius: 0;
  padding: 18px 50px 20px;
  transition: all 0.7s ease-out;
  background: linear-gradient(270deg, #FFD8D9, #eb566c, rgba(34,34,34,0), rgba(34,34,34,0));
  background-position: 1% 50%;
  background-size: 300% 300%;
  text-decoration: none;
  margin: 0.625rem;
  border: none;
  border: 1px solid #eb566c;
}

.write_btnIn:hover {
  color: #fff;
  border: 1px solid rgba(223,190,106,0);
  color: white;
  background-position: 99% 50%;
}
.write_btnIns {
  background: transparent;
  text-transform: uppercase;
  font-weight: 500;
  font-style: normal;
  font-size: 1rem;
  letter-spacing: 0.3em;
  color: white;
  border-radius: 0;
  padding: 18px 50px 20px;
  transition: all 0.7s ease-out;
  background: linear-gradient(270deg, #FFD8D9, #ECE5F4, #eb566c, #eb566c);
  background-position: 1% 50%;
  background-size: 300% 300%;
  text-decoration: none;
  margin: 0.625rem;
  border: none;
  border: 1px solid #eb566c;
}

.write_btnIns:hover {
  color: #fff;
  border: 1px solid rgba(223,190,106,0);
  color: #eb566c;
  background-position: 99% 50%;
}
#submit_btn, #cancel_btn{
   display:none;
}
.table_list{
   width: 1240px;
    margin:0 auto;
    padding-bottom:120px;
}
.table_list th{
   height: 60px;
    font-size: 16px;
    font-weight: 400;
    line-height: 24px;
    color: #fff;
    letter-spacing: -.05em;
    background: #2b2b2b;
}
.table_list td{
   height: 55px;
    font-size: 15px;
    font-weight: 400;
    line-height: 24px;
    color: #2b2b2b;
    letter-spacing: -.05em;
    text-align: center;
    border-bottom: 1px solid #ececec;
    background: #fff;
}
</style>
</head>
<body>
   <!-- 헤더부분 -->
   <jsp:include page="../header.jsp"></jsp:include>
   <div class="hero-area3 hero-overly2 d-flex align-items-center ">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-9">
               <div class="hero-cap text-center pt-50 pb-20">
                  <h2>글 쓰기</h2>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div id="container12">
   <div class="containTop">
      <h3>게시판 글작성</h3>
   </div>
   <div class="write-section" id="tbl">
   <form name="frm" id="frmId" method="post" action="/final/board/insert">
      <input type="hidden" name="driver_code" value="00000000"> 
      <input type="hidden" name="driver_type" value="0"> 
      <input type="hidden" name="trade" value="."> 
      <input type="hidden" name="image" value="http://placehold.it/150x150">
         <div class="write-head">
            <select name="type" id="type">
                  <c:if test="${LoginVO.user_id=='guswns' }">
                     <option value=0>공지사항</option>
                  </c:if>
                  <option value=1>건의사항</option>
                  <option value=2>문의사항</option>
                  <option value=3>자유게시판</option>
                  <option value=4>교환신청</option>
                  <option value=5>기사 신고</option>
            </select>
            <div class="input-box">
               <input type="text" name="title" id="title" maxlength="50" placeholder="제목을 입력하세요">
               <div class="info-user">
                  <input type="text" name="user_id" maxlength="50" id="user_id"value="${LoginVO.user_id }" readonly>
               </div>
            </div>
         </div>
         <div class="write-body">
            <textarea id="content" name = "content" placeholder="내용 입력"></textarea>
         
         
         <div class="trade">
            <span class = "tradeT">교환할 표</span>
            <span class="ticket"></span>
         </div>
         </div>
      <br>
         
      <div class="write-foot">
         <div class="wrap-btn">
            <div class="write_btn">
               <input type="submit" value="작성" id="submit_btn" />
               <label for="submit_btn">
                  <a class="write_btnIns">작성</a>
               </label>
            </div>
            <div class="write_btn">
               <input type="button" value="취소" id="cancel_btn" onclick="location.href='list'">
               <label for="cancel_btn">
                  <a class="write_btnIn">취소</a>
               </label>
            </div> 
            
        </div>
      </div>
        <table id="driverTbl" class="table_list"></table>
        <table id="tradeTbl" class="table_list"></table>
   </form>
   </div>
   </div>
   
         
      <script id="driverTemp" type="text/x-handlebars-template">
      <tr class = "title">
         <th>출발지</th>
         <th>도착지</th>
         <th>출발 날짜</th>
         <th>기사 이름</th>
         <th>선택</th>
         <th>신고</th>
      </tr>
      {{#each list}}
      <tr class = "brow">
         <td>{{start}}</td>
         <td>{{dest}}</td>
         <td>{{RESER_GO}}</td>
         <td class = "driver" code = "{{DRIVER_CODE}}">{{DRIVER_NAME}}</td>
         <td class = "choose">
            <select class = "type">
               <option value = 1 selected>난폭운전</option>
               <option value = 2>운행시간 미준수</option>
               <option value = 3>불친절</option>
               <option value = 4>음주 의심</option>
               <option value = 5>운행중 휴대전화 사용</option>
               <option value = 6>냉/난방 제대로 안해줌</option>
            </select>
         </td>
         <td class = "tdSingo"><button id="btnSingo">신고</button></td>
      </tr>
      {{/each}}
   </script>
   
   <div id="trade">
         <span class="start"></span> <span class="dest"></span>
      </div>
   
      <script type="text/x-handlebars-template" id="temp">
      <tr class = "title">
         <th class = "start">출발지</th>
         <th class = "dest">도착지</th>
         <th class = "plf">출발 플랫폼</th>
         <th class = "seatNum">좌석 번호</th>
         <th class = "ticket">출발 날짜 및 시간<th>
         <th class = "price">표 가격</th>
         <th class = "date">예매한 날짜</th>
      </tr>
      {{#each list}}
      <tr class = "trow">
         <td class = "start">{{start}}</td>
         <td class = "dest">{{dest}}</td>
         <td class = "platform_code">{{platform_code}}</td>
         <td class = "seat_num">{{seat_num}}</td>
         <td class = "reser_go">{{reser_go}}</td>
         <td class = "reser_price">{{numberFormat reser_price}}</td>
         <td class = "reser_date">{{dateFormat reser_date}}</td>
      </tr>
      {{/each}}
   </script>
   
      <script>
         Handlebars.registerHelper("dateFormat", function(reser_date) {
            return new Handlebars.SafeString(moment(reser_date).format(
                  "YYYY-MM-DD HH:mm:ss").toUpperCase());
         });
         Handlebars.registerHelper("age", function(ischild) {
            return ischild == "O" ? "어린이" : "성인";
         });
         Handlebars.registerHelper("numberFormat", function(reser_price) {
            return reser_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g,
                  ",")
                  + "원";
         });
      </script>
   
   <footer>
      <jsp:include page="../footer.jsp"></jsp:include>
   </footer>
   <!-- Scroll Up -->
   <div id="back-top">
      <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
   </div>
</body>

<script>
const myId = "${LoginVO.user_id}";
let reportType = 0;
let dCode = null;
$("#driverTbl").hide();
$("#tbl .trade").hide();
$("#tradeTbl").hide();
	$("#frmId").on("click", ".write-head .nice-select .list .option", function() {
		const value = $(this).attr("data-value");
		$("#type option").each(function() {
			$(this).attr("selected", $(this).val() == value);
		});
		selectChoose();
	});
function selectChoose() {
      $(frm.title).val("");
      $(frm.content).val("");
      if ($(frm.type).val() == 4) {
         alert("제목은 '출발지-도착지 교환신청'으로 고정됩니다.");
         $(frm.title).attr("readonly", true);
         $.ajax({
            url : "/final/user/trade.json",
            data : {"start" : null, "dest" : null},
            success : function(data) {
               if (data.count == 0) {
                  alert("교환 가능한 표가 없습니다.");
               } else {
                  const temp = Handlebars.compile($("#temp").html());
                  $("#tradeTbl").html(temp(data));
                  $("#tradeTbl .title th").each(function() {
                	 const className = $(this).attr("class");
                	 if (className == null) {
                		 $(this).hide();
                	 }
                  });
                  $("#tradeTbl").show();
               }
            }
         });
         $("#driverTbl").hide();
      } else if ($(frm.type).val() == 5){
         alert("제목은 '기사 신고-기사이름'으로,\n내용은 선택하신 신고 내용으로 고정됩니다.");
         $(frm.title).attr("readonly", true);
         const today = new Date();
         const year = today.getFullYear();
         const month = today.getMonth() + 1;
         const day = today.getDate();
         const hour = today.getHours();
         const min = today.getMinutes();
         let now = year + "/" + month + "/" + day + " " + hour + ":";
         if (min < 10) {
            now += "0" + min;
         } else {
            now += min;
         }
         $.ajax({
            url : "/final/bad/findDriver.json",
            data : {"user_id" : myId, "now" : now},
            success : function(data) {
               if (data.count > 0) {
                  const temp = Handlebars.compile($("#driverTemp").html());
                  $("#driverTbl").html(temp(data));
                  $("#driverTbl").show();
               } else {
                  alert("버스를 이용하신 내역이 없습니다.");
               }
            }
         });
         $("#tradeTbl").hide();
         $("#tbl .trade .ticket").html(null);
         $("#tbl .trade").hide();
      } else {
         $(frm.title).attr("readonly", false);
         $("#tradeTbl").hide();
         $("#driverTbl").hide();
         $("#tbl .trade .ticket").html(null);
         $("#tbl .trade").hide();
      }
}
   // 기사신고 테이블 클릭시
   $("#driverTbl").on("click", ".brow button", function(e) {
      e.preventDefault();
      const row = $(this).parent().parent();
      const driver = row.find(".driver");
      dCode = driver.attr("code");
      const dName = driver.html();
      if(!confirm(dName + "기사를 신고하십니까?")) {
         return;
      } else {
         reportType = row.find(".choose .type").val();
         $(frm.title).val("[신고]" + dName);
         $(frm.driver_code).val(dCode);
         $(frm.driver_type).val(reportType);
         switch (reportType) {
         case "1":
            $(frm.content).val("난폭운전");
            $("#content").val("난폭운전");
            break;
         case "2":
            $(frm.content).val("운행시간 미준수");
            $("#content").val("운행시간 미준수");
            break;
         case "3":
            $(frm.content).val("불친절");
            $("#content").val("불친절");
            break;
         case "4":
            $(frm.content).val("음주 의심");
            $("#content").val("음주 의심");
            break;
         case "5":
            $(frm.content).val("운행중 휴대전화 사용");
            $("#content").val("운행중 휴대전화 사용");
            break;
         case "6":
            $(frm.content).val("냉/난방 제대로 안해줌");
            $("#content").val("냉/난방 제대로 안해줌");
            break;
         }
      }
   });
      
   // 교환 테이블 클릭시
   $("#tradeTbl").on("click", ".trow", function() {
      let info = $(this).find(".start").html();
      info += "-" + $(this).find(".dest").html();
      let tradeTitle = info + " 교환신청";
      info += " " + $(this).find(".reser_go").html();
      info += " 출발 " + $(this).find(".seat_num").html() + "번 좌석"; 
      if (!confirm(info + " 표의 교환을 원하십니까?")) {
         return;
      } else {
         $(frm.title).val(tradeTitle);
         $("#tbl .trade .ticket").html(info);
         $("#tbl .trade").show();
      }
   });
   
   // 글쓰기 눌렀을 때
   $(frm).submit(function(e) {
      e.preventDefault();
      $(frm.content).val($("#content").val());
      if ($(frm.title).val().trim().length == 0) {
         if ($(frm.type).val() == 4) {
            alert("교환 가능한 표가 없어 작성할 수 없습니다.");
         } else {
            alert("제목을 입력해 주세요.");
            $(frm.title).focus();
         }
      } else if ($(frm.content).val().trim().length == 0) {
         alert("내용을 입력해 주세요.");
         $(frm.content).focus();
      } else if ($(frm.type).val() == 4){
      if ($("#tbl .trade .ticket").html().length == 0) {
         alert("교환할 표를 선택해 주세요.");
      } else {
         if (!confirm("등록하시겠습니까?")) {
               return;
            } else {
              $(frm.trade).val($("#tbl .trade .ticket").html());
               alert("등록 완료");
               frm.submit();
            }
         }
      } else if ($(frm.type).val() == 5) {
         if (!confirm("등록하시겠습니까?")) {
            return;
         } else {
            frm.submit();
         }
      } else {
         if (!confirm("등록하시겠습니까?")) {
               return;
            } else {
               alert("등록 완료");
               frm.submit();
            }
         }
   });
</script>
<!-- JS here -->
   <!-- All JS Custom Plugins Link Here here -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
   <!-- Jquery, Popper, Bootstrap -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/popper.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
   <!-- Jquery Mobile Menu -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.slicknav.min.js"></script>

   <!-- Jquery Slick , Owl-Carousel Plugins -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
   <!-- One Page, Animated-HeadLin -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/wow.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/animated.headline.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.magnific-popup.js"></script>

   <!-- Nice-select, sticky -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.nice-select.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.sticky.js"></script>

   <!-- contact js -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/contact.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.form.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/mail-script.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.ajaxchimp.min.js"></script>

   <!-- Jquery Plugins, main Jquery -->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</html>