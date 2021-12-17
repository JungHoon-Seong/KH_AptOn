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
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<style>
header{
font-family: 'Noto Sans KR', sans-serif;
}
footer{
font-family: 'Noto Sans KR', sans-serif;
}
</style>

<!-- 공통 css 및 글꼴 입력 부분 끝  -->


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
 	width: 1000px;
 	font-size : 15px;
	border-collapse: collapse;
 	border-radius: 10px 10px 0 0;
	box-shadow: 0 0 0 0.5px rgb(233 202 155);
	text-align: center;
 }
 #rowheader {
	 font-weight: bold;
	 text-align: center;
	 background-color: #ffebcd;
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
 #btnWriteBox {
 	float: right;
 }
 #btnwrite {
	 border: none;
	 border-radius: 5px;
	 color: white;
	 padding: 10px 20px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #008CBA;
 }
   #btnwrite:hover{
	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
 }
  h2 {
	 margin-top: 200px;
	 margin-left: 200px;
 }
 #paging{
	margin-left: auto;
	margin-top : 20px;
	margin-right: auto;
	display:table;
	}
 #paging ul{
	margin: auto;
	}
 #paging a{
	margin-left:10px;
	color: black;
	display:block;
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.5;
	}
 #paging a:hover{
	background-color:black;
	color: white;
	display:block;	
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.8;
	}
  tr:not(#rowheader):hover {
  	background-color: rgb(207,252,236);
  }
 </style>
  
  <script>
  function writescript(){
	  location.href = "./insert-defectreception";
  }
  </script>
  
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
	<tr id="rowheader">
		<td>No.</td>
		<td>이미지</td>
		<td>제목</td>
		<td>작성일자</td>
		<td>가구번호</td>
		<td>처리상태</td>
	</tr>
	
	<!-- Todo drImage는 다른 테이블에 있다 해결이 필요함 -->
	<c:if test="${drbList != null }">
	<c:forEach items="${drbList}" var="vo">
		<tr>
			<td>${vo.drNo }</td>
			<td ><img src="${vo.drImage }" class="img" onerror="this.src='resources/img/logo.png'" alt='' /> </td>
			<td>
			<a href="view-defectreception?no=${vo.drNo }">${vo.drTitle }</a>
			</td>
			<td>${vo.drDate }</td>
			<td>${vo.houseNo }</td>
			
			<c:choose>
			<c:when test="${vo.drState == 1}">
				<td class="completestate">처리완료</td>
			</c:when>
			<c:when test="${vo.drState == 0}">
				<td class="">처리중</td>
			</c:when>
			</c:choose>
			
		</tr>
	</c:forEach>
</c:if>
	</table>
	<div id="paging">
		<ul class="pagination">
			<c:if test="${startPage > 1 }" >
				<li><a href="board-defectreception?p=${startPage-1}">이전</a></li> </c:if>
			<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
				<li><a href="board-defectreception?p=${i}">${i}</a></li>
			</c:forEach>
			<c:if test="${endPage < pageCount }">
				<li><a href="board-defectreception?p=${endPage+1}">다음</a></li> </c:if>
		</ul>
	</div>
	<c:if test="${not empty  memberId}" >
	<div id="btnWriteBox">
		<button type='button' id='btnwrite' onclick='writescript()'>민원 작성</button>
	</div>
	</c:if>
	
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