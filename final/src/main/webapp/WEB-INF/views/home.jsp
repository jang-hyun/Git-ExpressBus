<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>고속버스 통합예매</title>
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
      .row{
         justify-content:center;
      }
      #back-top{
         z-index:1;
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
      <jsp:include page="header.jsp"></jsp:include>
   </header>
   <main> <!-- Hero Area Start-->
   <div class="slider-area hero-overly">
      <div
         class="single-slider hero-overly  slider-height d-flex align-items-center">
         <div class="container">
            <div class="row justify-content-center">
               <div class="col-xl-8 col-lg-9">
                  <!-- Hero Caption -->
                  <div class="hero__caption">
                     <span>Express Bus Reservation</span>
                  </div>
                  <jsp:include page="reservation/reservation.jsp"></jsp:include>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div id="darken-background_terminal">
      <div id="lightbox">
         <div id="title_sel">
            <div class="title_sub">출/도착지 선택</div>
            <button class="remodal-close" id="btnClose_terminal"></button>
         </div>
         <div id="contents">
            <div id="contents_place">
               <div class="startTer">
                  출발지
                  <div id="userStart"></div>
               </div>
<!--                <button id="contents_btnChange"></button> -->
               <div class="destTer">
                  도착지
                  <div id="userDest"></div>
               </div>
            </div>
            <div id="search_part">
               <div class="input_place">
                  <input type="text" placeholder="지역명 입력" class = "txt">
               </div>
               <div class="search_place">
                  <a href="#">검 색</a>
               </div>
            </div>
         </div>
         <div id="menu"
            style="height: 420px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
            <ul id="area_list">
               <li><a class="place" val="">전체</a></li>
               <li><a class="place" val="서울">서울</a></li>
               <li><a class="place" val="경기/인천">경기/인천</a></li>
               <li><a class="place" val="강원">강원도</a></li>
               <li><a class="place" val="경남">경상남도</a></li>
               <li><a class="place" val="경북">경상북도</a></li>
               <li><a class="place" val="전남">전라남도</a></li>
               <li><a class="place" val="전북">전라북도</a></li>
               <li><a class="place" val="충남">충청남도</a></li>
               <li><a class="place" val="충북">충청북도</a></li>
            </ul>
            <div id="terminalList"></div>
            <script id="startTemp" type="text/x-handlebars-template">
            {{#each .}}
               <div class = "startTerminal" code = "{{terminal_code}}" tabindex="0">{{terminal_place1}}</div>
            {{/each}}
            </script>
            <script id="destTemp" type="text/x-handlebars-template">
            {{#each .}}
               <div class = "destTerminal" code = "{{terminal_code}}" tabindex="0">{{terminal_place1}}</div>
            {{/each}}
                </script>
         </div>
         <div>
            <button id="btnChoose_terminal">선택 완료</button>
         </div>
      </div>
   </div>
   <!--Hero Area End--> <!-- Categories Area Start -->
   <div class="categories-area section-padding30">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <!-- Section Tittle -->
               <div class="section-tittle text-center mb-80">
                  <h2>Categories</h2>
               </div>
            </div>
         </div>
         <div class="row" id="info">
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap" >
                     <h5>
                        <a style="cursor:pointer;" onclick="window.scrollTo(0,0);">버스 예약</a>
                     </h5>
                     <a style="cursor:pointer;" onclick="window.scrollTo(0,0);">View Details</a>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap">
                     <h5>
                        <a href="/final/user/myPage">예약 확인/취소</a>
                     </h5>
                     <a href="/final/user/myPage">View Details</a>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap">
                     <h5>
                        <a href="https://www.kobus.co.kr/oprninf/arscgd/oprnArscGd.do">도착 시간 안내</a>
                     </h5>
                     <a href="https://www.kobus.co.kr/oprninf/arscgd/oprnArscGd.do">View Details</a>
                  </div>
               </div>
            </div>
            <br>&nbsp;
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap">
                     <h5>
                        <a href="/final/notice/guide">공지사항</a>
                     </h5>
                     <a href="/final/notice/guide">View Details</a>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap">
                     <h5>
                        <a href="http://ncov.mohw.go.kr/baroView4.do?brdId=4&brdGubun=44">코로나 안전수칙</a>
                     </h5>
                     <a href="http://ncov.mohw.go.kr/baroView4.do?brdId=4&brdGubun=44">View Details</a>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="single-cat text-center mb-50">
                  <div class="cat-cap">
                     <h5>
                        <a href="/final/board/list">게시판</a>
                     </h5>
                     <a href="/final/board/list">View Details</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Categories Area End --> </main>
   <footer>
      <jsp:include page="footer.jsp"></jsp:include>
   </footer>
   <!-- Scroll Up -->
   <div id="back-top">
      <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
   </div>


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
      <input type = "hidden" id = "closeCheck" value = "X">
</body>
<script>
   const user = "${LoginVO.user_id}";
   refresh();
   function refresh() {
      $("#tier label").each(function() {
        if ($(this).attr("for") == "aBus") {
           $(this).click();
        }
      });
   }
   //가는날 기본값 당일날짜로 설정
   const ds = [ "일", "월", "화", "수", "목", "금", "토" ];
   let today = new Date();
   let tYear = today.getFullYear(); //년도
   let tMonth = today.getMonth() + 1; // 월
   let tDate = today.getDate(); //날짜
   let dayIndex = parseInt(today.getDay());
   let tDay = ds[dayIndex];
   let today_date = tYear + "/";
   if (tMonth < 10) {
      today_date += "0" + tMonth;
   } else {
      today_date += tMonth;
   }
   today_date += "/";
   if (tDate < 10) {
      today_date += "0" + tDate;
   } else {
      today_date += tDate;
   }
   $("#sdate").val(today_date + " " + tDay);
   $("#reser_go").val(today_date);

   // 오늘 클릭시
   $("#nowDate").on("click", function() {
      today = new Date();
      tYear = today.getFullYear();
      tMonth = today.getMonth() + 1;
      tDate = today.getDate();
      dayIndex = parseInt(today.getDay());
      tDay = ds[dayIndex];
      date = tYear + "/";
      if (tMonth < 10) {
         date += "0" + tMonth;
      } else {
         date += tMonth;
      }
      date += "/";
      if (tDate < 10) {
         date += "0" + tDate;
      } else {
         date += tDate;
      }
      $("#sdate").val(date + " " + tDay);
      $("#reser_go").val(date);
   });
   
   // 다음날 클릭시
   $("#nextDate").on("click", function() {
      tDate++;
      dayIndex++;
      if (dayIndex == 7) {
         dayIndex = 0;
      }
      if (tDate > maxDay[tMonth - 1]) {
         tMonth++;
         if (tMonth == 13) {
            tMonth = 1;
            tYear++;
         }
         tDate = 1;
      }
      var result = tYear + "/";
      if (tMonth < 10) {
         result += "0" + tMonth;
      } else {
         result += tMonth;
      }
      result += "/";
      if (tDate < 10) {
         result += "0" + tDate;
      } else {
         result += tDate;
      }
      $("#sdate").val(result + " " + ds[dayIndex]);
      $("#reser_go").val(result);
   });
   
   // 터미널 선택 검색창
   $("#search_part .input_place .txt").keydown(function(key) {
     if (key.keyCode == 13) {
        $("#search_part .search_place").click();
     }
   });
   
   $("#search_part").change(".search_place", function() {
      let searchQuery = $("#search_part .input_place .txt").val().trim();
      startQuery = "";
      if (start) {
         startQuery = checkStart($("#userStart").html());
      }
        $.ajax({
          url : "/final/terminal/search",
           data : {"query" : searchQuery, "start" : start, "startQuery" : startQuery},
        success : function(data) {
           var temp = null;
           if (!start) {
              temp = Handlebars.compile($("#startTemp").html());
           } else {
              temp = Handlebars.compile($("#destTemp").html());
           }
           $("#terminalList").html(temp(data));
           }
        });
   });
   
   // 버스 등급 선택시
   $("#tier").on("click", function() {
      $(scheduleFrm.bus_tier).val($('input[name="chkGrade"]:checked').val());
   });
   // 조회하기 눌렀을때
   $("#Lookup").on("click", function() {
      var start_terminal_code = $(scheduleFrm.start_terminal_code).val();
      var dest_terminal_code = $(scheduleFrm.dest_terminal_code).val();
      var reser_go = $(scheduleFrm.reser_go).val();
      var bus_tier = $(scheduleFrm.bus_tier).val();
      if (start_terminal_code == "" || dest_terminal_code == "") {
         alert("출발지 / 도착지를 선택해 주세요.");
      } else if (reser_go == "") {
         alert("출발 날짜를 선택해 주세요.");
      } else if (!confirm("모든 선택이 완료되었습니까?")) {
         return;
      } else {
         scheduleFrm.action = "/final/schedule/scheduleList";
         scheduleFrm.method = "post";
         scheduleFrm.submit();
      }
   });

   // 터미널 리스트 열기
   $("#start").on("click", function() {
      $("#userStart").html("");
      $("#userDest").html("");
      if (user.length == 0) {
         alert("로그인이 필요한 서비스입니다.");
      } else {
         $("#darken-background_terminal").fadeIn();
      }
   });
   $("#dest").on("click", function() {
      $("#start").click();
   });

   // 터미널 리스트 닫기
   $("#btnClose_terminal").on("click", function() {
      start = false;
      $("#terminalList").html("");
      $("#userStart").html("");
      $("#userDest").html("");
      $("#darken-background_terminal").fadeOut();
   });

   // 지역 클릭 시 터미널 리스트 출력
   $("#menu").on("click", ".place", function() {
      if (!start) {
         startQuery = $(this).attr("val");
         $.ajax({
            url : "/final/terminal/terminalList",
            data : {"startQuery" : startQuery, "start" : start },
            success : function(data) {
               var temp = Handlebars.compile($("#startTemp").html());
               $("#terminalList").html(temp(data));
            }
         });
      } else {
         if (startQuery == "경기/인천") {
            startQuery = $("#userStart").html() == "인천" ? "인천" : "경기";
         } else if (startQuery.length == 0) {
            startQuery = checkStart($("#userStart").html());
         }
         destQuery = $(this).attr("val");
         $.ajax({
            url : "/final/terminal/terminalList",
            data : {
               "startQuery" : startQuery,
               "start" : start,
               "destQuery" : destQuery
            },
            success : function(data) {
               var temp = Handlebars.compile($("#destTemp").html());
               $("#terminalList").html(temp(data));
            }
         });
      }
   });

   //출발지 or 도착지 선택시
   $("#terminalList").on("click", ".startTerminal", function() {
      document.getElementById("userStart").innerHTML = $(this).html();
//       $("#userStart").html($(this).html());
      $("#start_terminal_code").val($(this).attr("code"));
      $("#dest_terminal_code").val(null);
      $("#btnChoose_terminal").fadeIn();
   });
   $("#terminalList").on("click", ".destTerminal", function() {
      document.getElementById("userDest").innerHTML = $(this).html();
//       $("#userDest").html($(this).html());
      $("#dest_terminal_code").val($(this).attr("code"));
      $("#btnChoose_terminal").fadeIn();
   });

   //출발지 or 도착지 선택 후 선택완료 버튼 누를 시
      $("#btnChoose_terminal").on("click", function() {
         if (!start) {
            if (!confirm("출발지 선택이 완료되었습니까?")) {
               return;
            } else {
               startQuery = checkStart($("#userStart").html());
               $("#terminalList").html("");
               $("#inputStart").val(null);
               $("#inputDest").val(null);
               $("#btnChoose_terminal").fadeOut();
            }
         } else {
            if (!confirm("도착지 선택이 완료되었습니까?")) {
               return;
            } else {
               $("#terminalList").html("");
               $("#btnChoose_terminal").hide();
               $("#inputStart").val($("#userStart").html());
               $("#inputDest").val($("#userDest").html());
               $("#darken-background_terminal").fadeOut();
            }
         }
         start = !start;
      });

   // 날짜 띄우기
   $("#imageCal").on("click", function() {
      if ($("#dateStart").css("display") == "none") {
         $("#dateStart").fadeIn();
      } else {
         $("#dateStart").fadeOut();
      }
   });

   $("#sdate").on("click", function() {
      $("#imageCal").click();
   });
   // 날짜 선택시
   $("#calendar").on("click", "td", function() {
      var check = $(this).parent().attr("check") == "isNotRow" ? false : true;
         if (check) {
            var tbl = $(this).parent().parent().parent();
            var date = tbl.find(".yAndM").html();
            var to_day = new Date();
            var t_year = to_day.getFullYear(); // 년도
            var t_month = to_day.getMonth() + 1; // 월
            var t_date = to_day.getDate(); // 날짜
            if (t_date < 10) {
               t_date = "0" + t_date;
            }
            var year = date.split("년")[0];
            var month = date.split("년")[1].split("월")[0].trim();
            var day = $(this).find(".days").attr("val");
            day = parseInt(day) < 10 ? "0" + day : day;
            var index = $(this).find(".days").attr("index");
            var yo1 = days[index];
            var write = new Date(t_year + '/' + t_month + '/' + t_date);
            var reser_go = new Date(year + "/" + month + "/" + day);
               if (write <= reser_go) {
                  var chooseDay = year + "/";
                  if (parseInt(month) < 10) {
                     month = "0" + month;
                  }
                  chooseDay += month + "/" + day;
                  if (!confirm(chooseDay + " " + yo1 + "요일" + "에 출발하십니까?")) {
                     return;
                  } else {
                     tYear = year;
                     tMonth = month;
                     tDate = day;
                     today_date = chooseDay;
                     $("#reser_go").val(chooseDay);
                     $("#sdate").val(chooseDay + " " + yo1);
                     alert("날짜 선택 완료");
                     $("#dateStart").hide();
                  }
               } else {
                  $(this).find(".days").css("cursor", null);
               }
            }
         });

   // 출발지 도착지 스왑
   $("#btnChange").on("click", function() {
      let s = $("#inputStart").val();
      let d = $("#inputDest").val();
      $("#inputStart").val(d);
      $("#inputDest").val(s);
      s = $(scheduleFrm.start_terminal_code).val();
      d = $(scheduleFrm.dest_terminal_code).val();
      $(scheduleFrm.start_terminal_code).val(d);
      $(scheduleFrm.dest_terminal_code).val(s);
   });
   const days = [ "토", "일", "월", "화", "수", "목", "금" ];
   const maxDay = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
   $("#dateStart").hide();
   $("#btnChoose_terminal").hide();
   let startQuery = null;
   let destQuery = null;
   let start = false;
   $("#darken-background_terminal").hide();
   $("#darken-background_date").hide();
   function checkStart(start) {
      switch (start) {
      case "동서울":
      case "센트럴파크":
         return "서울";
      case "인천":
         return "인천";
      case "안산":
      case "수원":
      case "광명":
         return "경기";
      case "속초":
      case "양양":
      case "춘천":
         return "강원";
      case "대전":
      case "논산":
      case "천안":
         return "충남";
      case "제천":
      case "청주":
         return "충북";
      case "나주":
      case "목포":
      case "광주":
         return "전남";
      case "고창":
      case "익산":
      case "전주":
         return "전북";
      case "김해":
      case "마산":
      case "부산":
         return "경남";
      case "구미":
      case "경주":
      case "동대구":
         return "경북";
      }
   }
   popup();
   function popup() {
      $.ajax({
         url : "/final/notice/popupCheck",
         success : function(data) {
            if (JSON.parse(data)) {
               window.open("/final/notice/popupPage", "popup", "width=510,height=677, resizable=no, toolbars=no, menubar=no");
            }
         }
      });
   }
   function addPopupCookie() {
      const closeCheck = $("#closeCheck").val() == "O" ? true : false;
      if (closeCheck) {
         $.ajax({
           url : "/final/notice/popupCookie",
           success : function() {
              
           }
         });
      }
   }
   window.onpageshow = function(event) {
      $.ajax({
           type : "post",
           url : "/final/user/destRemove",
           success : function() {
           }
         });
   }
</script>
</html>