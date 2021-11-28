<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>노원 롯데캐슬 하자접수 게시판 with APTON</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Lumia - v4.6.0
  * Template URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <style>
 ul {
 list-style-type: none;
 }
 
 #aside {
 	float: left;
 	width: 200px;
 }
 #mainsection {
 	float: left;
 	width: 1200px;
 }
 table {
	 border: 1px solid black;
	 width: 1200px;
	 text-align: center;
 }
 #rowheader {
	 font-weight: bold;
	 text-align: center;
	 background-color: #ccc;
 }
 .completestate {
	 font-weight: bold;
 }
 footer {
 	clear: both;
 }
  .img {
 	width: 120px;
 	height: 80px;
 }
 #btnPermitBox {
 	float: right;
 }
 #btnPermit {
	 broder: none;
	 border-radius: 5px;
	 color: white;
	 padding: 15px 32px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #008CBA;
 }
 
 h2 {
 margin-top: 200px;
 margin-left: 200px;
 }
 </style>
  
  <script>
  function permitscript(){
	  
  }
  
  google.charts.load('current', {'packages':['bar']});
  google.charts.setOnLoadCallback(drawChart);
  //아래의 함수를 ajax를 통해서 받아온 자료를 가지고 그려야한다. sql문은 작동하나 dao 리턴값이 부분적으로만 받아진다. 
  function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['월별통계', '신고수', '완료된 민원'],
        ['202101', 1, 1],
        ['202110', 7, 4]
      ]);

      var options = {
        chart: {
          title: '노원 롯데캐슬 민원 통계',
          subtitle: '신고수, 처리완료한 민원',
        }
      };

      var chart = new google.charts.Bar(document.getElementById('datachart'));

      chart.draw(data, google.charts.Bar.convertOptions(options));
    }
  </script>
  
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header4admin.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->





<main id="main">
<h2>관리자 노원 롯데 캐슬 통계화면 - <a href="./manage-dr">아파트 민원 접수</a></h2>

<aside id="aside">
<!-- 대체됨 -->
<ul>
	<li><a href="#" hidden="hidden">서브메뉴1</a></li>
	<li><a href="#"hidden="hidden">서브메뉴2</a></li>
	<li><a href="#"hidden="hidden">서브메뉴3</a></li>
</ul>
</aside>


<section id="mainsection">

	
	<!-- Todo 데이터를 본격적으로 그려야함 -->
	 <div id="datachart" style="width: 800px; height: 500px;"></div>
	
</section>
</main>

     <!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp" flush="true" />
 


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>
  <script src="resources/vendor/purecounter/purecounter.js"></script>
  <script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>

</body>
</html>