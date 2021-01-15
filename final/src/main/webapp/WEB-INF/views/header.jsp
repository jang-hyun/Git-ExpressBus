<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="com.example.domain.UserVO" %>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<!-- Header Start -->
       <div class="header-area header-transparent">
            <div class="main-header">
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="/final/home">Express Bus</a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-8">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">                                                                                                                              
                                            <li><a href="/final/home">Home</a></li>
                                            <li><a href="/final/user/myPage">마이페이지</a></li>
                                            <li><a href="/final/board/list">게시판</a></li>
                                            <li><a href="" id = "noticeMain">이용안내</a>
                                                <ul class="submenu" id = "noticeA">
                                                    <li><a href="notice1">승차권 예매 / 발권</a></li>
                                                    <li><a href="notice2">수수료</a></li>
                                                    <li><a href="notice3">결제수단 안내</a></li>
                                                    <li><a href="notice4">승차권 환불 안내</a></li>
                                                    <li><a href="notice5">터미널 안내</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="/final/notice/QnA">고객센터</a></li>
                                            <c:set var="name" value="홍길동" />
                                 <c:choose>
                                  <c:when test = "${LoginVO == null }">
                                              <%String navername = request.getParameter("navername");
                                     String kakaonickname = request.getParameter("kakaonickname");                                         
                                     session.setAttribute("navername", navername);
                                     session.setAttribute("kakaonickname", kakaonickname);
                                     if (navername == null && kakaonickname == null) {%>
                                        <li class="login"><a href="/final/user/login"><i class="ti-user"></i>Sign in or Register</a></li>                               
                                    <%} else if (navername != null){%>
                                        <div class="user_name">naver<%=session.getAttribute("navername")%>님 환영합니다.</div>
                                        <form action ="/final/user/naver_logout.do" method = "post">
                                        <button type = "submit" name = "submit" class="logout_btn">Log out</button></form>                                     
                                    <%} else if (kakaonickname != null){%>                                     
                                        <div class="user_name">kakao<%=session.getAttribute("kakaonickname")%>님 환영합니다.</div>                                  
                                        <form action = "/final/user/kakao_logout.do" method = "post">
                                        <button type = "submit" name = "submit" class="logout_btn">Log out</button></form>                                     
                                    <%};%>
                                    </c:when>
                                            <c:when test="${LoginVO == null }">
                                      <li class="login"><a href="user/login"><i class="ti-user"></i>Sign in or Register</a></li>
                                  </c:when>
                                  <c:when test="${LoginVO.user_id =='guswns'}">
                                        <li><a class = "rkt" href="/final/admin/adminPage">관리자 페이지</a></li>
                                      <a><i class="ti-user"></i><div class="user_name">${LoginVO.user_name }</div> 관리자님</a>
                                             <a href="/final/user/logout"><div class="logout_btn">Log out</div></a>
                                  </c:when>
                                  <c:when test="${LoginVO.user_id != 'guswns' && LoginVO != null}">
                                     <a><i class="ti-user"></i><div class="user_name">${LoginVO.user_name }</div>님 환영합니다.</a>
                                                <a href="/final/user/logout"><div class="logout_btn">Log out</div></a>
                                  </c:when>
                                 </c:choose>
                                            
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div> 
       </div>
        <!-- Header End -->
        <script>
           $("#noticeA li a, #noticeMain").click(function(e) {
              e.preventDefault();
              const link = document.location.href.split("/");
              const notice = $(this).attr("href");
              $.ajax({
                 url : "/final/notice/noticeID",
                 data : {"id" : notice},
                 success : function() {
                    if (link == "guide") {
                       idCheck();
                      } else {
                         location.href = "/final/notice/guide";
                      }
                 }
              });
           });
        </script>