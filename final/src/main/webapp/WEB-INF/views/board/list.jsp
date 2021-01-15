<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

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
#back-top{
         z-index:1;
      }
#btn1{
   float:right;
}
.active, .passive:hover {
   color: #fff;
    background: #272727;
    display: inline-block;
    width: 35px;
    height: 35px;
    font-size: 16px;
    font-weight: 400;
    line-height: 32px;
    vertical-align: top;
    transition: .2s;
}

.passive {
   display: inline-block;
    width: 35px;
    height: 35px;
    font-size: 16px;
    font-weight: 400;
    line-height: 32px;
    color: #343434;
    vertical-align: top;
    transition: .2s;
}

td {
   overflow: hidden;
   text-overflow: ellipsis;
}

.seq_board, .type, #pagination {
   text-align: center;
}
#pagination{
   width: 100%;
   margin-top:50px;
    padding: 44px 0 44px;
}
#tbl {
   margin: 0px auto;
}
#tbl a{
   cursor: pointer;
   color: black;
}
h1 {
   text-align: center;
   margin-bottom: 30px;
}


.titles {
   text-align: center;
   background: #d2d2d2;
}

.rows {
   text-align: center;
   border-bottom: 1px solid #d2d2d2;
   height: 40px;
}

#bodyJjin {
   padding: 100px 300px 200px 300px;
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
    max-width:400px;
}
.table_list .title{
    max-width:200px;
}
.first_line{text-align:right; padding-top:10px; margin-bottom:10px;}

.radio {
  background: #1e1e1e;
  border-radius: 50px;
  padding: 10px 15px;
  color: #626262;
  font-weight: bold;
  display: flex;
    justify-content: space-between;
    align-items: center;
    height: 45px;
  width: 260px;
  font-size: 15px;
  position: relative;
  transition: all .5s ease-in-out;
}
.radio.off {background: #1e1e1e;}
.radio.off .bar {
      background: #fff;
      left: 136px;
}
.radio.off label[for='on'] {
      color: #626262;
}
.radio.off label[for='off'] {
      color: #000;
}
.radio .wrap {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-radius: 50px;
    overflow: hidden;
    position: relative;
    height: 40px;
}

.radio input {
    opacity: 0;
    pointer-events: none;
}
.radio label {
    position: relative;
    z-index: 1;
    cursor: pointer;
    transition: all .5s ease-in-out;
    user-select: none; 
}
.radio label[for='on'] {
      margin-left: 10px;
      color: #000;
}
.radio label[for='off'] {
      margin-right: 10px;
}
.radio #on {
    position: absolute;
    left: 0;
    top: 50%;
    transform: translateY(-50%);
}
.radio #off {
    position: absolute;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
}
.radio .bar {
    position: absolute;
    left: -90px;
    top: 50%;
    transform: translateY(-50%);
    background: #fff;
    height: 40px;
    width: 200px;
    border-radius: 50px;
    transition: all .5s ease-in-out;
}

.sContainer {
  text-align: center;
  color: #2c3e50;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

form {
  transition: all 0.5s;
  transform: translateY(-50%);
}
.finder {
  border: 1px solid #fff;
  background-color: #f6f5f0;
  border-radius: 15px;
  padding: 8px;
  box-shadow: 9px 9px 16px rgba(189, 189, 189, 0.6),
    -9px -9px 16px rgba(255, 255, 255, 0.5);
}

.finder__outer {
  display: flex;
  width: 600px;
  padding: 0.5rem 2rem;
  border-radius: 10px;
  box-shadow: inset 10px 10px 15px -10px #c3c3c3,
    inset -10px -10px 15px -10px #ffffff;
}

.finder__inner {
  display: flex;
  align-items: center;
  position: relative;
  flex: 1;
}

.finder__form {
  flex: 1;
  height: calc(100% + 3rem);
}

.finder__input {
  height: calc(100% + 3rem);
  width:90%;
  border: none;
  background-color: transparent;
  outline: none;
  font-size: 1.5rem;
  letter-spacing: 0.75px;
}
.finder__icon {
  width: 45px;
  height: 40px;
  margin-right: 1rem;
  transition: all 0.2s;
  box-shadow: inset 0 0 0 20px #292929;
  border-radius: 50%;
  position: relative;
}
.finder__icon:after,
.finder__icon:before {
    display: block;
    content: "";
    position: absolute;
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
.finder__icon:after {
    width: 15px;
    height: 15px;
    background-color: #292929;
    border: 3px solid #f6f5f0;
    top: 50%;
    position: absolute;
    transform: translateY(-50%);
    left: 0px;
    right: 0;
    margin: auto;
    border-radius: 50%;

    
}
.actives .finder__icon:after {
      border-width: 13px;
      background-color: #f6f5f0;
}
.finder__icon:before {
    width: 4px;
    height: 13px;
    background-color: #f6f5f0;
    top: 50%;
    left: 17px;
    transform: rotateZ(45deg) translate(-50%, 0);
    transform-origin: 0 0;
    border-radius: 4px;

    
}
.actives .finder__icon:before {
      background-color: #292929;
      width: 6px;
      transform: rotateZ(45deg) translate(-50%, 25px);
}
.processing .finder__icon {
    transform-origin: 50%;
    animation: spinner 0.3s linear infinite;
    animation-delay: 0.5s;
}
.actives .finder__icon {
    transform: translateY(-5px);
}


@keyframes spinner {
  0% {
    transform: rotateZ(45deg);
  }
  100% {
    transform: rotateZ(405deg);
  }
}
.nice-select{
   outline:0;
   background:transparent;
   border:0;
   float:right;
}
.write_btn{
   background: #231f20;
}
.write_btnIn {
  background: transparent;
  text-transform: uppercase;
  font-weight: 500;
  font-style: normal;
  font-size: 1rem;
  letter-spacing: 0.3em;
  color: #eb566c;
  border-radius: 0;
  padding: 18px 50px 20px;
  transition: all 0.7s ease-out;
  background: linear-gradient(270deg, rgba(223,190,106,0.8), #eb566c, rgba(34,34,34,0), rgba(34,34,34,0));
  background-position: 1% 50%;
  background-size: 300% 300%;
  text-decoration: none;
  margin: 0.625rem;
  border: none;
  border: 1px solid #eb566c;
}

.write_btnIn:hover {
  color: #fff;
  border: 1px solid rgba(223,190,106,0);
  color: white;
  background-position: 99% 50%;
}
.highlight {
  background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
  background-repeat: no-repeat;
  background-size: 100% 50%;
  background-position: 0 88%;
  transition: background-size 0.25s ease-in;
  font-size:20px;
}
.highlight:hover{
  background-size: 100% 100%;
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
   <header>
      <!-- 헤더부분 -->
      <jsp:include page="../header.jsp"></jsp:include>
   </header>
   <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>게시판</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
   <br>
   <div id = "bodyJjin">
   <ul class="mpList_tab" id = "boardType">
            <li board = "-1">
               <a class="tab_link tab_link--on buyList">전체</a>
            </li>
            <li board = "0">
               <a class="tab_link">공지사항</a>
            </li>
            <li board = "1">
               <a class="tab_link">건의사항</a>
            </li>
            <li board = "2">
               <a class="tab_link">문의사항</a>
            </li>
            <li board = "3">
               <a class="tab_link">자유게시판</a>
            </li>
            <li board = "4">
               <a class="tab_link">표 교환</a>
            </li>
            <li board = "5">
               <a class="tab_link">기사 신고</a>
            </li>
   </ul>
      <div class="first_line">
         <select id="sort">
            <option value="title" selected>제목</option>
            <option value="user_id">작성자</option>
            <option value="content">내용</option>
         </select>
         <div class="radio">
            <div class="wrap">
               <input type="radio" id="on" name="sortType" value="asc"> 
                  <label for="on" style="margin:5px 0px 0px 30px;">↑Up</label> 
               <input type="radio" id="off" name="sortType" value="desc"> 
                  <label for="off" style="margin:0px 18px 0px 6px;">Down↓</label>
               <div class="bar"></div>
            </div>
         </div>
      </div>

      <table id="tbl" class="table_list"></table>
   
   <script id="temp" type="text/x-handlebars-template">
   <tr class="titles">
      <th width=50>No.</th>
      <th width=100>ID</th>
      <th width=200>제목</th>
      <th width=400>내용</th>
      <th width=100>유형</th>
	  <th width = 150>작성일자</th>
   </tr>   
   {{#each list}}
   <tr class = "rows" seq_board = "{{seq_board}}">
      <td nowrap>{{rn}}.</td>
      <td nowrap>{{user_id}}</td>
      <td class = "title" nowrap style = "text-size: 20px"><a class="highlight">{{title}}</a></td>
      <td class = "content" nowrap><a class="highlight">{{content}}</a></td>
      <td nowrap>{{typeFormat type}}</td>
	  <td nowrap>{{write_date}}</td>
   </tr>
   {{/each}}
   </script>
   <script>
   Handlebars.registerHelper("typeFormat", function(type) {
      switch (type) {
      case 1:
         return "건의사항";
      case 2:
         return "문의사항";
      case 3:
         return "자유게시판";
      case 4:
         return "교환신청";
      case 5:
         return "기사 신고";
      case 0:
         return "공지사항";
      }
   });
   </script>
   <div class="write_btn">
      <a href='insert' id="btn1" class="write_btnIn">글쓰기</a>
   </div>
   <div id = "pagination"></div>
   <div id = "searchBox">
         
         <div class="sContainer">
            <form autocomplete="off">
               <div class="finder">
                  <div class="finder__outer">
                     <div class="finder__inner">
                        <div class="finder__icon" ref="icon" id="btnSearch"></div>
                        <input class="finder__input" id="keyWord" type="text" name="q" />
                        <select id = "searchType">
           <option value = "title" selected>제목</option>
           <option value = "user_id">작성자</option>
           <option value = "content">내용</option>
           <option value = "title and content">제목 + 내용</option>
       </select>
                     </div>
                  </div>
               </div>
            </form>
         </div>
      </div>
      
      </div>
   <footer>
      <jsp:include page="../footer.jsp"></jsp:include>
   </footer>
   <!-- Scroll Up -->
   <div id="back-top">
      <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
   </div>
</body>
<script>
const off = document.getElementById('off');
const on = document.getElementById('on');
const radio = document.querySelector('.radio');

off.addEventListener('click', function(){
    radio.classList.add('off');
});

on.addEventListener('click', function(){
    radio.classList.remove('off');
});
   let page = 1;
   let perPageNum = 5;
   let searchType = "seq_board";
   let keyWord = "";
   let sort = "title";
   let sortType = "asc";
   let boardType = -1;
  
   // read로 이동
   $("#tbl").on("click", ".rows .title, .content", function() {
      const seq_board = $(this).parent().attr("seq_board");
      location.href = "/final/board/read?seq_board=" + seq_board;
   });

   getList();
   
   // 각 메뉴탭들 눌렀을 시
   $("#boardType").on("click", "li", function() {
      boardType = $(this).attr("board");
      const clickA = $(this).find("a");
      $("#boardType li a").each(function() {
         $(this).attr("class", "tab_link");
      });
      clickA.attr("class", "tab_link tab_link--on");
     $("#btnSearch").click();
   });
   
   // 정렬기준 셀렉트 선택 시
   $("#bodyJjin").on("click", ".nice-select .list li", function() {
	const value = $(this).attr("data-value");
	$("#sort option").each(function() {
		$(this).attr("selected", value == $(this).val());
	});
	$("#btnSearch").click();
   });
   
   //검색창 이펙트
   const input = document.querySelector(".finder__input");
   const finder = document.querySelector(".finder");
   const form = document.querySelector("form");
   
   input.addEventListener("focus", function(){
     finder.classList.add("actives");
   });
   
   input.addEventListener("blur", function(){
     if (input.value.length === 0) {
       finder.classList.remove("actives");
     }
   });
   
   form.addEventListener("submit", function(ev){
     ev.preventDefault();
     finder.classList.add("processing");
     finder.classList.remove("actives");
     input.disabled = true;
     setTimeout(function(){
       finder.classList.remove("processing");
       input.disabled = false;
       if (input.value.length > 0) {
         finder.classList.add("actives");
       }
     }, 1000);
   });
   
   function getList(){
      $.ajax({
         url:"/final/board/list.json",
         data : { 
            "page" : page,
            "perPageNum" : perPageNum,
            "searchType" : searchType,
            "keyWord" : keyWord,
            "sort" : sort,
            "sortType" : sortType,
            "boardType" : boardType
         },
         success:function(data){
         const temp = Handlebars.compile($("#temp").html());
         document.getElementById("tbl").innerHTML = temp(data);
//          $("#tbl").html(temp(data));
         let last = data.maker.lastPage;
         let str = "";
         if (data.maker.prev) {
            str += "<a href = 1 class = 'passive'>1</a> ... ";
         }
         for (var i = page - 2; i <= last && i <= page + 2; i++) {
            if (i > 0) {
               if (i == page) {
                  str += "<a href = " + i + " class = 'active'>" + i +  "</a> ";
               } else {
                  str += "<a href = " + i + " class = 'passive'>" + i +  "</a> ";
               }
            }
         }
         if (data.maker.next) {
            str += "... <a href = " + last + " class = 'passive'>" + last + "</a>";
         }
         document.getElementById("pagination").innerHTML = str;
//          $("#pagination").html(str);
         }   
      });
   }
   $("#btnSearch").click(function() {
      page = 1;
       perPageNum = $("#perPageNum").val();
       searchType = $("#searchType").val();
       keyWord = $("#keyWord").val();
       sort = $("#sort").val();
       sortType = $("input[name='sortType']:checked").val();
     getList();
   });
   
   $("#keyWord").keydown(function(key) {
      if (key.keyCode == 13) {
         $("#btnSearch").click();
      }
   });
   
   $("#perPageNum, #searchType, #sort, input[name='sortType'], #boardType").change(function() {
       $("#btnSearch").click();
   });
   
   
   $("#bodyJjin").on("click", ".first_line .list li", function() {
      sort = $(this).attr("data-value");
      $("#btnSearch").click();
   });
   
   $("#pagination").on("click", "a", function(e) {
     e.preventDefault();
     page = $(this).attr("href");
     getList();
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
</html>