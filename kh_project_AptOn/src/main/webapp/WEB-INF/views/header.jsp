<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <a href="/apton"><img src="resources/img/logo.png">&nbsp;&nbsp;with APTON</a>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="resources/img/logo.png" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
      ${admin.adminId }
      ${member.houseNum }
        <ul>
        <li><a href="adminlogin">어드민로그인</a></li>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">아파트 소식</a></li>
          <li><a class="nav-link scrollto" href="#services">민원 접수</a></li>
          <li><a class="nav-link scrollto" href="#contact">우리집 관리</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links d-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="insertmember" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>

    </div>
  </header><!-- End Header -->