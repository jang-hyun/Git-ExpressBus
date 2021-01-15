<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<title>좌석 선택</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
   href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">

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
<style>
.process {
    display: inline-block;
    margin-top: 10px;
    list-style: none;
}
.process .active{
   color:#fff;
}
.process li.active:after {
    background-position: right 0;
}
.process li:after {
    display: inline-block;
    content: '';
    background: url(${pageContext.request.contextPath}/resources/assets/img/close/arrow_process.png) right -18px no-repeat;
    background-size: 28px auto;
    width: 28px;
    height: 18px;
    margin: 0 0 -3px 30px;
}
.process li + li {
    margin-left: 30px;
}
.process li {
    display: inline-block;
    font-size: 15px;
    color: #a1a6b3;
}
.process li:last-child::after{
   content:none;
}
#headTitle{margin:40px auto; text-align:center;}

#reservation{
    position: relative;
}

#reservation:before {
    display: block;
    content: "";
    position: absolute;
    left: 37px;
    top: 0;
    width: 1px;
    height: 100%;
    background-color: #ff3d1c;
}
.roundBox:first-child {
    padding-bottom: 10px;
}
.roundBox:first-child {
    margin-top: 0 !important;
}
.roundBox {
    display: block;
    overflow: hidden;
    position: relative;
    min-height: 35px;
    padding-left: 67px;
    font-size: 22px;
}
.departure:before {
    content: "출발";
}
.arrive:before {
    content: "도착";
}
.roundBox:before {
    display: block;
    position: absolute;
    left: 20px;
    top: 0;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    background-color: #ff3d1c;
    color: #fff;
    font-size: 12px;
    text-align: center;
    line-height: 35px;
}
.roundBox:first-child:after{
    display: block;
    content: "";
    position: absolute;
    left: 37px;
    top: 35px;
    width: 1px;
    height: 100%;
    border-left: 1px solid #ff3d1c;
}
.roundBox.arrive:after{
    display: block;
    content: '';
    position: absolute;
    top: 35px;
    left: 35px;
    background: #ff3d1c;
    width: 5px;
    height: 100%;
}
.reserveDate{margin-bottom:30px; margin-left:30px;}

.reserCT{font-size:15px;}
.reserCT_info{font-size:20px; color:#FE642E; margin-left:10px; font-weight:bold;}

.box{float: left; cursor: pointer;}
#p { width: 320px; padding-left : 20px; padding-right : 20px;}
#u {padding-left : 35px;width: 317px;height: 500px;}
#n {padding : 0px 33px 0px 0px;width: 340px;height: 700px;}
#container{width : 317px; height : 879px; padding-top : 170px;}
.box{width : 60px; height : 60px; position : relative; }
.seatNum1 {margin-left : 25px; position : absolute; top : 17%;}
.seatNum2 {margin-left : 21px; position : absolute; top : 17%;}
.seatChoosePart{
   display:flex;
   border: 1px solid #ededed;
    padding: 30px 0px 30px 30px;
    max-width:600px;
    min-height:950px;
}
#countBox{
   list-style:none;
}
.countPayBox{
   display:flex;
   margin-left:20px;
   flex-direction:column;
   border-left:1px solid #ededed;
   width:100%;
}
.selectView{
   margin: 0;
    padding: 0;
    font-weight: normal;
    color: #666;
    font-size: 12px;
    line-height: 1.5;
    letter-spacing: -0.03em;
}
.countBoxs{
   position: relative;
    height: 136px;
    text-align: center;
}
.division{
   width: 100%;
    padding: 36px 5px;
    box-sizing: border-box;
    border-bottom: 1px solid #e6e6e6;
}
.child{
   width: 60%;
   height:100%;
    padding: 36px 5px;
    box-sizing: border-box;
    border-bottom: 1px solid #e6e6e6;
}
.division em{
   display: block;
    word-break: break-all;
    font-size: 13px;
    color: #666;
    font-weight: bold;
    font-style: normal;
}
.text_count{
   font-size: 30px;
    color: #000;
}
.countBtn_wrap{
   position: absolute;
    top: 0;
    right: 0;
    width: 40%;
    height: 100%;
    border-left: 1px solid #e6e6e6;
    border-bottom: 1px solid #e6e6e6;
}
.countBtn_wrap ul {
    overflow: hidden;
    padding: 20px 0;
}
.countBtn_wrap li {
    float: left;
    width: 100%;
    height: 100%;
    padding: 5px;
    box-sizing: border-box;
}
.btnUpDown{
   position: relative;
    display: inline-block;
    vertical-align: middle;
    cursor: pointer;
    outline:0;
    border:0;
}
.countBtn_wrap ul li .btnUpDown {
    width: 100%;
    height: 100%;
    min-height: 40px;
    margin: 0 auto;
    text-align: center;
    background-color: #f3f4f6;
}
.countBtn_wrap ul li .btnUpDown span {
    display: block;
    width: 100%;
    height: 100%;
    text-indent: -9999px;
}
.countBtn_wrap ul li .btnUpDown span.ico_plus {
    background: url(${pageContext.request.contextPath}/resources/assets/img/close/ico_plus_gray.png) 50% 50% no-repeat;
    background-size: 16px 16px;
}
.countBtn_wrap ul li .btnUpDown span.ico_minus {
    background: url(${pageContext.request.contextPath}/resources/assets/img/close/ico_minus_gray.png) 50% 50% no-repeat;
    background-size: 16px 2px;
}

:root {
  --bg: #3C465C;
  --primary: #ff3d1c;
  --solid: #9DDDE9;
  --btn-w: 10em;
  --dot-w: calc(var(--btn-w)*.2);
  --tr-X: calc(var(--btn-w) - var(--dot-w));
}
* {box-sizing: border-box;}
*:before, *:after {box-sizing: border-box;}
.btnReser {
  position: relative;
  margin: 20px auto;
  width: var(--btn-w);
  color: var(--primary);
  border: .15em solid var(--primary);
  border-radius: 5em;
  text-transform: uppercase;
  text-align: center;
  font-size: 1.3em;
  line-height: 2em;
  cursor: pointer;  
}
.dot {
  content: '';
  position: absolute;
  top: 0;
  width: var(--dot-w);
  height: 100%;
  border-radius: 100%;
  transition: all 300ms ease;
  display: none;
}
.dot:after {
  content: '';
  position: absolute;
  left: calc(50% - .4em);
  top: -.4em;
  height: .8em;
  width: .8em;
  background: var(--primary);
  border-radius: 1em;
  border: .25em solid var(--solid);
  box-shadow: 0 0 .7em var(--solid),
        0 0 2em var(--primary);
}
.btnReser:hover .dot,
.btnReser:focus .dot {
  animation: atom 2s infinite linear;
  display: block;
}
@keyframes atom {
  0% {transform: translateX(0) rotate(0);}
  30%{transform: translateX(var(--tr-X)) rotate(0);}
  50% {transform: translateX(var(--tr-X)) rotate(180deg);}
  80% {transform: translateX(0) rotate(180deg);}
  100% {transform: translateX(0) rotate(360deg);}
}
@media screen and (max-width:767px){
   .seatChoosePart{
      flex-direction:column;
      padding:0;
      width:317px;
      margin: 0 auto;
   }
   #container{
      flex-direction:column;
   }
   .countPayBox{
      flex-direction:column;
      margin:0;
   }
}

@media screen and (max-width:992px){
   .seatChoosePart{
      flex-direction:column;
      padding:0;
      width:317px;
      margin: 0 auto;
   }
   #container{
      flex-direction:column;
   }
   .countPayBox{
      flex-direction:column;
      margin:0;
   }
}
</style>
</head>
<body>
   <header>
      <!-- 헤더부분 -->
      <jsp:include page="../header.jsp"></jsp:include>
   </header>
   <!-- 진행과정 Start-->
        <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>고속버스예매</h2>
                            <ol class="process">   
                               <li>   
                                  예매정보입력 
                               </li>
                               <li class="active">
                                  좌석선택
                               </li>
                               <li>
                                  예매완료
                               </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--진행과정 End -->
        <div id="headTitle">
        <h1>좌석 선택</h1>
        </div>
   <!-- listing Area Start -->
        <div class="listing-area pt-120 pb-120">
      <div class="container">
         <div class="row">
            <!-- Left content -->
            <div class="col-xl-4 col-lg-4 col-md-6">
               <div class="row">
                  <div class="col-12">
                     <div class="small-section-tittle2 mb-45">
                        <h4>Schedule Infomation</h4>
                     </div>
                  </div>
               </div>
               <!-- Job Category Listing start -->
               <div class="category-listing mb-50">
                  <!-- single one -->
                  <div class="single-listing">
                     <div class="reserveDate">
                        <h3>${ReservationVO.reser_go }</h3>
                     </div>
                     <div id="reservation">
                        <p class="roundBox departure">
                           ${TerminalVO.start }
                        </p>
                        <p class="roundBox arrive">
                           ${TerminalVO.dest }
                        </p>
                     </div>
                     <hr>
                           <div class="reserCompany">
                        <span class="reserCT">고속사</span>
                        <span class="reserCT_info">${BusCompanyVO.company_name }</span>
                     </div>
                     <div class="reserTier">
                        <span class="reserCT">버스등급</span>
                        <span class="reserCT_info">
                        <c:if test="${max == 21}">
                           프리미엄
                        </c:if>
                        <c:if test="${max == 28}">
                           우등
                        </c:if>
                        <c:if test="${max == 45}">
                           일반
                        </c:if>
                        </span>
                     </div>
                     
                  </div>
                  <div class="single-listing">
                     <a href="/final/home" class="btn list-btn mt-20">다시 선택하기</a>
                  </div>
               </div>
               <!-- Job Category Listing End -->
            </div>
            <!-- Right content -->
            <div class="col-xl-8 col-lg-8 col-md-6">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="count mb-35">
                        <span>※어린이 요금은 기본 요금의 50%입니다.</span>
                     </div>
                  </div>
               </div>
               <!-- listing Details Stat-->
               <div class="listing-details-area">
                  <div class="container">
                     <div class="row">
                        <div class="col-lg ">
                           <div class="single-listing mb-30">
                              <div class="seatChoosePart">
                              <div id="container" class="col-lg" 
                                 style="background-image: url(/final/seat/display?fileName=bus_image.png)">
                                 <c:if test="${max == 21}">
                                    <div id="p"></div>
                                    <script id="temp" type="text/x-handlebars-template">
                                       {{#each .}}
                                       <div class = "box" style = "{{primium canChoose seatNum}}" clicked = "false">
                                          <span class = "{{thisLength seatNum}}">{{checkSeat seatNum canChoose}}</span>
                                       </div>
                                       {{/each}}
                                       </script>
                                 </c:if>
                                 <c:if test="${max == 28}">
                                    <div id="u"></div>
                                    <script id="temp" type="text/x-handlebars-template">
                                       {{#each .}}
                                       <div class = "box" style = "{{honors canChoose seatNum}}" clicked = "false">
                                          <span class = "{{thisLength seatNum}}">{{checkSeat seatNum canChoose}}</span>
                                       </div>
                                       {{/each}}
                                       </script>
                                 </c:if>

                                 <c:if test="${max == 45}">
                                    <div id="n"></div>
                                    <script id="temp" type="text/x-handlebars-template">
                                       {{#each .}}
                                       <div class = "box" style = "{{normal canChoose seatNum}};" clicked = "false">
                                          <span class = "{{thisLength seatNum}}">{{checkSeat seatNum canChoose}}</span>
                                       </div>
                                       {{/each}}
                                       </script>
                                 </c:if>
                              </div>
                                 <div class="countPayBox ">
                                    <ul id="countBox">
                                       <li class="selectView">
                                          <div class="countBoxs">
                                             <p class="division child">
                                                <em>어린이</em> <span id="child" class="text_count">0</span>
                                             </p>
                                             <div class="countBtn_wrap">
                                                <ul>
                                                   <li>
                                                      <button class="btnUpDown countBtn_add" id="btnPlus">
                                                         <span class="ico_plus">증가</span>
                                                      </button>
                                                   </li>
                                                   <li>
                                                      <button class="btnUpDown countBtn_minus" id="btnMinus">
                                                         <span class="ico_minus">감소</span>
                                                      </button>
                                                   </li>
                                                </ul>
                                             </div>
                                          </div>
                                       </li>
                                       <li class="selectView">
                                          <div class="countBoxs">
                                             <p class="division">
                                                <em>선택한 좌석 </em> <span id="seatCount" class="text_count">0</span>
                                             </p>
                                          </div>
                                       </li>
                                       <li class="selectView">
                                          <div class="countBoxs">
                                             <p class="division">
                                                <em>총 결제금액</em> <span id="price" class="text_count">0원</span>
                                             </p>
                                          </div>
                                       </li>
                                    </ul>
                                    <div>
                                       <div class="btnReser" id="btnReser">
                                          <span>예약</span>
                                          <div class="dot"></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
     <!-- listing Details End -->
   <footer>
      <jsp:include page="../footer.jsp"></jsp:include>
    </footer>
     <!-- Scroll Up -->
   <div id="back-top">
      <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
   </div>
   <script>
      // 좌석 번호에 따라서 클래스 부여
      Handlebars.registerHelper("thisLength", function(seatNum) {
         return seatNum < 10 ? "seatNum1" : "seatNum2";
      });
      Handlebars.registerHelper("checkSeat", function(seatNum, canChoose) {
        return canChoose ? seatNum : null;
      });
      // 프리미엄 스타일
      Handlebars.registerHelper("primium", function(canChoose, seatNum) {
        var url = "/final/seat/display?fileName=";
        url += canChoose + ".png";
        var style = "background-image : url(" + url + ");";
        if (seatNum % 3 == 2) {
           style += "margin-right : 50px;";
        } else if (seatNum % 3 == 0) {
           style += "margin-left : 40px;";
        }
        return style;
      });

      // 우등 스타일
      Handlebars.registerHelper("honors", function(canChoose, seatNum) {
         let url = "/final/seat/display?fileName=";
        url += canChoose + ".png";
        let style = "background-image : url(" + url + ");";
        if (seatNum <= 24) {
           if (seatNum % 3 == 2) {
              style += "margin-right : 30px;";
           } else if (seatNum % 3 == 0) {
              style += "margin-left : 30px;";
           }
        }
        return style;
      });
      
      // 일반 스타일
      Handlebars.registerHelper("normal", function(canChoose, seatNum) {
    	  let url = "/final/seat/display?fileName=";
          url += canChoose + ".png";
          let style = "background-image : url(" + url + ");";
          if (seatNum <= 40) {
            if (seatNum % 4 == 2) {
               style += "margin-right : 30px;";
            } else if (seatNum % 4 == 3) {
               style += "margin-left : 30px;";
            }
          }
          return style;
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
</body>
<script>

   const IMP = window.IMP; // 생략가능
   IMP.init('imp04195177'); // 가맹점 식별코드
   
   let count = 0;
   const platform_code = "${ReservationVO.platform_code}";
   const start_terminal_code = "${ReservationVO.start_terminal_code }";
   const dest_terminal_code = "${ReservationVO.dest_terminal_code }";
   const schedule_start = "${ReservationVO.schedule_start}";
   const user_id = "${LoginVO.user_id}";
   const user_email = "${LoginVO.user_email}";
   const user_tel = "${LoginVO.user_tel}";
   const bus_code = "${ReservationVO.bus_code}";
   let reser_price = parseInt("${ReservationVO.reser_price}");
   const reser_go = "${ReservationVO.reser_go}";
   const start = "${TerminalVO.start}";
   const dest = "${TerminalVO.dest}";
   const max = "${max}";
   let sum = 0;
   let child = 0;
   let childCount = 0;
   // 어린이 수 정하는 버튼들, 처음에는 비활성화 상태, 좌석 선택시 활성화 시킴.
   $("#btnMinus").attr("disabled", true);
   $("#btnPlus").attr("disabled", true);
   getSeatList();
   function getSeatList() {
      $.ajax({
         url : "/final/reservation/list",
         data : {
            "bus_code" : bus_code,
            "reser_go" : reser_go
         },
         success : function(data) {
            const temp = Handlebars.compile($("#temp").html());
            if (max == 21) {
               $("#p").html(temp(data));
            } else if (max == 28) {
               $("#u").html(temp(data));
            } else if (max == 45) {
               $("#n").html(temp(data));
            }
         }
      });
   }
   
   // 좌석 클릭시
   $("#container").on("click", ".box", function() {
      const box = $(this);
      const number = box.find(".seatNum1, .seatNum2").html();
      if (number.length > 0) {
         if (box.attr("clicked") == "false") {
            count++;
            box.css("background-image", "url(/final/seat/display?fileName=click.png)");
            box.attr("clicked", true);
         } else {
            count--;
            box.css("background-image", "url(/final/seat/display?fileName=true.png)");
            box.attr("clicked", false);
         }
         $("#price").html(numberFormat(priceSum()) + "원");
         $("#seatCount").html(count);
         $("#btnPlus").attr("disabled", count > 0 ? false : true);
      }
   });
   
   // 예약버튼 클릭시
   $("#btnReser").click(function() {
      if (count > 0) {
         if (!confirm("모든 좌석을 선택하셨습니까?")) {
            return;
         } else {
            child = childCount;
            $("#container .box").each(function() {
               const box = $(this);
               let ischild = "X";
               if (box.attr("clicked") == "true") {
                  if (childCount > 0) {
                     ischild = "O";
                     childCount--;
                  }
                  sum += ischild == "O" ? parseInt(reser_price / 2) : parseInt(reser_price);
               }
            });
            kakaoPay();
         }
      } else {
         alert("적어도 한 자리 이상 선택해야 합니다.");
      }
   });
   
   //어린이 수 선택 버튼들
   $("#btnPlus").on("click", function() {
      if (count > childCount) {
         childCount++; 
         if (childCount == count) {
            $(this).attr("disabled", true);
         }
      }
      document.getElementById("price").innerHTML = numberFormat(priceSum()) + "원";
      document.getElementById("child").innerHTML = childCount;
//       $("#price").html(numberFormat(priceSum()) + "원");
//       $("#child").html(childCount);
      $("#btnMinus").attr("disabled", false);
   });
   $("#btnMinus").on("click", function() {
      if (childCount > 0) {
         childCount--;
         if (childCount == 0) {
            $("#btnMinus").attr("disabled", true);
         }
      }
      document.getElementById("price").innerHTML = numberFormat(priceSum()) + "원";
      document.getElementById("child").innerHTML = childCount;
//       $("#price").html(numberFormat(priceSum()) + "원");
//       $("#child").html(childCount);
      $("#btnPlus").attr("disabled", false);
   });
   
   function kakaoPay() {
      let url = null;
      IMP.request_pay({
          pg : 'kakao',
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : start + " - " + dest + " " + reser_go,
          amount : sum,
          buyer_email : user_email,
          buyer_name : user_id,
          buyer_tel : user_tel,
          buyer_addr : '인천일보 아카데미',
          buyer_postcode : null,
          m_redirect_url : '/final/user/myPage'
      }, function(rsp) {
          if ( rsp.success ) {
              var msg = '결제가 완료되었습니다.';
              msg += '\n결제 금액 : ' + rsp.paid_amount;
            if (rsp.apply_num.length != 0) {
               msg += "\n카드 승인번호 : " + rsp.apply_num;
            }
              reservation();
              url = "/final/user/myPage";
          } else {
              var msg = rsp.error_msg;
              url = "/final/home";
          }
          alert(msg);
          if (url == "/final/user/myPage") {
             location.href = url;
          } else {
             if (!confirm("메인페이지로 돌아가시겠습니까?")) {
                sum = 0;
                return;
             } else {
                location.href = url;
             }
          }
      });
   }
   
   function reservation() {
      $("#container .box").each(function() {
          const box = $(this);
          const seatNum = $(this).find(".seatNum1, .seatNum2").html();
          let ischild = "X";
          if (box.attr("clicked") == "true") {
             if (child > 0) {
            ischild = "O";
            child--;
         }
             $.ajax({
               type : "post",
               url : "/final/reservation/insert",
               data : { 
                  "platform_code" : platform_code, 
                  "start_terminal_code" : start_terminal_code, 
                  "dest_terminal_code" : dest_terminal_code,
                  "schedule_start" : schedule_start,
                  "user_id" : user_id,
                  "bus_code" : bus_code,
                  "seat_num" : seatNum,
                  "reser_price" : ischild == "O" ? reser_price / 2 : reser_price,
                  "reser_go" : reser_go, 
                  "ischild" : ischild},
               success : function() {
                  
               }
            });
          }
       });
   }
   
   function priceSum() {
      var result = 0;
      result += reser_price * (count - childCount);
      result += (reser_price * childCount) / 2;
      return result;
   }
   
   function numberFormat(x) {
       return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   }
</script>
</html>