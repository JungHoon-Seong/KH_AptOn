<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>노원 롯데캐슬 with APTON</title>
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
  
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->
<jsp:include page="header.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->
<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
      <h1>노원 롯데 캐슬 <span>시그니처</span></h1>
      <h2>with 아파트온</h2>
      <a href="boardlistRB123" class="btn-get-started scrollto">우리 아파트 소식 보러가기</a>
    </div>
  </section><!-- End Hero -->

	<form name="form-log" method="post" action="#">
	<h2>로그인</h2>
		<div>
			<input type="text" id="houseNum" placeholder="아이디" name="houseNum">
		</div>
		<div>
			<input type="password" id="pwd" placeholder="비밀번호" name="pwd">
		</div>
		<div>
			<input type="submit" id="log-btn">
		</div>
		
	</form>

</body>
</html>