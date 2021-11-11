<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Lumia Bootstrap Template - Index</title>
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
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Lumia - v4.6.0
  * Template URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- ======= Header ======= -->
	<jsp:include page="header.jsp" flush="true" />
	
	<!-- End Header -->
	<br><br>
	<main id="main">

		<!-- ======= What We Do Section ======= -->
		<section id="what-we-do" class="what-we-do">
			<div class="container">


				<c:forEach var="board" items="${blist }">
					<table>
						<tr>
							<td><c:out value="${board.boardNum }" /></td>
							<td><c:out value="${ board.boardTitle}" /></td>
						</tr>
						<tr>
							<td colspan="2"><c:out value="${board.boardContent}" /></td>
						</tr>
					</table>
				</c:forEach>
				<br>
				<c:if test="${currentPage ==1}">
					<b><a href='?clickedPage=${currentPage }'>${currentPage } </a></b>
					<a href='?clickedPage=${currentPage +1}'>${currentPage +1} </a>
					<a href='?clickedPage=${currentPage +2}'>${currentPage +2} </a>
					<a href='?clickedPage=${currentPage +3}'><font size="3">&#9654;</font></a>
				</c:if>

				<c:if test="${currentPage != startPage and currentPage < maxPage}">
					<a href='?clickedPage=${currentPage -2}'><font size="3">&#9664;</font></a>
					<a href='?clickedPage=${currentPage -1}'>${currentPage -1 } </a>
					<a href='?clickedPage=${currentPage }'><b>${currentPage } </b></a>
					<a href='?clickedPage=${currentPage +1}'>${currentPage +1} </a>
					<a href='?clickedPage=${currentPage +2}'><font size="3">&#9654;</font></a>
				</c:if>

				<c:if test="${currentPage >= maxPage}">
					<a href='?clickedPage=${currentPage -3}'><font size="3">&#9664;</font></a>
					<a href='?clickedPage=${currentPage -2}'>${currentPage -2} </a>
					<a href='?clickedPage=${currentPage -1}'>${currentPage -1} </a>
					<b><a href='?clickedPage=${currentPage }'>${currentPage } </a></b>
				</c:if>


			</div>
			<a href="boardwrite" style="margin-left:500px;font-size:30px;">글쓰기</a>
			
		</section>
		<!-- End What We Do Section -->
			</main>
		
		<!--  footer.jsp를 삽입해주세요! -->
<jsp:include page="footer.jsp" flush="true" />


	
	
  

</body>
</html>