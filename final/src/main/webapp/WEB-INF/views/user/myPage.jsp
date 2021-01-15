<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=92cf83f3199535cf8a92bf2c30b348d5"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/x-icon"
   href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">
<title>마이 페이지</title>
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
.map_wrap {position:relative;overflow:hidden;width:700px;height:700px;}
.radius_border{border:1px solid #919191;border-radius:5px;}     
.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:132px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
.custom_typecontrol .change_btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
.custom_typecontrol .change_btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
.custom_typecontrol .change_btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
.custom_typecontrol .selected_btn:hover {color:#fff;}   
.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
.custom_zoomcontrol span img {width:15px;height:36px;padding:12px 0;border:none;}             
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}   
#darken-background {
   position: fixed;
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
   position: fixed;
   top: 100px;
   left: 30%;
   width: 50%;
   max-width: 700px;
   margin: 20px auto;
   border: 1px solid #333333;
   border-radius: 5px;
   background: white;
   box-shadow: 0px 5px 5px rgba(34, 25, 25, 0.4);
   padding: 15px;
}
.titles{text-align:center; background:#d2d2d2;}
.row1{text-align:center; border-bottom:1px solid #d2d2d2;}
 td {overflow : hidden; text-overflow : ellipsis;}
 #divId{text-align : center; padding : 100px 300px 200px 300px;}
 #divStart{margin-top:20px;}
 button{background:black;}
 #back-top{
         z-index:1;
      }
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
.container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
    height: 0;
    width: 0;
}
.checkmark {
   position: absolute;
    left: 25px;
    top:-8px;
    height: 24px;
    width: 24px;
    border: 1px solid #ddd;
    border-radius:5px;
}
.container input:checked ~ .checkmark {
    background-color: #ff4357;
    border: 2px solid transparent;
    border-radius: 5px;
}
.container input:checked ~ .checkmark:after {
    display: block;
}
.container .checkmark::after {
    left: 8px;
    top: 1px;
    width: 6px;
    height: 14px;
    border: solid white;
    border-width: 0px 2px 2px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
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
.title_return{height:40px; border-bottom:1px solid #2b2b2b;}
.title_sub{left:42%; color:black;}
.remodal-close{background:url(${pageContext.request.contextPath}/resources/assets/img/close/pop_close.png) center center no-repeat;}
.users{text-align:left; margin-top:10px; padding:20px; border-bottom:1px solid #f0f0f0;}
.users_subtitle{font-weight:bold;}
.txtBank{height:42px; border:0; border-bottom:1px solid #848484; margin-left:5px;}
.txtBank:focus{border-bottom:3px solid #151515;}
.price{font-size:18px;}
/* <- Demo Stuff Start */

#container1 {
  display: flex;
  justify-content: center;
  align-items: center;
  align-content: center;
  flex-wrap: wrap;
  margin: 0 auto;
}

.container1 button {
	cursor: pointer;
}

.btnMap btn-3 {
  flex: 1 1 auto;
  margin: 10px;
  padding: 30px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
 }
.btnMap a {
	cursor: pointer;
}
/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.btnMap:hover {
  background-position: right center; /* change the direction of the change here */
}


.btn-3 {
  background-image: linear-gradient(to right, #D5D5D5 0%, #BDBDBD 51%, #ABABAB 100%);
}

.btn{width:150px;}
/* Magic Stuff End -> */
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
<header>
      <!-- 헤더부분 -->
      <jsp:include page="../header.jsp"></jsp:include>
   </header>
   <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>마이페이지</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   <div id="divId">
   <ul class="mpList_tab">
            <li>
               <a class="tab_link buyList" id="buyTab">구매 목록</a>
            </li>
            <li>
               <a class="tab_link changeList" id="changeTab">교환신청 목록</a>
            </li>
            <li>
               <a class="tab_link changeRList" id="changeRTab">교환요청 목록</a>
            </li>
       </ul>
   <div id="buyList">
   <div>
   <span id = "myListSize"></span>
   </div>
   <span>※ 이미 출발시간이 지난 표는 환불이 안됩니다.</span>
   <table id = "tbl" class="table_list"></table>
   <div id = "pagination">
   	<button id = 'btnPre' onclick="pageMinus();">◀</button>
   	<button id = 'btnNext' onclick="pagePlus();">▶</button>
   </div>
   <script id = "myPageTemp" type = "text/x-handlebars-template">
   		<tr class="titles">
			<th width = 50>
			<label class="container">
				<input type = "checkbox" id = "checkAll">
				<span class="checkmark" style="border: 1px solid black;" id = "checkmarkAll"></span>
			</label>
			</th>
			<th width = 80>출발지</th>
         	<th width = 80>도착지</th>
        	 <th width = 100>출발 플랫폼</th>
        	 <th width = 100>좌석 번호</th>
       	 	<th width = 200>출발 날짜 및 시간</th>
         	<th width = 100>표 가격</th>
         	<th width = 170>예매한 날짜</th>
        	 <th width = 50>비고</th>
        	 <th width = 100>출발지 지도</th>
		</tr>
		{{#each myList}}
			<tr class = "row1" price = "{{reser_price}}" bus = "{{bus_code}}" seat = "{{seat_num}}" reser_go = "{{reser_go}}" isPast = "{{isPast}}">
            <td class = "checkBox">
               
            </td>
            <td class = "start">{{start}}</td>
            <td class = "dest">{{dest}}</td>
            <td>{{platform_code}}</td>
            <td>{{seat_num}}번</td>
            <td>{{reser_go}}</td>
            <td class = "price">{{reser_price}}</td>
            <td>{{reser_date}}</td>
            <td>{{thisIsChild ischild}}</td>
            <td class="container1"><button class = "btnMap btn-3"><a>MAP</a></button></td>
         </tr>
		{{/each}}
   </script>
   <script>
   	Handlebars.registerHelper("thisIsChild", function(ischild) {
   		return ischild == "O" ? "어린이" : "성인";
   	});
   </script>
   <div class="single-listing">
       <button class="btn list-btn mt-20" id="btnRefund">선택 환불</button>
   </div>
   <div id="divStart" style="text-align:center; font-size:30px;">찾아오시는 길<br>※지도를 축소하면 도착지의 위치도 보입니다.</div>
   <div class="map_wrap" style="margin:0px auto;">
    <div id="map" style="width:100%; height:100%; position:relative;overflow:hidden;"></div> 
    <div id = "btns">
       <!-- 지도타입 컨트롤 div 입니다 -->
       <div class="custom_typecontrol radius_border" >
           <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
           <span id="btnSkyview" class="change_btn" onclick="setMapType('skyview')">스카이뷰</span>
       </div>
       <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
       <div class="custom_zoomcontrol radius_border"> 
           <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
           <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
       </div>
      </div>
   </div>
   </div>
   <div id="sendContainer">
         <div id = "sendList"></div>
         <table id = "mySendTbl" class="table_list"></table>
   </div>
   <script id = "sendTemp" type = "text/x-handlebars-template">
      <tr>
         <th>받는사람</th>
         <th>내 표 정보</th>
      <th>상대 표의 정보</th>
      </tr>
      {{#each sendList}}
         <tr class = "row1" seq = "{{seq_board}}" send = "{{send_ticket}}" receive = "{{receive_ticket}}">
            <td>{{receive_user_id}}</td>
            <td>{{ticketFormat send_ticket}}</td>
         <td>{{ticketFormat receive_ticket}}</td>
         </tr>
      {{/each}}
   </script>
   <div id = "receiveContainer">
      <div id = "receiveList"></div>
      <table id = "myReceiveTbl" class="table_list"></table>
   </div>
   <script id = "receiveTemp" type = "text/x-handlebars-template">
      <tr>
         <th>보낸사람</th>
         <th>상대 표 정보</th>
         <th>내 표 정보</th>
         <th>수락하기</th>
      </tr>
      {{#each receiveList}}
         <tr class = "row1" sender = "{{send_user_id}}" seq = "{{seq_board}}" send = "{{send_ticket}}" receive = "{{receive_ticket}}">
            <td>{{send_user_id}}</td>
            <td>{{ticketFormat send_ticket}}</td>
        	<td>{{ticketFormat receive_ticket}}</td>
            <td><button class = "btnTrade">수락</button></td>
         </tr>
      {{/each}}
   </script>
   </div>
   <div id = "darken-background">
      <div id = "lightbox">
         <div class="title_return">
            <div class="title_sub">결제 관리</div>
            <button class="remodal-close" id="btnClose"></button>
         </div>
         <div class = "users">
            <h4><span class="users_title">회원정보</span></h4>
            <div class = "id"><span class="users_subtitle">ID:</span>${LoginVO.user_id }</div>
            <div class = "name"><span class="users_subtitle">이름:</span>${LoginVO.user_name }</div>
            <div class = "tel"><span class="users_subtitle">전화번호:</span>${LoginVO.user_tel }</div>
         </div>
         <div class="users">
            <h4><span class="users_title">환불받을 계좌</span></h4>
            <input type = "text" class = "txtBank">
         <span>
         <select>
            <option>국민</option>
            <option>기업</option>
            <option>농협</option>
            <option>우리</option>
            <option>신한</option>
            <option>하나</option>
            <option>제일</option>
            <option>카카오뱅크</option>
         </select>
         </span>
         </div>
         
         <br>
         <div class = "quantity"></div>
         <div class = "items"></div>
         <div class = "price"></div>
         <br>
         <div class="single-listing">
             <button class="btn list-btn mt-20 btnRefund">환불</button>
         </div>
      </div>
   </div>
   <script>
      Handlebars.registerHelper("ticketFormat", function(ticket) {
         const info = ticket.split(" ");
         return info[0] + "-" + info[1] + " " + info[3] + " " + info[4] + " " + info[2] + "번 좌석";
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
	let page = 1;
	getMyList();
	const pagination = document.getElementById("pagination");
	const tbl = document.getElementById("tbl");
	const btnPre = document.getElementById("btnPre");
	const btnNext = document.getElementById("btnNext");
	const label = "<label class='container'><input type = 'checkbox' class = 'check'><span class='checkmark' style='border: 1px solid black;''></span></label>";
	let maxCheck = 0;
	function getMyList() {
		$.ajax({
			url : "/final/user/myPage.json",
			data : {"page" : page, "user_id" : myId},
			success : function(data) {
				const temp = Handlebars.compile($("#myPageTemp").html());
				tbl.innerHTML = temp(data);
				maxCheck = data.myListSize;
				document.getElementById("myListSize").innerHTML = "구매한 표 : " + maxCheck;
				$("#tbl .row1 .checkBox").each(function() {
					const row = $(this).parent();
					const td = $(this);
					if (row.attr("isPast") == "false") {
						td.html(label);
					}
				});
				$("#btnPre").attr("disabled", !data.maker.prev);
				$("#btnPre").css("cursor", !data.maker.prev ? "default" : "pointer");
				$("#btnNext").attr("disabled", !data.maker.next);
				$("#btnNext").css("cursor", !data.maker.next ? "default" : "pointer");
			}
		});
	}
	
	function pagePlus() {
		page++;
		getMyList();
	}
	function pageMinus() {
		page--;
		getMyList();
	}
	const buyTab = document.getElementById('buyTab');
	const changeTab = document.getElementById('changeTab');
	const changeRTab = document.getElementById('changeRTab');
   //구매목록 클릭시
   $(".mpList_tab li .buyList").on("click", function(){
      $("#sendContainer").hide();
      $("#receiveContainer").hide();
      $("#buyList").show();
		buyTab.className = 'tab_link tab_link--on';
		changeTab.className = 'tab_link';
		changeRTab.className = 'tab_link';
   });
   
   //교환신청 목록 클릭시
   $(".mpList_tab li .changeList").on("click", function(){
      $("#buyList").hide();
       $("#sendContainer").show();
       $("#receiveContainer").hide();
      if($("#divStart").css("display") == "none"){
      }else{
         $("#divStart").hide();
         $("body .map_wrap").hide();
      }
              buyTab.className = 'tab_link';
              changeRTab.className = 'tab_link';
              changeTab.className = 'tab_link tab_link--on';
   });
   
 //교환요청 목록 클릭시
   $(".mpList_tab li .changeRList").on("click", function(){
      $("#buyList").hide();
       $("#sendContainer").hide();
       $("#receiveContainer").show();
      if($("#divStart").css("display") == "none"){
      }else{
         $("#divStart").hide();
         $("body .map_wrap").hide();
      }
              buyTab.className = 'tab_link';
              changeTab.className = 'tab_link';
              changeRTab.className = 'tab_link tab_link--on';
   });
   getList();
   function getList() {
      $.ajax({
         url : "/final/trade/myTradeList.json",
         data : {"id" : myId},
         success : function(data) {
           const sendTemp = Handlebars.compile($("#sendTemp").html());
            $("#mySendTbl").html(sendTemp(data));
            if (data.sendCount > 0) {
               $("#sendList").html("내가 교환 신청한 목록 : " + data.sendCount + "건");
            } else {
            	$("#sendList").html("보낸 교환 신청이 없습니다.");
               $("#mySendTbl").hide();
            }
            const receiveTemp = Handlebars.compile($("#receiveTemp").html());
            $("#myReceiveTbl").html(receiveTemp(data));
            if (data.receiveCount > 0) {
               $("#receiveList").html("내게 온 교환 신청 목록 : " + data.receiveCount + "건");
            } else {
            	$("#receiveList").html("내게 온 교환 신청이 없습니다.");
               $("#myReceiveTbl").hide();
            }
            $("#receiveContainer").hide();
            $("#sendContainer").hide();
            const buyTab = document.getElementById('buyTab');   
           buyTab.className = 'tab_link tab_link--on';
            
         }
      });
   }
   
   // 나에게 온 교환 신청 버튼 누를시
   $("#myReceiveTbl").on("click", ".row1 .btnTrade", function() {
      const row = $(this).parent().parent();
      const sender = row.attr("sender");
      const seq = row.attr("seq");
      const send = row.attr("send");
      const receive = row.attr("receive");
      if (!confirm("해당 표와 교환 하시겠습니까?")) {
         return;
      } else {
         $.ajax({
            type : "post",
            url : "/final/trade/trade",
            data : {
               "seq_board" : seq,
               "send_user_id" : sender,
               "receive_user_id" : myId,
               "send_ticket" : send,
               "receive_ticket" : receive
               },
               success : function() {
                  alert("성공적으로 교환되었습니다.");
               }
         });
      }
   });
   $("#darken-background").hide();
   
   let checkCount = 0;
   
   // 단일 선택
   $("#tbl").on("click", ".row1 .checkBox .container .check", function() {
      if ($(this).is(":checked")) {
         checkCount++;
         var allCheck = true;
         $("#tbl .row1 .check").each(function() {
           if (!$(this).is(":checked")) {
              allCheck = false;
           }
         });
         $("#checkAll").prop("checked", allCheck);
      } else {
         checkCount--;
         $("#checkAll").prop("checked", false);
      }
   });
   
   // 전체 선택
   $("#tbl").on("click", ".titles .container #checkAll", function() {
	   const checkAll = $(this);
      checkCount = 0;
      $("#tbl .row1 .check").each(function() {
       if (checkAll.is(":checked")) {
          checkCount++;
       }
         $(this).prop("checked", $("#checkAll").is(":checked"));
      });
   });
   
   // 선택 환불 버튼 클릭
   $("#btnRefund").click(function() {
      if (checkCount == 0) {
         alert("선택된 표가 없습니다.");
      } else {
         let quantity = 0;
         let sum = 0;
         let item = null;
         $("#tbl .row1 .checkBox .container .check").each(function() {
           const row = $(this).parent().parent().parent();
            if ($(this).is(":checked")) {
               quantity++;
               item = row.find(".start").html() + "-" + row.find(".dest").html() + " " + row.attr("reser_go");
               sum += parseInt(row.attr("price"));
            }
         });
         $("#lightbox").find(".quantity").html("환불할 표 : " + quantity + "매");
         if (quantity == 1) {
            $("#lightbox").find(".items").html(item);
         } else {
            $("#lightbox").find(".items").html(item + " 외 " + (quantity - 1) + "매");
         }
         $("#lightbox").find(".price").html("환불 예정 금액 : " + decimalForamt(sum) + "원");
         $("#darken-background").show();
      }
   });
   
   
   // 환불 창에서 환불 버튼 클릭
   $("#lightbox .btnRefund").click(function() {
      if ($("#lightbox .txtBank").val().trim().length == 0) {
         alert("계좌번호를 입력하여 주세요.");
      } else {
         if (!confirm("환불을 진행하시겠습니까?")) {
            return;
         } else {
            $("#tbl .row1 .check").each(function() {
               const row = $(this).parent().parent().parent();
               if ($(this).is(":checked")) {
                  $.ajax({
                     type : "post",
                     url : "/final/reservation/delete",
                     data : {
                    	 "start" : row.find(".start").html(),
                    	 "dest" : row.find(".dest").html(),
                    	 "user_id" : myId,
                        "bus_code" : row.attr("bus"),
                        "seat_num" : row.attr("seat"),
                        "reser_go" : row.attr("reser_go")
                     },
                     success : function() {
                        
                     }
                  });
               }
            });
            alert("환불이 완료되었습니다.");
            if (!confirm("메인메뉴로 돌아가시겠습니까?")) {
               location.href = "/final/user/myPage";
            } else {
               location.href = "/final/home";
            }
         }
      }
   });
   
   // 환불창 닫기 버튼
   $("#btnClose").click(function() {
      $("#darken-background").hide();
   });
   
   $("body .map_wrap").hide();
   const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
   let options = null;
   let map = null;
   $("#btns").hide();
   
   $("#divStart").hide();
   
   // 지도 호출
   $("#tbl").on("click", ".row1 .container1 .btnMap", function() {
      const row = $(this).parent().parent();
      const start = row.find(".start").html();
      const dest = row.find(".dest").html();
      if(($("body .map_wrap").css("display") == "none")){
         $("#divStart").show();
          $("body .map_wrap").show();
          
          $.ajax({
             url : "/final/kakao/point.json",
             data : {"start" : start, "dest" : dest},
             success : function(data) {
                options = { //지도를 생성할 때 필요한 기본 옵션
                   center: new kakao.maps.LatLng(data.start_y, data.start_x), //지도의 중심좌표.
                   level: 3 //지도의 레벨(확대, 축소 정도)
                };
                map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
                $("#btns").show();
                
             // 마커 이미지의 이미지 주소입니다
                const imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
                    
                const positions = [
                                 {
                                     title: '출발지', 
                                     latlng: new kakao.maps.LatLng(data.start_y, data.start_x)
                                 },
                                 {
                                     title: '도착지',
                                     latlng: new kakao.maps.LatLng(data.dest_y, data.dest_x)
                                 }
                             ];
                for (var i = 0; i < positions.length; i ++) {
                    // 마커 이미지의 이미지 크기 입니다
                    const imageSize = new kakao.maps.Size(24, 35); 
                    // 마커 이미지를 생성합니다    
                    const markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
                    // 마커를 생성합니다
                    const marker = new kakao.maps.Marker({
                        map: map, // 마커를 표시할 지도
                        position: positions[i].latlng, // 마커를 표시할 위치
                        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                        image : markerImage // 마커 이미지 
                    });
                }
             }
          });
          
      }else{
         $("body .map_wrap").fadeOut();
         $("#divStart").hide();
      }
      
   });
   
   // 지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
   function setMapType(maptype) { 
       const roadmapControl = document.getElementById('btnRoadmap');
       const skyviewControl = document.getElementById('btnSkyview'); 
       if (maptype === 'roadmap') {
           map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
           roadmapControl.className = 'selected_btn';
           skyviewControl.className = 'change_btn';
       } else {
           map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
           skyviewControl.className = 'selected_btn';
           roadmapControl.className = 'change_btn';
       }
   }

   // 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
   function zoomIn() {
       map.setLevel(map.getLevel() - 1);
   }

   // 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
   function zoomOut() {
       map.setLevel(map.getLevel() + 1);
   }
   
   function decimalForamt(n) {
      let reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
      n += '';                          // 숫자를 문자열로 변환
      while (reg.test(n)){
         n = n.replace(reg, '$1' + ',' + '$2');
      }
      return n;
   }
   
   $("#darken-background").hide();
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