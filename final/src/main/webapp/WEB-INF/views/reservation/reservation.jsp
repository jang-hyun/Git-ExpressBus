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
<title>고속버스 예약</title>
<style>
   @font-face{
      font-family:Cafe24Lovingu;
      src: url(${pageContext.request.contextPath}/resources/assets/fonts/Cafe24Lovingu.ttf) format("truetype");
   }
   h3{
      font-family:Cafe24Lovingu;
      font-size:40px;
   }
</style>
</head>
<body>
   <div id="reservePage">
      <h3>happy enjoy bus!</h3>
      <form name="scheduleFrm">
         <input type="hidden" name="start_terminal_code"
            id="start_terminal_code" value=""> <input type="hidden"
            name="dest_terminal_code" id="dest_terminal_code" value="">
         <input type="hidden" name="bus_tier" id="bus_tier" value="0">
         <input type="hidden" name="reser_go" id="reser_go" value="">
      </form>
<!--       <span id="one-way"> -->
<!--          <span class="name">편도</span> -->
<!--       </span> -->
<!--       <span id="two-way"> -->
<!--          <span class="name">왕복</span> -->
<!--       </span> -->
      <div class="center">
         <div class="firstContents">
         <div id="start" class="center_box">
            <h5>출발지</h5>
            <input type="text" placeholder="선택" id="inputStart" class="inputbox" readonly>
         </div>
         <button id="btnChange"></button>
         <div id="dest" class="center_box">
            <h5>도착지</h5>
            <input type="text" placeholder="선택" id="inputDest" class="inputbox" readonly>
         </div>
         </div>
         <div id="date" class="center_box">
            <h5>가는날짜</h5>
            <span><input type="text" id="sdate" class="inputbox" readonly></span>
            <a id="nowDate" class="sdate_date">오늘</a> <a id="nextDate"
               class="sdate_date">다음날</a> <img
               src="${pageContext.request.contextPath}/resources/assets/img/close/ico_calender.png"
               id="imageCal">
         </div>
      </div>
      <div id="dateStart">
                  <jsp:include page="../calendar/CalendarExam2.jsp" />
                  </div>
      <div class="center">
         <div id="tier" class="center_box">
            <h5>등급</h5>
            <span class="custom_grade0" style="margin-left: 18.6667px;">
               <input type="radio" id="aBus" name="chkGrade" value="0"
               checked> <label for="aBus">전체</label>
            </span> <span class="custom_grade1" style="margin-left: 18.6667px;">
               <input type="radio" id="pBus" name="chkGrade" value="1">
               <label for="pBus">프리미엄</label>
            </span> <span class="custom_grade2" style="margin-left: 18.6667px;">
               <input type="radio" id="uBus" name="chkGrade" value="2">
               <label for="uBus">우등</label>
            </span> <span class="custom_grade3" style="margin-left: 18.6667px;">
               <input type="radio" id="nBus" name="chkGrade" value="3">
               <label for="nBus">일반</label>
            </span>
         </div>
         <button id="Lookup" class="subButton">조회하기</button>
      </div>
   </div>
</body>
</html>