<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="kh.teamproject.apton.maintenancecost.model.vo.MaintenanceCost" %>
<%MaintenanceCost mc = (MaintenanceCost) request.getAttribute("mcost");
 MaintenanceCost lastmc = (MaintenanceCost) request.getAttribute("lastmcost");%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 공통 css 및 글꼴 입력 부분 시작, title바로 밑에 삽입  -->
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
  
  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
  <script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
<style>
#adminmain{
	ovarflow: hidden;
}
#contentsection{
	font-family: 'Noto Sans KR', sans-serif;
	width : 1300px;
	margin: 0 auto;
}
boby{
	display: block;
}
header{
font-family: 'Noto Sans KR', sans-serif;
}
#main{
	top: 500px;
}
footer{
font-family: 'Noto Sans KR', sans-serif;
}
#main-box{
	text-align: center;
}
#main{
	ovarflow: hidden;
	border: 1px solid #ccc;
	background-color: blue;
}
#nav{
	background-color:cornflowerblue; 
}
#mCost_table {
	width: 500px;
	height: 500px;
	border: 1px solid #444444;
	border-collapse: collapse;
}
th, td {
	padding: 10px;
	border: 1px solid #444444;
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

<!-- 공통 css 및 글꼴 입력 부분 끝  -->


</head>
<body>
<%DecimalFormat formatter = new DecimalFormat("###,###,###");
	String mCost = formatter.format(mc.getmCost());
	String lmCost = formatter.format(lastmc.getmCost());
	String cleanCost = formatter.format(mc.getCleanCost());
	String lcleanCost = formatter.format(lastmc.getCleanCost());
	String secuCost = formatter.format(mc.getSecuCost());
	String lsecuCost = formatter.format(lastmc.getSecuCost());
	String elevatorCost = formatter.format(mc.getElevatorCost());
	String lelevatorCost = formatter.format(lastmc.getElevatorCost());
	String disinCost = formatter.format(mc.getDisinCost());
	String ldisinCost = formatter.format(lastmc.getDisinCost());
	String comWtCost = formatter.format(mc.getHouseWaterCost());
	String lcomWtCost = formatter.format(lastmc.getHouseWaterCost());
	String comElCost = formatter.format(mc.getElecCost());
	String lcomElCost = formatter.format(lastmc.getElecCost());
	String price = formatter.format(mc.getPrice());
	String lprice = formatter.format(lastmc.getPrice());
	String date = mc.getMaintenanceCostDate();
	String sh = date.substring(0, 10);
	 %>
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
		
			<table id="mCost_table">
				<tr>
				<th colspan="3"><%=sh %> 항목 별 관리비</th>
				</tr>
				<tr>
					<th>항목</th>
					<th>전월고지금액</th>
					<th>당월고지금액</th>
				</tr>
				<tr>
					<td>일반관리비</td>
					<td><%=lmCost %></td>
					<td><%=mCost %></td>
				</tr>
				<tr>
					<td>청소비</td>
					<td><%=lcleanCost %></td>
					<td><%=cleanCost %></td>
				</tr>
				<tr>
					<td>경비비</td>
					<td><%=secuCost %></td>
					<td><%=lsecuCost %></td>
				</tr>
				<tr>
					<td>승강기유지비</td>
					<td><%=lelevatorCost %></td>
					<td><%=elevatorCost %></td>
				</tr>
				<tr>
					<td>소독비</td>
					<td><%=lsecuCost %></td>
					<td><%=secuCost %></td>
				</tr>
				<tr>
					<td>공용수도료</td>
					<td><%=lcomWtCost %></td>
					<td><%=comWtCost %></td>
				</tr>
				<tr>
					<td>공용전기료</td>
					<td><%=lsecuCost %></td>
					<td><%=secuCost %></td>
				</tr>
			</table>
		</div>
		<div id="columnchart_material"></div>
	</div>
	
</section>
</main>
<div id="columnchart_material" style="width: 800px; height: 500px;"></div>
</body>
<script type="text/javascript">
    /*
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
	
      function drawChart() {
    	  
        var data = google.visualization.arrayToDataTable([
          ['Dialogue', '작년', '올해'],
          ['1월', 54639381, "${vo.price}"],
          ['2월', 0.7, 0.3],
          ['3월', 0.4, 0.8],
          ['4월', 0.2, 1],
          ['5월', 0.2, 1],
          ['6월', 0.2, 1],
          ['7월', 0.2, 1],
          ['8월', 0.2, 1],
          ['9월', 0.2, 1],
          ['10월', 0.2, 1],
          ['11월', 0.2, 1],
          ['12월', 0.2, 1]
        ]);

        var options = {
          chart: {
            title: '2021년 관리비 총액',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      */
    </script>
</html>