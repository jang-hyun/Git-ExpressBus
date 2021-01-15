<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>게시글 정보</title>
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
   body,html{width:100%; height:100%}
   h6{text-align:center; margin-top:140px; color:red;}
   #tbl{margin:0px auto; margin-bottom:5px; margin-top:10px;}
   td {overflow : hidden; text-overflow : ellipsis;}
   #art{
         width: 1240px;
       margin: 0 auto;
   }
.contents {
   width: 920px;
    min-height: 592px;
    background-color: rgb(255, 255, 255);
    padding: 25px 30px!important;
    font-size: 30px;
    border:0;
    resize:none;
}

#tradeTbl{margin:auto; margin-bottom:7px; text-align: center;}
#divTrade{margin:auto;}
.title{background:#d2d2d2;}
#bodyJjin{min-height:1000px;}
#btns{width : 800px; margin: auto; text-align: center;}
.input_write_tit{
   position: relative;
    width: 100%;
    background: #2b2b2b;
    letter-spacing: -.025em;
    box-sizing: border-box;
   padding: 22px 40px 24px;
    font-size: 20px;
    font-weight: 700;
    line-height: 26px;
    color: #fff;
    vertical-align: top;
    word-break: break-all;
   
}
.article-view{
   position: relative;
    width: 940px;
}
.con{
   width: 920px;
    min-height: 592px;
    padding: 13px 10px 30px;
}
.article-info{
   overflow: hidden;
    position: absolute;
    top: 0px;
    right: -300px;
    width: 300px;
    padding: 54px 0 113px;
    box-sizing: border-box;
    background: #f7f7f7;
    height:635px;
}
.wrap-nav{
   overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    width: 300px;
    height: 54px;
}
#btnHome{
    position: absolute;
    top: 0;
    width: 100%;
    height: 54px;
    box-sizing: border-box;
    border: 1px solid #e2e2e2;
    background: #fcfcfc;
}
.nav-pane1{
   background-image: url(https://t1.daumcdn.net/gamepub/ui-contents/service/elyon/home/pc/images/board/btn-listall.png);
       display: block;
    overflow: hidden;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
    width: 90px;
    height: 25px;
    margin: 14px auto 0;
    background-position-y: -25px;
    transition: background .3s;
}
.nav-pane1:hover{
   background-position-y: 0px;
}
.wrap-info{
   padding-top: 15px;
}
.info_list-user{
    width: 230px;
    height: 37px;
    padding-top: 15px;
    margin: 0 auto;
    border-bottom: 1px solid #e8e8e8;
    font-size: 15px;
    font-weight: 400;
    line-height: 20px;
    color: #4d4c4c;
}
.info_list-user dt{
   float: left;
    width: 100px;
    letter-spacing: -.05em;
}
.info_list-user dd{
    float: right;
    width: 130px;
    text-align: right;
    letter-spacing: -.01em;
    line-height: 18px;
    word-break: keep-all;
}
.tradeT{
   height:80px;
}
dl{list-style:none;}
.article-view:after {
    position: absolute;
    bottom: 0;
    left: 40px;
    width: 860px;
    height: 1px;
    background: #2b2b2b;
    content: "";
}
#btnUpdate{
   display:none;
}
#btnDelete{
   display:none;
}
.wrap-edit{
   overflow: hidden;
    position: absolute;
    bottom: 0;
    width: 300px;
    text-align: center;
}
.write_link{
   float: left;
    width: 300px;
    height: 60px;
    font-size: 15px;
    font-weight: 400;
    line-height: 58px;
    color: #fff;
    background: #d19f67;
    transition: .2s;
}
.write_link:hover{
   background:#B45F04;
}
.write_btn{
   width:250px;
   height:50px;
   margin:50px auto;
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
.table_list{
   width: 1240px;
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
.typeT{
   height:60px;
}
.nice-select{
   float:right;
}
#btnTrade{
cursor: pointer;
}
.article_comment{
   width: 860px;
    padding: 58px 0 0 40px;
    background: #fff;
}
.comment-register{
   overflow: hidden;
}
.comment-register .com-title{
   display: block;
    margin-bottom: 13px;
    font-size: 22px;
    font-weight: 500;
    line-height: 26px;
    color: #4d4c4c;
    letter-spacing: -.05em;
}
.comment-register .com-title span{
   color: #d19f67;
   font-size: 24px;
}
#commentArea{
   position:relative;
}
#txtComment{
   display: block;
    padding: 17px;
    background: #fcfcfc;
    resize: none;
    outline: none;
    width: calc(100% - 120px);
    height: 110px;
    box-sizing: border-box;
    border: 1px solid #ececec;
    font-size: 15px;
    font-weight: 400;
    line-height: 20px;
    color: #7d7d7d;
    letter-spacing: -.05em;
    transition: background .2s;
}
#btnComment{
   position: absolute;
    top: 0;
    right: 0;
    width: 120px;
    height: 110px;
    font-size: 18px;
    font-weight: 400;
    line-height: 110px;
    color: #fff;
    background: #d19f67;
    transition: .2s;
    outline:0;
    border:0;
}
#btnComment:hover{
   background:#B45F04;
}
#divComment{
   letter-spacing: -.05em;
}
#divComment .com-all{
   position: relative;
    padding: 40px 20px 41px;
    border-bottom: 1px solid #ececec;
}
.comment-info{
   height:30px;
}
.comment-info>dd {
    display: inline-block;
    margin-right: 17px;
    vertical-align: top;
}
.comment-info .comment-writer{
   display: block;
    font-size: 18px;
    font-weight: 500;
    line-height: 24px;
    color: #4d4c4c;
}
.comment-info .comment_date{
   font-size: 16px;
    font-weight: 400;
    line-height: 24px;
    color: #8a8a8a;
}
.comment-cont{
   word-break: break-all;
    padding-left: 35px;
    font-size: 18px;
    font-weight: 400;
    line-height: 24px;
    color: #7d7d7d;
}
#commentPagination{
   padding-bottom: 16px;
   position: relative;
    width: 100%;
    text-align:center;
    padding: 44px 0 112px;
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
.UnD .update, .UnD .delete{
   display:none;
}
.UnD{
   display: inline-block;
    position: relative;
    top: 1px;
    left: 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
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
.function_reply:hover{
   border: 1px solid black;
   color:black;
}
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
                            <h2>게시글</h2>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <div id = "bodyJjin">
      <h6>※교환 신청, 기사 신고는 수정이 불가능합니다.</h6>
      <article id="art">
   <form name = "frm" action = "update" method = "post">
      <input type = "hidden" name = "seq_board" value = "${vo.seq_board }"/>
      <div class = "input_box">
      <c:if test = "${LoginVO.user_id == vo.user_id }">
         <input type = "text" name = "title" class = "input_write_tit" maxlength="40" value = "${vo.title }"/>
      </c:if>
      <c:if test = "${LoginVO.user_id != vo.user_id }">
         <div class = "input_write_tit">${vo.title }</div>
      </c:if>
      </div>
      <div class="article-view">
      <div class = "con">
         <c:if test = "${LoginVO.user_id == vo.user_id }">
         <textarea name = "content" class = "contents">${vo.content }</textarea>
         </c:if>
         <c:if test = "${LoginVO.user_id != vo.user_id }">
         <input type = "hidden" name = "content" class = "contents" value = "${vo.content }">
         <textarea class = "contents" readonly>${vo.content }</textarea>
         </c:if>
      </div>
      <div class="article-info">
         <div class="wrap-nav">
            <a href='list' id="btnHome">
               <span class="nav-pane1">목록</span>
            </a>
         </div>
         <div class = "wrap-info">
            <dl class="info_list-user">
               <dt>작성자</dt>
               <dd>${vo.user_id }</dd>
            </dl>
            <c:if test = "${vo.trade != null}">
            <dl class="info_list-user tradeT">
               <dt>교환할 표</dt>
               <dd id = "wannaTradeTicket">${vo.trade }</dd>
            </dl>
            </c:if>
            <c:if test = "${(LoginVO.user_id == vo.user_id  || LoginVO.user_id == 'guswns') && vo.type != 4}">
               <dl class="info_list-user typeT">
                  <dt>타입</dt>
                  <dd>
                     <select name="type">
                     <c:if test = "${LoginVO.user_id=='guswns' }">
                        <option value=0>공지사항</option>
                     </c:if>
                        <option value=1>건의</option>
                        <option value=2>문의</option>
                        <option value=3 selected>자유게시판</option>
                     </select>
                   </dd>
                </dl>
            </c:if>
            <div class="wrap-edit">
               <c:if test = "${LoginVO.user_id == vo.user_id}">
                  <c:if test = "${vo.type != 4 && vo.type != 5 }">
                     <input type = "submit" value = "수정" id = "btnUpdate"/>
                     <label for="btnUpdate">
                        <a class="write_link">수정</a>
                     </label>
                  </c:if>
                     <input type = "button" value = "삭제" id = "btnDelete"/>
                     <label for="btnDelete">
                        <a class="write_link">삭제</a>
                     </label>
               </c:if>
               <c:if test = "${vo.type == 4 && LoginVO.user_id != vo.user_id && title != '[기간 만료]' && title != '[교환 완료]'}">
                  <a id="btnTradeList" class="write_link">교환할 표</a>
               </c:if>
            </div> 
         </div>
      </div>
      </div>
      <br>
      <c:set var = "getTitle" value = "${vo.title }"/>
       <c:set var = "title" value = "${fn:substring(getTitle, 0, 7) }"/>
   </form>
   <div class="article_comment">
        <div class="comment-register">
           <h3 class="com-title">
              댓글
              <span id = commentCount></span>
           </h3>
           <div id = "commentArea">
              <textarea id = "txtComment" title = "댓글 입력..." placeholder="댓글 작성 시 책임과 타인에 대한 배려를 담아주세요.&#13;&#10;메일 주소, 휴대폰 번호 등 개인 정보를 유출하거나 운영 정책에 위배되는 글 등록 시, 서비스 이용이 제한될 수 있습니다."></textarea>
            <button id = "btnComment" style = "cursor: pointer;" onclick="commentInsert();">등록</button>
         </div>
        </div>
         <div id = "divComment"></div>
         <div id = "commentPagination"></div>
   </div>
   <script id = "commentTemp" type = "text/x-handlebars-template">
      {{#each commentList}}
      <div class = "comment com-all" date = "{{comment_date}}" myComment = {{thisIsMyComment user_id}}>
            <dl class = "comment-info">
            <dd>
               <span class="comment-writer">{{user_id}}</span>
            </dd>
            <dd>
               <span class = "comment_date">{{dateFormat comment_date}}</span>
            </dd>
         </dl>
            <div class = "comment-cont">
            <span class = "comment">{{comment}}</span>
            <div class = "UnD">
               
            </div>
         </div>
         </div>
   {{/each}}
   </script>
   </article>
   <script>
      Handlebars.registerHelper("thisIsMyComment", function(id) {
         return "${LoginVO.user_id}" == id ? true : false;
      });
   </script>
   
   <br>
   <div id = "trade">
   <table id = "tradeTbl" class="table_list"></table>
   <div class="write_btn">
      <a id="btnTrade" class="write_btnIn">교환신청</a>
   </div>
    </div>
      <script type="text/x-handlebars-template" id = "temp">
      <tr class = "title">
         <th width = 50>선택</th>
         <th width = 80>출발지</th>
         <th width = 80>도착지</th>
         <th width = 100>출발 플랫폼</th>
         <th width = 100>좌석 번호</th>
         <th width = 200>출발 날짜 및 시간</th>
         <th width = 100>표 가격</th>
         <th width = 170>예매한 날짜</th>
         <th width = 50>비고</th>
      </tr>
      {{#each list}}
      <tr class = "rowT" bus = "{{bus_code}}">
         <td><input type = "checkbox" class = "check"></td>
         <td class = "start">{{start}}</td>
         <td class = "dest">{{dest}}</td>
         <td class = "platform_code">{{platform_code}}</td>
         <td class = "seat_num">{{seat_num}}</td>
         <td class = "reser_go">{{reser_go}}</td>
         <td class = "reser_price">{{numberFormat reser_price}}</td>
         <td class = "reser_date">{{dateFormat reser_date}}</td>
         <td class = "ischild">{{age ischild}}</td>
      </tr>
      {{/each}}
   </script>
   <script>
      Handlebars.registerHelper("dateFormat", function(reser_date) {
          return new Handlebars.SafeString(
              moment(reser_date).format("YYYY-MM-DD HH:mm:ss").toUpperCase()
          );
      });
      Handlebars.registerHelper("age", function(ischild) {
         return ischild == "O" ? "어린이" : "성인";
      });
      Handlebars.registerHelper("numberFormat", function(reser_price) {
         return reser_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원";
      });
   </script>
     
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
   let check = false;
   let page = 1;
   $("#trade").hide();
   const seq = "${vo.seq_board}";
   const me = "${LoginVO.user_id}";
   const target = "${vo.user_id}";
   const isTrade = "${vo.type}" == 4 ? true : false;
   const tradeTicket = "${vo.trade}".split(" ");
   const btnComment = document.getElementById("btnComment");
   const divComment = document.getElementById("divComment");
   const commentPagination = document.getElementById("commentPagination");
   tradeCheck();
   function tradeCheck() {
      if (isTrade) {
         $(frm.title).attr("readonly", true);
         $(frm.content).attr("readonly", true);
      }
   }
   getCommentList();
   function getCommentList() {
      $.ajax({
        url : "/final/board/commentList.json",
        data : {"seq_board" : seq, "page" : page},
        success : function(data) {
         const temp = Handlebars.compile($("#commentTemp").html());
         divComment.innerHTML = temp(data);
         let str = "";
            if (data.maker.prev) {
               str += "<a href = 1 class = 'passive'>1</a> ... ";
            }
            const last = data.maker.lastPage;
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
            commentPagination.innerHTML = str;
            const btns = "<button class = 'update' id='commentUp'>수정</button><button class = 'delete' id='commentDe'>삭제</button><label for='commentUp'><a class='function_reply'>수정</a></label><label for='commentDe'><a class='function_reply'>삭제</a></label>";
            $("#divComment .comment").each(function() {
               if ($(this).attr("myComment") == "true" || me == "guswns") {
                  $(this).find(".UnD").html(btns);
               }
            });
            $("#commentCount").html(data.commentCount);
        }
      });
   }
   
   // 페이지 넘기기
   $("#commentPagination").on("click", "a", function(e) {
      e.preventDefault();
      page = $(this).attr("href");
      getCommentList();
   });
   // 댓글 등록
   $("#txtComment").keydown(function(key) {
     if (key.keyCode == 13) {
        commentInsert();
     } 
   });
   // 댓글 등록
   function commentInsert() {
      if (me.trim().length == 0) {
         alert("로그인이 필요한 서비스입니다.");
         location.href = "/final/user/login";
      } else {
         $.ajax({
           type : "post",
           url : "/final/board/commentInsert",
           data : {"seq_board" : seq, "user_id" : me, "comment" : $("#txtComment").val()},
           success : function() {
              $("#txtComment").val("");
              getCommentList();
           }
        });
      }
   }
   // 댓글 수정
   $("#divComment").on("click", ".update", function() {
      const comment = $(this).parent().parent().parent();
      let updateComment = prompt("댓글 입력");
      updateComment = updateComment == null ? "" : updateComment.trim();
      if (updateComment.length == 0) {
         return; 
      } else {
         $.ajax({
            type : "post",
            url : "/final/board/myComment",
             data : {
               "seq_board" : seq,
               "user_id" : comment.find(".comment-writer").html(),
               "comment" : updateComment,
               "date" : comment.find(".comment_date").html(),
               "type" : 1
            },
               success : function() {
                  getCommentList();
               }
         });
      }
   });
   
   // 댓글 삭제
   $("#divComment").on("click", ".delete", function() {
      const comment = $(this).parent().parent().parent();
      if (!confirm("이 댓글을 삭제하시겠습니까?")) {
         return;
      } else {
         $.ajax({
            type : "post",
            url : "/final/board/myComment",
            data : {
               "seq_board" : seq,
               "user_id" : comment.find(".comment-writer").html(),
               "comment" : comment.find(".comment-cont").find(".comment").html(),
               "date" : comment.find(".comment_date").html(),
               "type" : 2
            },
            success : function() {
               getCommentList();
            }
         });
      }
   });
   $("#btnTradeList").click(function() {
      const place = $("#wannaTradeTicket").html().split(" ")[0].split("-");
      const start = place[0];
      const dest = place[1];
      if (me.length > 0) {
         $.ajax({
            url : "/final/user/trade.json",
            data : {"start" : start, "dest" : dest},
            success : function(data) {
            if (data.list.length == 0) {
               alert("교환 가능한 표가 없습니다.");
               } else {
                  const temp = Handlebars.compile($("#temp").html());
                  $("#tradeTbl").html(temp(data));
                  $("#trade").show();
               }
            }
         });
      } else {
         alert("로그인이 필요한 서비스입니다.");
         location.href = "/final/user/login";
      }
   });
   $("#tradeTbl").on("click", ".rowT .check",function() {
      if ($(this).is(":checked")) {
         if (check) {
            alert("1개의 표만 선택 가능합니다.");
            $(this).prop("checked", false);
         }
         check = true;
      } else {
         check = false;
      }
   });
   $("#btnTrade").click(function() {
      if (!check) {
         alert("표를 선택해 주세요.");
      } else {
         if (!confirm("선택한 표로 교환 신청하시겠습니까?")) {
            return;
         } else {
            $("#tradeTbl .rowT .check").each(function() {
               if ($(this).is(":checked")) {
                  const row = $(this).parent().parent();
                  const start = row.find(".start").html();
                  const dest = row.find(".dest").html();
                  const senderReser_go = row.find(".reser_go").html();
                  const receiverReser_go = tradeTicket[1] + " " + tradeTicket[2];
                  const seat_num = row.find(".seat_num").html();
                  const targetSeat = tradeTicket[4].substring(0, tradeTicket[4].length - 1);
                  const bus = row.attr("bus");
                  $.ajax({
                     type : "post",
                     url : "/final/trade/insert",
                     data : {
                        "seq_board" : seq,
                        "send_user_id" : me,
                        "receive_user_id" : target,
                        "send_ticket" : start + " " + dest + " " + seat_num + " " + senderReser_go,
                        "receive_ticket" : start + " " + dest + " " + targetSeat + " " + receiverReser_go
                        },
                     success : function(data) {
                        if (data) {
                           alert("성공적으로 교환신청 되었습니다.");
                           location.href = "/final/user/myPage";
                        } else {
                           alert("이미 교환중인 표를 선택하셨습니다.");
                        }
                     }
                  });
               }
            });
         }
      }
   });
   $(frm).submit(function(e) {
      e.preventDefault();
      if (!confirm("수정하시겠습니까?")) {
         return;
      } else {
         alert("수정이 되었습니다!");
         frm.submit();
      }
   });
   
   $("#btnDelete").on("click", function() {
      if (!confirm("삭제하실건가요?")) {
         return;
      } else {
         frm.action = "delete";
         frm.method = "post";
         alert("삭제가 되었습니다!");
         frm.submit();
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
</html>