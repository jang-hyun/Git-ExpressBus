<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
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






.table_list{
   width: 100%;
    margin-top: 34px;
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
.table_list .container {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    color: #666666;
    font-size: 16px;
}




  h1{text-align:center;}
  
  .mpList_tab{
   position: relative;
    overflow: hidden;
    width: 100%;
    padding-top: 16px;
}
.mpList_tab:before {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    background: #e2e2e2;
    content: "";
}
.mpList_tab>li {
    position: relative;
    float: left;
    cursor:pointer;
}
.mpList_tab .tab_link {
    display: block;
    height: 52px;
    border-bottom: 3px solid transparent;
    padding: 0 33px 0 34px;
    font-size: 18px;
    font-weight: 400;
    line-height: 50px;
    color: #7d7d7d;
    letter-spacing: -.05em;
    box-sizing: border-box;
    transition: .2s;
}
.mpList_tab .tab_link:hover {
    color: #000;
    font-weight: 500;
}
.mpList_tab .tab_link--on {
    color: #000;
    font-weight: 500;
    border-color: #000;
}
#date{height:30px;}
.function_reply{
   display: inline-block;
    height: 22px;
    padding: 0 11px 0 10px;
    margin-right: 4px;
    border: 1px solid #ececec;
    font-size: 13px;
    font-weight: 400;
    line-height: 22px;
    color: #8a8a8a;
    vertical-align: top;
    transition: border .2s;
}
#punishment, #cancle{
   display:none;
}
.function_reply:hover{
   border: 1px solid black;
   color:black;
}
</style>
</head>
<body>
   <header> <!-- 헤더부분 --> <jsp:include page="../header.jsp"></jsp:include>
   </header>
   <div class="hero-area3 hero-overly2 d-flex align-items-center ">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-9">
               <div class="hero-cap text-center pt-50 pb-20">
                  <h2>관리자 페이지</h2>
                  <ol class="process">
                     <li></li>
                     <li class="active"></li>
                     <li></li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div id="divID" style="text-align : center; padding : 100px 300px 200px 300px;">
   <ul class="mpList_tab">
            <li>
               <a class="tab_link tab_link--on buyList" id="buyTab">처리해야할 기사 신고</a>
            </li>
            <li>
               <a class="tab_link changeList" id="changeTab">징계를 받았던 기사 목록</a>
            </li>
            <li>
               <a class="tab_link changeRList" id="changeRTab">chart</a>
            </li>
       </ul>
   
   
   <br>
   <div id="report" >
      <table id="driverTbl" class="table_list"style="margin:0px auto;"></table>
   </div>
   <div id = "bad">
      <table id="badDriver"  class="table_list"style="margin:0px auto;"></table>
   </div>
   <script id="reportDriverTemp" type="text/x-handlebars-template">
      <tr>
         <th>소속회사</th>
         <th>기사 이름</th>
         <th>신고한 유저</th>
         <th>신고 사유</th>
         <th>신고 일자</th>
         <th>처리</th>
      </tr>
      {{#each reportList}}
         <tr class = "row1" seq = "{{SEQ_BOARD}}">
            <td class = "company" code = "{{COMPANY_CODE}}">{{COMPANY_NAME}}</td>
            <td class = "driver" code = "{{DRIVER_CODE}}">{{DRIVER_NAME}}</td>
            <td class = "user">{{USER_ID}}</td>
            <td class = "type" type = "{{TYPE}}">{{TYPE}}</td>
            <td>{{REPORTDATE}}</td>
            <td class = "status">{{STATUS}}</td>
         </tr>
      {{/each}}
   </script>
   <script id="driverTemp" type="text/x-handlebars-template">
      <tr>
         <th>소속회사</th>
         <th>기사 이름</th>
         <th>현재 벌점</th>
      </tr>
      {{#each reportList}}
         <tr class = "row1" seq = "{{SEQ_BOARD}}">
            <td class = "company" code = "{{COMPANY_CODE}}">{{COMPANY_NAME}}</td>
            <td class = "driver" code = "{{DRIVER_CODE}}">{{DRIVER_NAME}}</td>
            <td class = "score">{{BADCOUNT}}</td>
         </tr>
      {{/each}}
   </script>
   </div>
   <jsp:include page="../chart/chart.jsp"></jsp:include>
   <footer> <jsp:include page="../footer.jsp"></jsp:include> </footer>
</body>
<script>
const buyTab = document.getElementById('buyTab');
const changeTab = document.getElementById('changeTab');
const changeRTab = document.getElementById('changeRTab');
$("#bad").hide();
$("#chart1").hide();
$("#chart_div").hide();

   $("#driverTbl").on("click", ".row1 button", function() {
      const row = $(this).parent().parent();
      const seq = row.attr("seq");
      const dCode = row.find(".driver").attr("code");
      const dName = row.find(".driver").html();
      const uId = row.find(".user").html();
      const type = row.find(".type").attr("type");
      let isPunishment = false;
      if ($(this).is(".punishment")) {
         isPunishment = true;
      }
      if (!confirm("선택한 기사 : " + dName + "\n제대로 결정하신것이 맞습니까?")) {
         isPunishment = false;
         return;
      } else {
         $.ajax({
            type : "post",
            url : "/final/admin/report",
            data : {
               "driver_code" : dCode,
               "user_id" : uId,
               "seq_board" : seq,
               "type" : typeFormat(type),
               "isPunishment" : isPunishment
            },
            success : function() {
               alert("성공적으로 처리되었습니다.");
               location.href = "/final/admin/adminPage";
            }
         });
      }
   });
   function typeFormat(n) {
		switch (n) {
		case "난폭운전":
			return 1;
		case "운행시간 미준수":
			return 2;
		case "불친절":
			return 3;
		case "음주 의심":
			return 4;
		case "운행중 휴대전화 사용":
			return 5;
		case "냉/난방 제대로 안해줌":
			return 6;
		}
		return 0;
	}
   getReportedList();
   getBadDriverList();
   function getReportedList() {
      $.ajax({
         url : "/final/admin/reportedList.json",
         success : function(data) {
         if (data.count > 0) {
             const temp = Handlebars.compile($("#reportDriverTemp").html());
                     $("#driverTbl").html(temp(data));
                     $("#driverTbl .row1 .status").each(function() {
                                    if ($(this).html() == "O") {
                                       $(this).html("처리 완료");
                                    } else {
                                       $(this).html("<button class= 'punishment' id='punishment'>징계</button><button class = 'cancle' id='cancle'>허위신고</button><label for='punishment'><a class='function_reply'>징계</a></label><label for='cancle'><a class='function_reply'>허위신고</a></label>");
                                    }
                                 });
                  } else {
                     $("#report").html("들어온 기사 신고가 없습니다.");
                     $("#driverTbl").hide();
                  }
               }
            });
   }
   function getBadDriverList() {
      $.ajax({
         url : "/final/admin/reportedList.json",
         success : function(data) {
            if (data.count > 0) {
               const
               temp = Handlebars.compile($("#driverTemp").html());
               $("#badDriver").html(temp(data));
            } else {
               $("#badDriver").hide();
            }
         }
      });
   }
   
   
   $("#buyTab").on("click",function(){
      $("#report").show();
      $("#bad").hide();
      $("#chart1").hide();
      $("#chart_div").hide();
      buyTab.className = 'tab_link tab_link--on';
      changeTab.className = 'tab_link';
      changeRTab.className = 'tab_link';
   });
   $("#changeTab").on("click",function() {
      $("#report").hide();
      $("#bad").show();
      $("#chart1").hide();
      $("#chart_div").hide();
      buyTab.className = 'tab_link';
      changeTab.className = 'tab_link tab_link--on';
      changeRTab.className = 'tab_link';
   });
   
   $("#changeRTab").on("click",function() {
      $("#report").hide();
      $("#bad").hide();
      $("#chart1").show();
      $("#chart_div").show();
      buyTab.className = 'tab_link';
      changeTab.className = 'tab_link';
      changeRTab.className = 'tab_link tab_link--on';
   });
</script>
</html>