<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <a href="/apton"><img src="resources/img/logo.png">&nbsp;&nbsp;with APTON</a>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="resources/img/logo.png" class="img-fluid"></a>-->
      </div>
	<!-- 2021.11.24 ParkJunYub 로그인 세션 별 헤더 화면 출력 추가 -->
      <nav id="navbar" class="navbar order-last order-lg-0">
      <!--  -->
      <c:if test="${member == null and admin == null}" >
        <ul>
        <li><a href="login">로그인</a>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">아파트 소식</a></li>
          <li><a class="nav-link scrollto" href="#services">민원 접수</a></li>
          <li><a class="nav-link scrollto" href="#contact">우리집 관리</a></li>
        </ul>
        </c:if>
        
        <c:if test="${member != null}" >
        <ul>
        <li>${member.houseNum}님 환영합니다.
        <li><a href="logout">로그아웃</a>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">아파트 소식</a></li>
          <li><a class="nav-link scrollto" href="#services">민원 접수</a></li>
          <li><a class="nav-link scrollto" href="#contact">우리집 관리</a></li>
        </ul>
        </c:if>
        
        <c:if test="${admin != null}" >
        <ul>
        <li><a href="adminmain">관리자 화면으로</a>
        <li><a href="logout">로그아웃</a>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto" href="noticelist">아파트 소식</a></li>
          <li><a class="nav-link scrollto" href="board-defectreception">민원 접수</a></li>
          <li><a class="nav-link scrollto" href="allcost">우리집 관리</a></li>
        </ul>
        </c:if>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    <!--   <div class="header-social-links d-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="insertmember" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div> -->

    </div>
  </header><!-- End Header -->