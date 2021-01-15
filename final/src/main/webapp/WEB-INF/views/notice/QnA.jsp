<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>권오윤의 QnA</title>
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
      h1{text-align:center;}
      #bodyJjin{padding:50px;}
      .question{cursor: pointer;}
      .answer{display:none; color:#800080; text-size:16px; padding-top:5px;}
      .titles{border: 1px solid black; margin-bottom:1px; width:800px; margin:auto; padding:10px;}
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
                  <h2>자주하는 질문</h2>
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
   <div id = "bodyJjin">
   <h1>▶ 고객님들이 자주 문의하시는 질문과 답변입니다. ◀</h1>
   <br>
   <dl id = "tbl"></dl>
   <script id="temp" type="text/x-handlebars-template">
   {{#each .}}
      <div class="titles">
         <dt width=50 class = "question">No. {{number}} {{question}}</dt>
         <dd width=200 class = "answer">{{answer}}</dd>
      <br><br>
      </div> 
     <br>  
   {{/each}}
   </script>
   </div>
   <footer> <jsp:include page="../footer.jsp"></jsp:include> </footer>
</body>
<script>
   getList();
   function getList() {
      $.ajax({
         url : "/final/notice/QnA.json",
         success : function(data) {
            const temp = Handlebars.compile($("#temp").html());
            document.getElementById("tbl").innerHTML = temp(data);
         }
      });
   }
   $("#tbl").on("click", ".question", function() {
      const title = $(this).parent();
      const answer = title.find(".answer");
         if( answer.is(":visible") ){
            answer.slideUp();
           }else{
              answer.slideDown();
           }
   });
</script>
</html>