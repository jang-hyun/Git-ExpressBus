<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
   .pop_top{background:#68B3CE; height:100px;}
   #oneDayClose{cursor: pointer; text-align:center; background:#dcdcdc; height:70px;}
   .pop_tit{font-family: 'Malgun Gothic', '맑은고딕', sans-serif; font-size:22px; line-height: 1.5; text-align:center; margin-top: -7px;
          }
   #btns{padding:5px;}
</style>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>코로나19 관련 안내</title>
</head>
<body>
   <div class = "pop_top">
      <img id="popImg" src="/final/seat/display?fileName=popImg.jpg" width="70" height="50" style="margin:7px 0px 7px 210px;">
      <p class = "pop_tit">코로나 19 안내</p>
   </div>
   
   <div style="font-family: '맑은 고딕', 'Malgun Gothic', sans-serif;">
      <p align="center;" style="text-align: center;">
         <b><span style="color: rgb(255, 0, 0); font-size: 11pt;">[코로나19 고속버스 사회적 거리두기 안내]</span></b>
      </p>
      <strong>
         <font color="#0000ff">
            <span style="color: rgb(0, 0, 0); font-size: 10pt; margin-left:70px;">① 예매시 창가쪽 좌석 우선 선택</span>
            <br>
         </font>
         <span style="font-size: 10pt; margin-left:70px;">② 차량내 마스크 반드시 착용</span>
         <br>
         <span style="font-size: 10pt; margin-left:70px;">③ 차량내 대화자제 및 음식물 반입</span>
         <font size="2"><span style="font-size: 10pt;">·</span></font>
         <span style="font-size: 10pt;">섭취 금지</span>
         <br>
         <span style="font-size: 10pt; margin-left:70px;">※ 중대본 거리두기 단계별 기준 근거</span>
      </strong>
      <br><br>
      <b style="font-family: "Malgun Gothic", 맑은고딕, sans-serif; font-size: 9pt; font-weight: bold;">
         </b>
         <hr>
      <p align="center;" style="text-align: center;">
         <b><span style="color: rgb(255, 0, 0); font-size: 11pt;">[고속버스 감회운행 안내]</span></b>
      </p>
      <span style="font-size: 9pt;">
         <b>
            코로나19와 관련하여 현재 고속버스 이용고객과 공급좌석간에 큰 차이가 있어 
            한시적으로 일부노선의 감회운행을 시행하여 불가피하게 결행이 발생할 수 있음을 알려드리며, 
            예매하신 승차권에 대하여 출발전 해당차량의 운행정보를 확인하여 주시기 바랍니다.         
         <br><br>
         <hr>
         <br>
         </b>
      </span>
      <p align="center;" style="text-align: center;">
         <b><span style="color: rgb(255, 0, 0); font-size: 11pt;">[고속버스 코로나19 방역운행 안내]</span></b>
      </p>
      <span style="font-family: "Malgun Gothic", 맑은고딕, sans-serif; font-size: 9pt;">
         <b>저희 고속버스 운송업계는 코로나19 전염 방지를 위하여 차량방역, 
         해당 승무원 마스크 착용, 차량내 손소독제를 비치하여 운행하고 있음을 양지하여 주시기 바랍니다.
         <br><br><br><br>
         </b>
      </span>   
   </div>   
   <div id = "btns">
      <div id = "oneDayClose"><font color = "#646464"><br>오늘 하루동안 열지 않기</font></div>
   </div>
</body>
<script>
	checkSize();
	window.onresize = function() {
		checkSize();
	}
	function checkSize() {
		window.resizeTo(525, 750);
	}
   $("#oneDayClose").click(function() {
      $(opener.document).find("#closeCheck").val("O");
      opener.parent.addPopupCookie();
      window.close();
   });
</script>
</html>