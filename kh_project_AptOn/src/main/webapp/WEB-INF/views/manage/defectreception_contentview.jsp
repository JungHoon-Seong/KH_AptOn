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
	
	text-align: center;
	background-color: #ccc;
 }
 td {
 	border: 1px solid black;
 	width: 240px;
 }
 .completestate {
	 font-weight: bold;
 }
 footer {
 	clear: both;
 }
 #btnBox {
 	float: right;
 }
 .textContent {
 	text-align: justify;
 	vertical-align: top;
 	height: 375px;
 }
 .img {
 	width: 240px;
 	height: 200px;
 }
  #btnUpdate {
	 broder: none;
	 border-radius: 5px;
	 color: white;
	 padding: 7px 16px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #008CBA;
 }
 #btnDelete {
	 broder: none;
	 border-radius: 5px;
	 color: white;
	 padding: 7px 16px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #f44336;
 }
  h2 {
 margin-top: 200px;
 margin-left: 200px;
 }
 </style>

	

  
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header4admin.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->





<main id="main">
<h2>노원 롯데 캐슬 - <a href="./manage-dr">아파트 민원 접수</a></h2>

<aside id="aside">
<!-- 메뉴이름 및 링크는 추후 결정 -->
<ul>
	<li><a href="#">서브메뉴1</a></li>
	<li><a href="#">서브메뉴2</a></li>
	<li><a href="#">서브메뉴3</a></li>
</ul>
</aside>


<section id="mainsection">
	<table id="maintable">
	<c:forEach items="${drbList}" var="vo">
		<tr>
			<td id ="boardNo">${vo.drNo }</td>
			<td>${vo.drTitle }</td>
			<td>${vo.drDate }</td>
			<td id = "houseno">${vo.houseNo }</td>
			<c:choose>
				<c:when test="${vo.drState == 1}">
					<td class="completestate">처리완료</td>
				</c:when>
				<c:when test="${vo.drState == 0}">
					<td class="">처리중</td>
				</c:when>
			</c:choose>
		</tr>
		
		
	
		<tr>	
			<td class="img">이미지1</td>
			<td class="img">이미지2</td>
			<td class="img">이미지3</td>
			<td class="img">이미지4</td>
			<td class="img">이미지5</td>
				
		</tr>
		<tr>
			<td class="textContent" colspan="5">${vo.drContent }</td>
		</tr>
	
	</table>
		<div>
		</div>
	<!-- SJH TODO 회원 세션과 houseno id가 같을 경우만 보이도록 보완필요 -->
		<div id="btnBox">
			<button type="button" id="btnUpdate" onclick="btnUpdate()">강제수정</button>
			<button type="button" id="btnDelete" onclick="btnDelete()">강제삭제</button>
		</div>
		<script>
			function btnUpdate(){
				location.href="./manage-drupdate?no=${vo.drNo}";
			}
			function btnDelete(){
				
				var confirmDelete = confirm("삭제하시겠습니까?");
				if(confirmDelete == true){ <!-- 알림창의 확인 버튼 눌러야지 이동됨 -->
					location.href="./manage-drdelete?no=${vo.drNo}"
				}
			}
	</script>
	
		
	</c:forEach>
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