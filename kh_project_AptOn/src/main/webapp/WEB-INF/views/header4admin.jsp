<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
 <span style="font-size:30px;cursor:pointer" onclick="openNav()" id="showbar">&#9776;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="logo me-auto">
     
        <a href="/apton"><img src="resources/img/logo.png">&nbsp;&nbsp;with APTON</a>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="resources/img/logo.png" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
      ${admin.adminId }
      ${member.houseNum }
        <ul>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto " href="memberlist">회원리스트</a></li>
          <li><a class="nav-link scrollto" href="insertmember">회원가입</a></li>
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
  <aside>
  <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">관리자메뉴1</a>
  <a href="#">관리자메뉴2</a>
  <a href="#">관리자메뉴3</a>
  <a href="#">관리자메뉴4</a>
</div>
</aside>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "200px";
  document.getElementById("adminmain").style.marginLeft = "200px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("adminmain").style.marginLeft= "0";
}
</script>
  
  