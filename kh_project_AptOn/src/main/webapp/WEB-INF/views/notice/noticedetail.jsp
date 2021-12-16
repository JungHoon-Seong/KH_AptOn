<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>공지사항</title>
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
 #btnWriteBox {
 	float: right;
 }
 #btnwrite {
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
 
 /*상세페이지  */
 .tolist{
    width: 80px;
    height: 40px;
	margin-top:50px;
	font-size:15px;
	border : 1px solid rgba(159,220,120,0.5);
	background-color: rgba(159,220,120,0.5);
	padding-top:4px;
	padding-bottom:4px;
	box-shadow: 3px 3px 0 rgba(159,220,120,1);
	overflow: hidden;
	white-space: nowrap;
	display: block;
	text-overflow: ellipsis;
	}
.tolist:hover{
	font-size:13px;
	border : 1px solid rgb(233, 202, 155);
	border-radius:5px;
	background-color: rgb(233, 202, 155);
	box-shadow: 3px 3px 0 #D04B4D;
	}
    .tolist:active{
	font-size:13px;
	border : 1px solid rgb(233, 202, 155);
	border-radius:5px;
	background-color: rgb(233, 202, 155);
	box-shadow: 1px 1px 0 #D04B4D;
	position: relative;
	top:2px;
	left:2px;
	}

#th1{
	width:600px;
	height:35px;
	text-align:left;
	padding:0 5px 0 5px;
	background-color:rgb(201, 242, 252);
}

td{
		word-break:break-all;
		word-wrap:break-word;
	}
 #td1{
     width:800px;
     text-align:left;
 }   
     th,td{
        
        border-bottom: 1px solid #b4b1b1;
        padding: 10px;
    } 
    #div1{
	width: 1100px;
	margin-left:50px;
	margin-top:50px;
	float:left;
}
#maintable{
    border-top: 1px solid #b4b1b1;
    border-collapse: collapse;
    border-left: 1px solid #b4b1b1;
    border-bottom: 1px solid #b4b1b1;
    border-right: 1px solid #b4b1b1;
}
#tolist2{
    margin-left: 550px;
    margin-top:15px;
     margin-bottom:15px;
}
#tolist1{
    margin-left: 1000px;
}
#contenttd{
width:1050px; 
}
 </style>
   
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
      <h1>노원 롯데 캐슬 <span>시그니처</span></h1>
      <h2>with 아파트온</h2>
    </div>
  </section><!-- End Hero -->




<main id="main">
<h2>노원 롯데 캐슬 - <a href="/apton/noticelist">아파트 공지사항</a></h2>

	<div id="div1">
    <table id="maintable" >
        <c:forEach items="${noticelist}" var="detail">
             <thead>
                <tr>
                    <th id="th1">제목</th>
                    <td colspan="5" id="td1">${detail.notice_title }</td>
                </tr>
                <tr>
                    <th id="th1">글 번호: </th>
                    <td id="td1">${detail.notice_num }</td>
                    <th id="th1">작성자: </th>
                    <td id="td1">${detail.admin_id }</td>
                    <th id="th1">작성일: </th>
                    <td id="td1">${detail.notice_date }</td> 
                </tr>
            </thead>
            <tbody>
                    <tr>
       
                    <td id = "contenttd" colspan="6">${detail.notice_content}</td>
                    </tr>
                </table>
<button class="tolist" id="tolist2" onclick = "location.href = '/apton/noticelist' ">목록</button>
</div>
</c:forEach>	
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