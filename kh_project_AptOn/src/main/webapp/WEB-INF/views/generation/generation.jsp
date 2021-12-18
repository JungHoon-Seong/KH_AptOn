<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="kh.teamproject.apton.generation.model.vo.Generation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
  <script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<%Generation vo = (Generation) request.getAttribute("gener");%>

<style>
header {
	font-family: 'Noto Sans KR', sans-serif;
}

footer {
	font-family: 'Noto Sans KR', sans-serif;
}
#adminmain{
	overflow: hidden;
}
#contentsection{
	font-family: 'Noto Sans KR', sans-serif;
	width : 1300px;
	margin: 0 auto;
}

boby {
	display: block;
}

#nav {
	width: 100%;
	background-color: cornflowerblue;
}
#main-box{
	text-align: center;
}
#mcost {
	margin-right: 20px;
	width: 500px;
	height: 500px;
	float: left;
}
/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" flush="true" />
	
<main id="adminmain">
<section id="contentsection">
<div class="tab">
  <button class="w3-bar-item w3-button" onclick="location.href='http://localhost:8090/apton/allcost'">공동 관리비</button>
  <button class="w3-bar-item w3-button" onclick="location.href='http://localhost:8090/apton/maintencost'">개인 관리비</button>
  <button class="w3-bar-item w3-button" onclick="location.href='http://localhost:8090/apton/generation'">에너지 사용량</button>
</div>
			
	<div id="main-box">
		<div id="mcost">
		<div id="piechart" style="width: 900px; height: 500px;"></div>
		</div>
	</div>
  </section>
</main>
</body>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', '에너지 사용량'],
          ['전기', ${gener.eElec}],
          ['수도', ${gener.eWater}],
          ['온수', ${gener.eHotWater}],
          ['난방', ${gener.eHeation}],
          ['가스', ${gener.eGas}]
        ]);

        var options = {
          title: '에너지 사용량'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
</html>