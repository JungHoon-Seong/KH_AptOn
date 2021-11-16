<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표/결재 목록 게시판</title>
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
	table {
		border-collapse: collapse;
		width: 800px;
		margin : auto;
		font-size : 17px;
	}
        
	td {
		padding: 8px;
		text-align: left;
		border-bottom: 1px solid #ddd;
	}
        
	tr:not(#trofth):hover {background-color: rgb(207,252,236);}
	
	#paging{
	margin: auto;
	margin-top : 10px;
	display:table;
	}
</style>
  
  
  
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
<section id=main>
${startPage } <br>
${endPage } <br>
${maxPage }
 <table>
        <tr id="trofth">
          <th>번호</th>
          <th>종류</th>
          <th>진행여부</th>
          <th>제목</th>
          <th>시작일</th>
          <th>마감일</th>
        </tr>
        <tr>
          <td>${volist[0]["vote_no"] }</td>
          <td>${volist[0]["category"] }= 서명 </td>
          <td>진행중</td>
          <td><a href="#">${volist[0]["vote_title"] }</a></td>
          <td>${volist[0]["STARTDATE"] }</td>
          <td>${volist[0]["DEADLINE"] }</td>
        </tr>
        <tr>
          <td>Lois</td>
          <td>Griffin</td>
          <td>$150</td>
          <td>Lois</td>
          <td>Griffin</td>
          <td>$150</td>
        </tr>
        <tr>
          <td>Joe</td>
          <td>Swanson</td>
          <td>$300</td>
          <td>Joe</td>
          <td>Swanson</td>
          <td>$300</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
        <tr>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
          <td>Cleveland</td>
          <td>Brown</td>
          <td>$250</td>
        </tr>
      </table>
      <span id="paging">페이지 이동 1, 2 ,3</span>

</section>

</body>
</html>