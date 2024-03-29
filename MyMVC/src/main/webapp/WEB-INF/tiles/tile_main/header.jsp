<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- ======= main tile 중 header 페이지 만들기 ======= --%>
<%
	String ctxPath = request.getContextPath();
%>
<!-- 상단 네비게이션 시작 -->
   <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top mx-4 py-3">
      
      <!-- Brand/logo --> <!-- Font Awesome 6 Icons -->
      <a class="navbar-brand" href="<%= ctxPath %>/index.up" style="margin-right: 10%;"><img src="<%= ctxPath %>/images/sist_logo.png" /></a>
      
      <!-- 아코디언 같은 Navigation Bar 만들기 -->
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
         <span class="navbar-toggler-icon"></span>
       </button>
      
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav" style="font-size: 16pt;">
           <li class="nav-item active">
              <a class="nav-link menufont_size" href="<%= ctxPath %>/index.up">Home</a>
           </li>
           <li class="nav-item active">
              <a class="nav-link menufont_size" href="<%= ctxPath %>/member/memberRegister.up">회원가입</a>
           </li>
           <li class="nav-item active">
              <a class="nav-link menufont_size" href="<%= ctxPath %>/shop/mallHomeMore.up">쇼핑몰홈[더보기]</a>
           </li>
           <li class="nav-item active">
              <a class="nav-link menufont_size" href="<%= ctxPath %>/shop/mallHomeScroll.up">쇼핑몰홈[스크롤]</a>
           </li>
           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle menufont_size text-info" href="#" id="navbarDropdown" data-toggle="dropdown"> 
                 매장찾기                                  <%-- .text-info 는 글자색으로 청록색임 --%>  
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item text-info" href="<%= ctxPath %>/shop/storeLocation.up">매장찾기</a>
                 <a class="dropdown-item text-info" href="<%= ctxPath %>/shop/latLngSearch.up">위.경도 찾기</a>
              </div>
          </li>
           
           
          <c:if test="${sessionScope.loginuser !=null and sessionScope.loginuser.userid !='admin'}"> <%--admin 이 아닌 일반사용자로 로그인 했으면 --%>
          <%--<c:if test="${sessionScope.loginuser !=null and sessionScope.loginuser.userid !='admin'} "> 와 같이 공백을 주면 꽝이다. --%>
          
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle menufont_size text-info" href="#" id="navbarDropdown" data-toggle="dropdown"> 
                 장바구니/주문                                <%-- .text-primary 는 글자색으로 파랑색임 --%>  
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item text-info" href="<%= ctxPath %>/shop/cartList.up">장바구니</a>
                 <a class="dropdown-item text-info" href="<%= ctxPath %>/shop/orderList.up">나의주문내역</a>
                 
              </div>
           </li>
           </c:if>
          
          
          <c:if test="${sessionScope.loginuser !=null and sessionScope.loginuser.userid =='admin'}"> <%--admin 으로 로그인 했으면 --%>
          <%--<c:if test="${sessionScope.loginuser !=null and sessionScope.loginuser.userid =='admin'} "> 와 같이 공백을 주면 꽝이다. --%>
          
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle menufont_size text-primary" href="#" id="navbarDropdown" data-toggle="dropdown"> 
                 관리자전용                                <%-- .text-primary 는 글자색으로 파랑색임 --%>  
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item text-primary" href="<%= ctxPath %>/member/memberList.up">회원목록</a>
                 <a class="dropdown-item text-primary" href="<%= ctxPath %>/shop/admin/productRegister.up">제품등록</a>
                 <div class="dropdown-divider"></div>
                 <a class="dropdown-item text-primary" href="<%= ctxPath %>/shop/orderList.up">전체주문내역</a>
              </div>
           </li>
           </c:if>
           
        </ul>
      </div>
   </nav>
   <!-- 상단 네비게이션 끝 -->

    
       
	  	   