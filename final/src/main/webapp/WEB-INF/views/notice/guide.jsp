<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>이용안내</title>
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
         button{cursor:pointer; background:black;}
         .active {color : #000000;}
         .passive{color : #979797;}
         #base {width:1000px; margin: 0 auto; margin-bottom:50px;}
         h2, h3, h5{text-align: center;}
         ul.tabs li{
                  background: none;
                  color: #222;
                  padding: 10px 15px;
                  cursor: pointer;
               }
      .tab-content{
                  background:#F6F6F6;
                  padding: 100px;
                  margin: 50px;
               }
      ul.tabs{
         margin: 0px;
         padding: 0px;
         width: 400px;
         float:left;
         list-style: none;
      }
      
      ul.tabs li.current{
         background: #ededed;
         color: #222;
      }
      .titles, .rows{text-align:center;}

      #terminalTable td a{color : #5854b3;}
      #tab-1 .noti03 a{color:#5854b3;}
      #notice0{background:gray; color:white; padding:10px;}
      #terminalTable{ height:200px;}
      
      
     </style>
</head>
<body>
   <header>
      <!-- 헤더부분 -->
      <jsp:include page="../header.jsp"></jsp:include>
   </header>
   <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>이용안내</h2>
                            <ol class="process">   
                               <li>   
                               </li>
                               <li class="active">
                               </li>
                               <li>
                               </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
   <br>

      <ul class="tabs" id = "tabs">
          <div class="tab-link1" data-tab="tab-0" id="notice0">※ 이용 안내</div>
         <li class="tab-link current" data-tab="tab-1" id="notice1">승차권 예매 / 발권</li>
         <li class="tab-link" data-tab="tab-2" id="notice2">수수료</li>
         <li class="tab-link" data-tab="tab-3" id="notice3">결제수단 안내</li>
         <li class="tab-link" data-tab="tab-4" id="notice4">승차권 환불 안내</li>
         <li class="tab-link" data-tab="tab-5" id="notice5" >터미널 안내</li>
      </ul>
   <div id = "base">
   <h2>예매안내</h2>
   <div>
    <p style="text-align:center;">
       홈페이지를 통한 예매는 <br>
       <span>당일 출발하는 차량의 출발시간 30분 이전까지 예매 가능합니다.</span>
    </p>
   </div>
   <br/>
   <div id = "answers">
   <div id="tab-1" class="tab-content">
      <h3>승차권 예매 / 발권</h3>
       <br>
      <ul>
         <li class="noti01">
            예매하신 승차권의 창구발권은 출발시간 이전에 출발지 터미널에서 발권이 가능하며 예매에 사용하신 신용카드를 지참해주시기 바랍니다.
         </li>
         <li class="noti02">
            예매에 사용하신 신용카드를 분실하고 신용카드 번호를 인지 못하신 경우에는 승차권에 대한 어떠한 변경/취소 불가하오니 주의하시기 바랍니다.
         </li>
         <li class="noti03">
            승차권 예매 서비스는 실시간으로 온라인 처리가 되므로 예매 시 회선장애나 기타 통신장애로 인하여 성공여부를 확인하지 못하였을 경우 반드시 본 홈페이지의 <a href="/final/user/myPage">마이페이지</a> 메뉴에서 성공여부를 확인하셔야 합니다.
         </li>
         <li class="noti04">
            출발시간이 지난 후에는 승차권 발권이 불가합니다. 창구 발권 시 반드시 출발시간 이전에 터미널에 도착하셔서 발권 받으시기 바랍니다.
         </li>
         <li class="noti05">
            홈페이지의 ‘홈티켓’서비스를 이용해서 인쇄하시면 별도의 창구발권이 필요없습니다.
         </li>
      </ul>
   </div>
   <div id="tab-2" class="tab-content">
   <h3>수수료</h3>
    <br>
   <p style="text-align: center;">
      ⊙ 승차권 예매를 취소하실 경우 출발일자를 기준으로 취소 수수료가 부과됩니다.
   </p>
    <br>
   <h4 style="text-align: center;">⊙ 취소 수수료</h4>
    <br>
   <div>
      <table>
         <caption></caption>
         <colgroup>
            <col style="width:auto;">
            <col style="width:30%;">
         </colgroup>
         <thead>
            <tr>
               <th scope="col">취소 시기</th>
               <th scope="col" style="text-align: center;">수수료</th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td>
                  예매 당일 또는 승차일 2일전 취소
                  <br>
                  (단, 당일출발차량 예매 후 1시간 이후 취소는 수수료 발생)
               </td>
               <td style="text-align: center;">없음</td>
            </tr>
            <tr>
               <td>
                  예매 후 출발일 1일 전일부터 지정차 출발 1시간 전 취소
                  <br>
                  (단, 당일출발차량 예매 후 1시간 이내 취소는 수수료 없음)
               </td>
               <td style="text-align: right;">승차권 요금의 5%</td>
            </tr>
            <tr>
               <td>
                  예매 후 지정차 출발 1시간 이내 취소
                  <br>
                  (단, 당일출발차량 예매 후 1시간 이내 취소는 수수료 없음)
               </td>
               <td style="text-align: right;">승차권 요금의 10%</td>
            </tr>
            <tr>
               <td>예매하신 지정차 출발 후 목적지 도착예정시간 전 취소</td>
               <td style="text-align: right;">승차권 요금의 30%</td>
            </tr>
            <tr>
               <td>마일리지 구매 승차권 : 출발시간 이전 취소</td>
               <td style="text-align: right;">마일리지 100% 환급</td>
            </tr>
            <tr>
               <td>마일리지 구매 승차권 : 출발시간 이후 취소</td>
               <td style="text-align: right;">마일리지 100% 차감</td>
            </tr>
         </tbody>
      </table>
   </div>
   </div>
   <div id="tab-3" class="tab-content">
   <h3>결제수단 안내</h3>
    <br>
   <div>
      <p style="text-align: center;">
         고속버스 통합 예매 홈페이지를 통한 예매 시 <br>
         <span>카드결제, 계좌이체, 프리미엄 마일리지의 결제수단을 이용하실 수 있습니다.</span>
      </p>
   </div>
   <br>
   <div>
      <h4 style="text-align: center;">⊙ 카드 결제</h4>
      <br>
      <ul>
         <li>
             저희 고속터미널 Express Bus는 카카오페이만을 지원하고 있습니다. 사용에 있어 유의 부탁드립니다.
         </li>
         <li>
             결제하려는 카드의 한도가 초과되었거나 사용 중지된 경우 결제가 실패할 수 있으니 사전에 확인해주시기 바랍니다.
         </li>
         <li>
             모든 결제정보는 암호화 처리 후 안전하게 전송됩니다.
         </li>
         <li>
             예매가 완료된 후 예매확인/취소/변경 메뉴를 통해 예매 성공 여부를 확인하시기 바랍니다.
         </li>
      </ul>
   </div>
   </div>
   <div id="tab-4" class="tab-content">
   <h3>승차권 환불 안내</h3>
    <br>
   <ul>
      <li>
    	  ● 승차권을 환불하신 후(승객용) 승차권을 교부 받으시면 정상적으로 환불 처리가 되었음을 의미하며 안심하셔도 됩니다.
      </li>
      <br>
      <li>
          ● 신용카드의 청구 및 환불은 결제일에 일괄적으로 정산처리됩니다. <br>(카드사, 개인 결제일자별 차이가 있습니다.)
      </li>
       <br>
      <li>
          ● 신용카드 결제일에 청구되는 금액은 원칙적으로 사용금액(+)에서 환불금액(-)을 차감한 금액입니다. <br>(카드사 사정에 의해 모두 청구한 후 환불금액만 따로 계좌로 입금될 수도 있습니다. 따라서 결제일을 전후하여 신용카드사에서 발송한 청구서와 계좌(통장)의 입출금 내역을 같이 확인하시기 바랍니다.)
      </li>
       <br>
      <li>
          ● 승차권 구입일자와 환불일자가 다르면 다음 결제일에 환불될 수도 있습니다.
      </li>
       <br>
      <li>
          ● 고속조합에서는 고객의 개별적인 승인취소 요청에 대해 처리해드리지 않사오니 양해 부탁드립니다.
      </li>
       <br>
      <li>
          ● 카드사 홈페이지에서 고속버스승차권의 이용내역을 조회하실 경우 가급적 결제일을 전후하여 청구내역(거래승인내역이 아님)을 조회하시기 바랍니다. <br>또한 카드사의 사정에 따라 환불내역이 조회되지 않을 수 있습니다.
      </li>
       <br>
      <li>
          ● 계좌이체 예매취소 시 즉시 예매 당시의 출금계좌로 입금되나 장애 발생 시 최대 1시간까지 입금이 지연될 수도 있습니다.
      </li>
       <br>
      <li>
          ● 저희 고속터미널 Express Bus는 카카오페이만을 지원하고 있습니다. 사용에 있어 유의 부탁드립니다.
      </li>
       <br>
      <li>
         ●  환불의 경우 마이페이지의 이용을 부탁드립니다.
      </li>
   </ul>
   </div>
   <div id="tab-5" class="tab-content">
   <h3>터미널 안내</h3>
    <br>
   <h5>전국의 고속버스 터미널 안내입니다.</h5>
   <br>
   <table id="terminalTable" class="table_list"></table>
   <script id="temp" type="text/x-handlebars-template">
   <tr class="titles">
      
      <td width=150><b>고속회사</b></td>
      <td width=500><b>주소</b></td>
      <td width=200><b>전화번호</b></td>
     <td width=150></td>
   </tr>   
   {{#each .}}
   <tr class = "rows">
   
      <td>{{company_name}}</td>
      <td>{{company_address}}</td>
      <td>{{company_tel}}</td>
     <td><a href={{company_code}}>{{codeCheck company_code}}</a></td>
   </tr>
   {{/each}}
   </script>
   <script>
      Handlebars.registerHelper("codeCheck", function(code) {
         let check = true;
         switch (parseInt(code)) {
         case 00:
         case 01:
         case 04:
            check = false;
            break;
         default:
            check = true;
            break;
         }
         return check ? "▶바로가기" : null;
      });
   </script>
   </div>
   </div>
   </div>
   <footer>
      <jsp:include page="../footer.jsp"></jsp:include>
   </footer>
</body>
<script>
$("#tab-1").hide();
$("#tab-2").hide();
$("#tab-3").hide();
$("#tab-4").hide();
$("#tab-5").hide();
const noticeID = "#" + "${noticeID}";
let tabID = null;
idCheck();
function idCheck() {
      if (noticeID.trim() == "#") {
         $("#tab-1").show();
      } else {
         $("#tabs li").each(function() {
            if ($(this).is(noticeID)) {
               $(this).attr("class", "tab-link current");
               tabID = "#" + $(this).attr("data-tab");
            } else {
               $(this).attr("class", "tab-link");
            }
            $("#answers .tab-content").each(function() {
               if ($(this).is(tabID)) {
                  $(this).show();
               } else {
                  $(this).hide();
               }
            });
         });
         $.ajax({
            type : "post",
            url : "/final/notice/guide",
            success : function(){}
         });
      }
   }
   
$("#tabs li").click(function() {
   const clickLI = $(this);
   $("#tabs li").each(function() {
      if ($(this).is(clickLI)) {
         $(this).attr("class", "tab-link current");
         tabID = "#" + $(this).attr("data-tab");
      } else {
         $(this).attr("class", "tab-link");
      }
   });
   $("#answers .tab-content").each(function() {
      if ($(this).is(tabID)) {
         $(this).show();
      } else {
         $(this).hide();
      }
   });
});

$("#terminalTable").on("click", ".rows a", function(e){
      e.preventDefault();
      const code = $(this).attr("href");
      let url = null;
       let option = null;
      switch (parseInt(code)) {
      case 02:
         url = "http://www.yongnam.co.kr/";
         option = "width=800, height=600, top=(window.screen.height / 2) - 300, left=(window.screen.width / 2) - 400, menubar=yes, status=yes, titlebar=yes, resizable=yes";
          break;
      case 03:
         url = "http://www.kjbus.com/";
         option = "width=800, height=600, top=(window.screen.height / 2) - 300, left=(window.screen.width / 2) - 400, menubar=yes, status=yes, titlebar=yes, resizable=yes";
          break;
      case 05:
         url= "http://www.chungexp.co.kr/";
         option = "width=800, height=600, top=(window.screen.height / 2) - 300, left=(window.screen.width / 2) - 400, menubar=yes, status=yes, titlebar=yes, resizable=yes";
          break;
      case 06:
         url= "http://www.jbexpress.co.kr/";
         option = "width=800, height=600, top=(window.screen.height / 2) - 300, left=(window.screen.width / 2) - 400, menubar=yes, status=yes, titlebar=yes, resizable=yes";
          break;
      case 07:
         url = "https://www.kumhobuslines.co.kr/fr/main/main";
         option = "width=800, height=600, top=(window.screen.height / 2) - 300, left=(window.screen.width / 2) - 400, menubar=yes, status=yes, titlebar=yes, resizable=yes";    
          break;
       }
      if (url != null) {
         window.open(url, "", option);
      }
   });

getList();
function getList(){
    $.ajax({
       url:"/final/notice/guide.json",
       success:function(data){
          const result = document.getElementById("temp").outerHTML.replace('<script id="temp" type="text/x-handlebars-template">', '');
             const temp = Handlebars.compile(result);
             document.getElementById("terminalTable").innerHTML = temp(data);
       }
    });
 }
</script>
</html>