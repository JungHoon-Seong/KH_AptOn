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
      관리자 : ${admin.adminId } 님 접속중
        <ul>
          <li><a class="nav-link scrollto active" href="/apton">Home</a></li>
          <li><a class="nav-link scrollto " href="memberlist">메뉴1</a></li>
          <li><a class="nav-link scrollto" href="insertmember">메뉴2</a></li>
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
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><span>&times;</span></a>
  <a href="adminmain">관리자 메인</a>
  <div>
    <ul>
		<li class="sidedroplist">
           <a class="dropdown">공지사항</a>
            <ul class="hide">
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
            </ul>
        </li>
    </ul>
</div>
<div>
    <ul>
		<li class="sidedroplist">
           <a class="dropdown">투표/서명</a>
            <ul class="hide">
                <li><a href="votelist">투표/서명 목록</a></li>
                <li><a href="enrollvote">투표/서명 등록</a></li>
            </ul>
        </li>
    </ul>
</div>
<div>
    <ul>
		<li class="sidedroplist">
           <a class="dropdown">관리비</a>
            <ul class="hide">
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
            </ul>
        </li>
    </ul>
</div>
<div>
    <ul>
		<li class="sidedroplist">
           <a class="dropdown">민원 관리</a>
            <ul class="hide">
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
            </ul>
        </li>
    </ul>
</div>

<div>
    <ul>
		<li class="sidedroplist">
           <a class="dropdown">입주민 관리</a>
            <ul class="hide">
                <li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
            </ul>
        </li>
    </ul>
</div>
  
<a href="#">기타</a> 
</div>
</aside>
<script>
function openNav() {
	  document.getElementById("mySidenav").style.width = "200px";
	  document.getElementById("adminmain").style.marginLeft = "200px";
	};

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	  document.getElementById("adminmain").style.marginLeft= "0";
	};

</script>

<script>
//adminId가 null이거나 빈 값이면 error 페이지로 이동
//관리자 계정으로 접속하지 않았습니다. 멘트와 함께 이동		
$(document).ready(function(){
		if('${admin.adminId }' == null ||'${admin.adminId}' == ""){
			alert('${admin.adminId}');
			location.href="error?msg=관리자 계정이 아닙니다.";
		};
		
	    // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
	    $(".sidedroplist>a").click(function(){
	    	
	        // 현재 클릭한 태그가 a 이기 때문에
	        // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
	        $(this).next("ul").toggle(200);
	        $(this).toggleClass('special');
	        
	    });
});

</script>

  