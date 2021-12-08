<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>

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
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

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



<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	var count = 0;
	var data;
	var chart;
	var options;
	
	function drawChart() {
		data = google.visualization.arrayToDataTable([
				[ '공동관리비 총 금액', '작년', '올해' ], [ '1월', 54639381, ${allPrice[0].price} ],
				[ '2월', 0.7, ${allPrice[1].price}], [ '3월', 0.4, ${allPrice[2].price}],
				[ '4월', 0.2, ${allPrice[3].price} ], [ '5월', 0.2, ${allPrice[4].price} ],
				[ '6월', 0.2, ${allPrice[5].price} ], [ '7월', 0.2, ${allPrice[6].price} ], [ '8월', 0.2, ${allPrice[7].price} ],
				[ '9월', 0.2, ${allPrice[8].price} ], [ '10월', 0.2, ${allPrice[9].price} ], [ '11월', 0.2, ${allPrice[10].price} ],
				[ '12월', 0.2, ${allPrice[11].price} ] ]);
			options = {
				chart : {
					title : '2021년 관리비 총액',
					subtitle : '',
				}
			};
		
		chart = new google.charts.Bar(document
				.getElementById('columnchart_material'));
		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
</script>

<style>
#contentsection{
	font-family: 'Noto Sans KR', sans-serif;
	width : 1300px;
}

boby {
	display: block;
}

header {
	font-family: 'Noto Sans KR', sans-serif;
}

footer {
	font-family: 'Noto Sans KR', sans-serif;
}



#nav {
	width: 100%;
	background-color: cornflowerblue;
}
#main-box{
	text-align: center;
}
#mCost_table {
	width: 500px;
	height: 500px;
	border: 1px solid #444444;
	border-collapse: collapse;
}

#mcost {
	margin-top: 30px;
	margin-left: 50px;
	width: 500px;
	height: 500px;
	float: left;
}

#columnchart_material {
	width: 600px;
	height: 500px;
	float: left;
}

#year_option {
	text-align: center;
}

th, td {
	padding: 10px;
	border: 1px solid #444444;
}
</style>

<!-- 공통 css 및 글꼴 입력 부분 끝  -->

</head>

<body>
	<jsp:include page="../header.jsp" flush="true" />

<main id="adminmain">
<section id="contentsection">
			<div id="nav">
				<h1>공동 관리비</h1>
			</div>
		

	<div id="main-box">
		<div id="mcost">
			<table id="mCost_table">
				<tr>
					<th>항목</th>
					<th>전월고지금액</th>
					<th>당월고지금액</th>
					<th>증감액</th>
				</tr>
				<tr>
					<td>일반관리비</td>
					<td></td>
					<td>${vo.mCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>청소비</td>
					<td></td>
					<td>${vo.cleanCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>경비비</td>
					<td></td>
					<td>${vo.secuCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>승강기유지비</td>
					<td></td>
					<td>${vo.elevatorCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>소독비</td>
					<td></td>
					<td>${vo.disinCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>공용수도료</td>
					<td></td>
					<td>${vo.comWtCost }</td>
					<td></td>
				</tr>
				<tr>
					<td>공용전기료</td>
					<td></td>
					<td>${vo.comElCost }</td>
					<td></td>
				</tr>
			</table>
		</div>
		<div>
			<select name="year" id="selectBoxTest" onchange="changeSelection()">
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
			</select>
		</div>
		
		<div id="columnchart_material"></div>

	</div>
</section>
</main>
</body>
<script>
function changeSelection() {
	var year = $("#selectBoxTest").val();
	console.log(year);
};
</script>

</html>