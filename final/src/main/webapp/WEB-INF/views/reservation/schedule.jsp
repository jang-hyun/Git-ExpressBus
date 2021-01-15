<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스케줄</title>
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
.scTitle{font-size:20px;}
#scheduleTbl{
   border:1px solid #ededed;
   padding:20px;
}
.tblRow{
    position: relative;
    display: block;
    display: flex;
    flex-direction: row;
    align-items: stretch;
    color: #111236;
    text-decoration: none;
    cursor: pointer;
    box-shadow: 0 1px 3px 0 rgba(37,32,31,.3);
    border-radius: .375rem;
    z-index: 0;
    margin-bottom: .75rem;
}
.tblRow2{   
   padding: .75rem;
   border-radius: .375rem 0 0 .375rem;
   flex: 2 1 auto;
   box-shadow: 0 1px 3px 0 rgba(37,32,31,.3);
    z-index: 0;
}
.scDetails{
   display: flex;
    height: 100%;
    flex-direction: column;
}
.scInfo{
    display: block;
    flex-grow: 1;
}
.scInfo2{
   display: flex;
    flex-direction: column;
    justify-content: space-evenly;
}
.scDetailInfo{
   display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
.ticket_punchline{
    width: .75rem;
    margin: .375rem auto;
    padding: .375rem 0;
    background-image: linear-gradient(#dddde5,#dddde5);
    background-repeat: repeat-y;
    background-position: 50% 0;
    background-size: .125rem .5rem;
    position: relative;
    z-index: 1;
    flex: 0 0 auto;
    background-color: #fff;
}
.ticket_punchline_top{
   top: -.375rem;
}
.ticket_punchline_top:after {
    right: -50%;
    bottom: 200%;
    left: -50%;
}
.ticket_punchline_bottom{
   bottom: -.375rem;
}
.ticket_punchline_bottom:after {
    right: -50%;
    bottom: 100%;
    left: -50%;
}
.BuyTicket{
   position: absolute;
    width: .75rem;
    height: .375rem;
    overflow: hidden;
}
.BuyTicket:after{
   position: relative;
    content: "";
    display: block;
    width: 1.5rem;
    height: 1.5rem;
    transform: translateZ(0);
    border: .375rem solid #fff;
    border-radius: .75rem;
    box-shadow: inset 0 1px 3px 0 rgba(37,32,31,.3);
}
@media (min-width: 32.3125rem)
.ticket_paper{
   flex: 0 0 32%;
}
.ticket_paper {
    display: flex;
    padding: 1.125rem;
    justify-content: center;
    align-items: center;
    min-width: 30%;
    border-radius: 0 .375rem .375rem 0;
}
.ticket_paper_container{
   display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    align-content: center;
}
.ticket_paper:after {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    content: "";
    display: block;
    z-index: -1;
    transition: opacity .2s ease-in-out;
    border-radius: inherit;
    box-shadow: 0 4px 14px 0 rgba(37,32,31,.25);
    opacity: 0;
    pointer-events: none;
}
.ticket_paper_container{
   display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    align-content: center;
}
.ticket_price{
   display: flex;
    align-items: center;
}
.ticket_price_txt{
   font-weight: 700;
   font-size: 1.25rem;
    line-height: 1.625rem;
}
.ticket_btn{
   margin-top: .375rem;
   display: inline-block;
    margin: 0;
    padding: .375rem 1.125rem;
    border: 0;
    border-radius: .375rem;
    background-image: linear-gradient(-180deg,var(--bpk-button-primary-gradient-start-color,#00a698),var(--bpk-button-primary-gradient-end-color,#00a698));
    font-weight: 700;
    line-height: 1.5rem;
    text-align: center;
    text-decoration: none;
    box-shadow: none;
    cursor: pointer;
    vertical-align: middle;
    user-select: none;
    background-color: var(--bpk-button-primary-background-color,#00a698);
    font-size: var(--bpk-button-font-size,1.1875rem);
}
.ticket_btn svg{
   fill: currentColor;
}
svg:not(:root) {
    overflow: hidden;
}
.departInfo{
   display: flex;
    max-width: 32%;
    padding-right: .375rem;
    flex-direction: column;
    align-items: flex-end;
    flex: 0 1 32%;
    text-align: right;
}
.partTime{
   color: #444560;
   font-size: 1.25rem;
    line-height: 1.625rem;
    font-weight: 400;
}
.depTer{
   font-size: 1rem;
    line-height: 1.25rem;
    font-weight: 400;
    color: #68697f;
}
.stopsInfoContainer{
   max-width: 20%;
    padding: 0 .375rem;
    flex: 0 1 36%;
    text-align: center;
}
.stopLine{
   position: relative;
    display: block;
    width: 90%;
    height: .125rem;
    margin: .375rem auto;
    padding: 0;
    border-radius: .375rem;
    background-color: #68697f;
    line-height: 0;
    text-align: center;
}
.stopsOneWay{
   display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: baseline;
}
.oneWay_txt{
   color: #00a698;
    white-space: pre;
    font-size: .75rem;
    line-height: 1rem;
    font-weight: 400;
}
.arrInfo{
   display: flex;
    max-width: 32%;
    padding-left: .375rem;
    flex-direction: column;
    align-items: flex-start;
    flex: 0 1 32%;
    text-align: left;
}
.arrTer{
   font-size: 1rem;
    line-height: 1.25rem;
    font-weight: 400;
}
.ticket_underLine{
   margin-top: .375rem;
    margin-bottom: .375rem;
    width: 100%;
    height: .0625rem;
    box-shadow: inset 0 1px 0 0 #dddde5;
}
.ticket_underBox{
   display: flex;
    flex-direction: row;
    justify-content: space-between;
}
.tier_container{
   flex: 0 0 90%;
}
.tier_txt{
   align-self: flex-start;
    text-align: left;
    font-size: .75rem;
    line-height: 1rem;
    font-weight: 400;
}
.ticket_enabled{
   display: flex;
    margin-top: .375rem;
    align-items: center;
    flex-grow: 1;
    flex-basis: 40%;
    color: #68697f;
    fill: #68697f;
}
.ticket_enabled_seat{
   align-self: flex-start;
    text-align: right;
    font-size: .75rem;
    line-height: 1rem;
    font-weight: 400;
}
.ticket_enabled_txt{
   color : red;
   max-width: 3.75rem;
   align-self: flex-start;
    text-align: left;
        font-size: .75rem;
    line-height: 1rem;
    font-weight: 400;
}
.ticket_abled_txt{
   color : blue;
   max-width: 3.75rem;
   align-self: flex-start;
    text-align: left;
        font-size: .75rem;
    line-height: 1rem;
    font-weight: 400;
}
.ticket_enabled_container{
   margin-top: .375rem;
   max-width:50px;
    flex: 1 1 22%;
}
</style>

</head>
<body>
<!-- Preloader Start -->
   <div id="preloader-active">
      <div
         class="preloader d-flex align-items-center justify-content-center">
         <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
               <img
                  src="${pageContext.request.contextPath}/resources/assets/img/logo/loder.jpg"
                  alt="">
            </div>
         </div>
      </div>
   </div>
   <!-- Preloader Start -->
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
                               <li class="active">   
                               예매정보입력 
                               </li>
                               <li>
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
   <form action = "/final/reservation/seatChoose" method = "post" name = "frm">
      <input type="hidden" name ="start_terminal_code" value="${ReservationVO.start_terminal_code }">
      <input type="hidden" name ="dest_terminal_code" value="${ReservationVO.dest_terminal_code }">
      <input type="hidden" name ="reser_go" value="${ReservationVO.reser_go }">
      <input type = "hidden" name = "reser_price" value = 0>
      <input type = "hidden" name = "bus_code" value = "">
      <input type = "hidden" name = "user_id" value = "${LoginVO.user_id}">
      <input type = "hidden" name = "platform_code" value = "">
      <input type = "hidden" name = "schedule_start" value = "">
   </form>
   <div id="headTitle">
        <h1>배차조회</h1>
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
                        <span>※출발시간 30분 전까지만 예매 가능합니다.</span>
                     </div>
                  </div>
               </div>
               <!-- listing Details Stat-->
               <div class="listing-details-area">
                  <div class="container">
                     <div class="row">
                        <div class="col-lg ">
                           <div class="single-listing mb-30">
                              <div id="scheduleTbl" border=1></div>
                              <script id="scheduleTemp" type="text/x-handlebars-template">
                                 {{#each .}}
                                 <div class = "tblRow" able = "{{checkClick schedule_start}}" platform = "{{platform_code}}" time = "{{schedule_start}}" price = "{{schedule_price}}" tier = "{{bus_tier}}" bus_code = "{{bus_code}}">
                                 <div class = "tblRow2">
                              <div class="scDetails">
                              <div class = "scInfo">
                              <div class = "scInfo2">
                              <div class="scDetailInfo">
                                 <div class="ticket_enabled_container">
                                    <span class="{{checkStyle schedule_start}}">{{checkTime schedule_start}}</span>
                                 </div>
                                 <div class="departInfo">
                                    <span class="depTer">${TerminalVO.start }</span>
                                    <span class="partTime">{{schedule_start}}</span>
                                 </div>
                                 <div class="stopsInfoContainer">
                                    <div class="stopLine"></div>
                                    <div class="stopsOneWay">
                                       <span class="oneWay_txt">편도</span>
                                    </div>
                                 </div>
                                 <div class="arrInfo">
                                    <span class="arrTer">${TerminalVO.dest }</span>
                                 </div>
                              </div>
                              </div>
                                 </div>
                              <div class="ticket_underLine"></div>
                              <div class="ticket_underBox">
                                 <div class="tier_container">
                                    <span class="tier_txt">{{tierFormat bus_tier}}</span>
                                 </div>
                                 <div class="ticket_enabled">
                                    <span class="ticket_enabled_seat">{{calcSeat maxSeat reservedSeat}}</span>
                                 </div>
                              </div>
                              </div>   
                                 </div>
                              <div class="ticket_punchline">
                              <div class="BuyTicket ticket_punchline_top">
                              </div>
                              <div class="BuyTicket ticket_punchline_bottom">
                              </div>
                              </div>
                              <div class="ticket_paper">
                                 <div class="ticket_paper_container">
                                    <div class="ticket_price">
                                       <span class="ticket_price_txt">{{numberFormat schedule_price}}</span>
                                    </div>
                                    <button class="ticket_btn">선택</button>
                                 </div>
                              </div>
                              </div>
                                 {{/each}}
                                 </script>
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
   		function scheduleCheck(schedule_start) {
   		 const today = new Date();
   		const year = today.getFullYear();
   		const month = today.getMonth() + 1;
   		const day = today.getDate();
   		const hour = today.getHours();
   		const min = today.getMinutes();
   		const now = hour * 60 + min;

   		const reser_go = "${ReservationVO.reser_go}".split("/");
         
   		const schedule = schedule_start.split(":");
   		const checkHour = schedule[0];
   		const checkMin = schedule[1];
   		const checkTime = parseInt(checkHour * 60) + parseInt(checkMin) - 30;

         if (parseInt(reser_go[0]) > year) {
        	 return true;
         } else if (parseInt(reser_go[0]) < year) {
        	 return false;
         } else {
        	 if (parseInt(reser_go[1]) > month) {
        		 return true;
             } else if (parseInt(reser_go[1]) < month) {
            	 return false;
             } else {
            	 if (parseInt(reser_go[2]) > day) {
            		 return true;
                 } else if (parseInt(reser_go[2]) < day) {
                	 return false;
                 } else {
                	 return now <= checkTime ? true : false;
                 }
             }
         }
   		}
   
      // 예매 가능 여부
      Handlebars.registerHelper("checkTime", function(schedule_start) {
         return scheduleCheck(schedule_start) ? "가능" : "불가능";
      });
      
      // 가능 여부에 따라 스타일 다르게 줘야함
      Handlebars.registerHelper("checkStyle", function(schedule_start) {
          return scheduleCheck(schedule_start) ? "ticket_abled_txt" : "ticket_enabled_txt";
      });
      
      // 예약페이지로 넘길지 체크
      Handlebars.registerHelper("checkClick", function(schedule_start) {
          return scheduleCheck(schedule_start);
      });
      
      // 좌석 수 계산
      Handlebars.registerHelper("calcSeat", function(maxSeat, reservedSeat) {
         return (maxSeat - reservedSeat) + " / " + maxSeat;
      });
      
      // 가격 컴마 찍어주기
      Handlebars.registerHelper("numberFormat", function(schedule_price) {
            return schedule_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원";
      });
      
      // 등급 책정
      Handlebars.registerHelper("tierFormat", function(bus_tier) {
         switch (bus_tier) {
         case 1:
            return "프리미엄";
         case 2:
            return "우등";
         case 3:
            return "일반";
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
</body>
<script>
   const chooseDate = $(frm.reser_go).val().trim();
   
   
   //스케줄 선택시
   $("#scheduleTbl").on("click", ".tblRow", function() {
      if ($(this).attr("able") == "true") {
    	  let time = $(this).attr("time");
    	  const price = $(this).attr("price");
    	  const tier = $(this).attr("tier");
    	  const bus_code = $(this).attr("bus_code");
    	  const platform_code = $(this).attr("platform");
    	  const schedule_start = time;
          time = $(frm.reser_go).val() + " " + time;
          if (!confirm(time + "버스로 정하셨습니까?")) {
             return;
          } else {
             $(frm.schedule_start).val(schedule_start);
             $(frm.platform_code).val(platform_code);
             $(frm.reser_go).val(time.trim());
             $(frm.bus_code).val(bus_code);
             $(frm.reser_price).val(price);
             frm.submit();
          }
      } else {
    	  alert("예약 불가능한 버스입니다.");
      }
   });
   
   const start_terminal_code = "${ReservationVO.start_terminal_code}";
   const dest_terminal_code = "${ReservationVO.dest_terminal_code}";
   const bus_tier = "${ReservationVO.bus_tier}";
   getList();
   function getList() {
      $.ajax({
         url : "/final/schedule/list",
         data : {
            "start_terminal_code" : start_terminal_code,
            "dest_terminal_code" : dest_terminal_code,
            "bus_tier" : bus_tier, 
            "reser_go" : chooseDate
         },
         success : function(data) {
            const temp = Handlebars.compile($("#scheduleTemp").html());
            document.getElementById("scheduleTbl").innerHTML = (temp(data));
//             $("#scheduleTbl").html(temp(data));
         }
      });
   }
</script>
</html>