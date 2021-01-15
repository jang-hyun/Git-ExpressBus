<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  <!-- 라이브러리 Load -->
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script> 
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>차트</title>
</head>
<style>
   .chart1{margin:0px auto;}
   #start,#dest{height:30px;}
</style>
<body>
   <div class="chart" id="chart1"  style="text-align : center; margin-top:-200px;">
   <span class="startZone" >출발지 : </span>
   <select id="start">
         <c:forEach items = "${terminalList }" var = "vo">
         	<option value="${vo.terminal_code }" >${vo.terminal_place1 }</option>
         </c:forEach>
   </select>
   <span class="destZone">도착지 : </span>
   <select id="dest">
      <c:forEach items = "${terminalList }" var = "vo">
         <c:if test = "${vo.terminal_code == '07' }">
            <option value="${vo.terminal_code }" selected>${vo.terminal_place1 }</option>
         </c:if>
         <c:if test = "${vo.terminal_code != '07' }">
            <option value="${vo.terminal_code }">${vo.terminal_place1 }</option>
         </c:if>
         </c:forEach>
   </select>
   <select id = "date"></select>
   <script id = "dateTemp" type = "text/x-handlebars-template">
		{{#each .}}
			<option value = "{{date}}">{{date}}</option>
		{{/each}}
	</script>
   </div>
   <div id="chart_div" style="margin:0px 0px 0px 100px;"></div>
</body>
<script type="text/javascript">
getDateList();
function getDateList() {
	$.ajax({
		url : "/final/admin/dateList.json",
		data : {"sCode" : $("#start").val(), "dCode" : $("#dest").val()},
		success : function(data) {
			const temp = Handlebars.compile($("#dateTemp").html());
			if (data.length == 0) {
				alert("조회할 데이터가 없습니다.");
				document.getElementById("chart_div").style.visibility = "hidden";
			} else {
				$("#date").html(temp(data));
			}
		}
	});
}

changeChart();
$("#start, #dest").change(function() {
	getDateList();
});
$("#date").change(function() {
   changeChart();
});
function changeChart(){
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawVisualization);
   function drawVisualization() {
      $.ajax({
         url:"/final/admin/chart.json",
         data:{"sCode":$("#start").val(), "dCode":$("#dest").val(), "date" : $("#date").val()},
         success:function(result){
            // Some raw data (not necessarily accurate)
            if (result != "출발 날짜,예매수") {
               var data = google.visualization.arrayToDataTable(result);
               var options = { title : '시간대별 고객인원수 차트', seriesType: 'bars',width:1500, height:800};
               var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
                chart.draw(data, options);
                document.getElementById("chart_div").style.visibility = "visible";
            } else {
               document.getElementById("chart_div").style.visibility = "hidden";
               alert("조회할 데이터가 없습니다.");
            }
         }
      });     
   }
}
</script>

</html>