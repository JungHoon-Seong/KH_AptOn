<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>노원 롯데캐슬 하자접수 게시판 with APTON</title>
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
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
header{
font-family: 'Noto Sans KR', sans-serif;
}
footer{
font-family: 'Noto Sans KR', sans-serif;
}
</style>

<!-- 공통 css 및 글꼴 입력 부분 끝  -->


  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 <style>
 ul {
 list-style-type: none;
 }
 
 #aside {
 	float: left;
 	width: 200px;
 }
 #mainsection {
 	margin: auto;
 	width: 1000px;
 }
 table {
 	border-collapse: collapse;
 	border-radius: 10px 10px 0 0;
	box-shadow: 0 0 0 0.5px rgb(233 202 155);
	text-align: center;
 }
 td {
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
 	box-shadow: 0 0 0 0.5px rgb(233 202 155);
 	text-align: justify;
 	vertical-align: top;
 	height: 375px;
 }
 .img {
 	max-width: 100%;
  	
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
 #btnToList {
 	float: left;
 	border : 1px solid rgba(159,220,120,1);
	border-radius: 5px;
	color: #333333;
	padding: 7px 16px;
	text-align: center;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: rgba(159,220,120,0.5);
 }
  #btnUpdate:hover{
	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
	}
 #btnDelete:hover{
	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #f44336;
	box-shadow: 3px 3px 0 #FF8A00;
	transition: all 0.5s;
	}
 #btnToList:hover{
	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,0.5);
	box-shadow: 3px 3px 0 #9DCB63;
	transition: all 0.5s;
	}
  h2 {
	 margin-top: 200px;
	 margin-left: 200px;
 }
 th,.header {
	background-color: #ffebcd;
 	border: none;
 	font-weight: bold;
 }
 th:nth-of-type(1) {
 	border-radius: 10px 0 0 0;
 }
 th:nth-of-type(4) {
 	border-radius: 0 10px 0 0;
 }
 #btnTd {
 	border: none;
 }
 </style>

	

  
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->





<main id="main">
<h2>노원 롯데 캐슬 - <a href="./board-defectreception">아파트 민원 접수</a></h2>

<aside id="aside">
<!-- 메뉴이름 및 링크는 추후 결정 -->
<ul>

</ul>
</aside>




<section id="mainsection">
	<table id="maintable">
	<tr>
	<th>No.</th>
	<th>작성일</th>
	<th>가구번호</th>
	<th>처리상태</th>
	</tr>
	<c:forEach items="${drbList}" var="vo">
		<tr>
			<td id ="boardNo">${vo.drNo }</td>
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
			<td class="header">제목</td>
			<td colspan="4">${vo.drTitle }</td>
		</tr>
		
	
		<tr>
			
			<td colspan="4"><img src="${vo.drImage }" class="img" onerror="this.src='resources/img/logo.png'" alt='' /> </td>
				
		</tr>
		<tr>
			<td class="textContent" colspan="5">${vo.drContent }</td>
		</tr>
		<tr>
			<td colspan="4" id="btnTd">
				<button type="button" id="btnToList" onclick="btnToList()">목록으로</button>
				<!-- 회원 세션과 houseno id가 같을 경우만 보이도록 적용함 -->
				<c:if test="${vo.houseNo eq  memberId}" >
					<div id="btnBox">
						<button type="button" id="btnUpdate" onclick="btnUpdate()">수정</button>
						<button type="button" id="btnDelete" onclick="btnDelete()">삭제</button>
					</div>
					
				</c:if>
			</td>
		</tr>
	</table>
	
		<script>
			function btnToList(){
				location.href="./board-defectreception";
			}	
			function btnUpdate(){
				location.href="./update-defectreception?no=${vo.drNo}";
			}
			function btnDelete(){
				
				var confirmDelete = confirm("삭제하시겠습니까?");
				if(confirmDelete == true){ <!-- 알림창의 확인 버튼 눌러야지 이동됨 -->
					location.href="./delete-defectreception?no=${vo.drNo}"
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