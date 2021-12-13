<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
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
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

 <style>
 ul {
 list-style-type: none;
 }
 
 #aside {
 	float: left;
 	width: 0px;
 }
 #mainsection {
 	margin: auto;
 	width: 1000px;
 }
 table {
	border: 1px solid black;
	width: 1000px;
	margin: auto;
	text-align: center;
	background-color:  #ffebcd;
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
 }
 .ck-content {
 	height: 375px;
 }  
 .img {
 	width: 500px;
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
 #textNo {
 border: none;
 width: 0px;
 }
 
 #textTitle {
 border: none;
 width: 1000px;
 height: 2em;
 }
 #textContent {
 border: none;
 width: 1000px;
 height: 375px;
 }
 .readonlyHeader {
 	border: none;
 	width: 300px;
 	background-color: #ffebcd;
 	border-bottom: 1px solid #ccc;
 	text-align: center;
 }
  h2 {
 margin-top: 200px;
 margin-left: 200px;
 }
 
 .btnState{
	border-radius: 5px;
	color: white;
 	background-color:  #008CBA;
 	border: none;
 } 
 .cke_button.cke_button__image.cke_button_off{
	display: none;
	disabled;
}
 </style>
 

  
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header4admin.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->





<main id="adminmain">
<h2>노원 롯데 캐슬 - <a href="./manage-dr">아파트 민원 접수</a></h2>




<section id="mainsection">
	<table id="maintable">
	<form action="./manage-drupdate"  method="post" enctype="multipart/form-data">
		<c:forEach items="${drbList}" var="vo">
		<tr>
			<td><input type="text" class="readonlyHeader" name="no" value="${vo.drNo }" readonly /></td>
			<td>${vo.drDate}</td>
			<td>${vo.houseNo} </td>
			<c:choose>
			<c:when test="${vo.drState == 1}">
				<td class="completestate" > <button type="button" class="btnState" onclick="">처리완료</button>
				<input type="text" name="state" id="state" value ="${vo.drState}" hidden></td>
			</c:when>
			<c:when test="${vo.drState == 0}">
				<td class="completestate" > <button type="button" class="btnState" onclick="">처리중</button>
				<input type="number" name="state" id="state" value ="${vo.drState}" hidden></td>
			</c:when>
			</c:choose>
		</tr>
		<tr>
			<td class="textContent" colspan="5">
				<input type="text" name="t" id="textTitle" value="${vo.drTitle}" />
			<!-- <textarea name="t" id="textTitle" >${vo.drTitle }</textarea> -->
			</td>
			
		</tr>
		<!-- form으로 보낼려면 name이 필요한대 에디터에서 제공해주는 플러그인이 name이 없어서 아래 input file을 사용-->
		<tr>
			<td colspan="4">
				<img src="${vo.drImage }" class="img" onerror="this.src='resources/img/logo.png'" alt='' />
				<!--  <input type="file" name="image" id="upload" accept="image/*" data-max-size="5000" value="res.data.link" />-->
			</td>
		</tr>
		 
		<tr>
			<td class="textContent" colspan="5">
			<textarea name="c" id="textContent" >${vo.drContent }</textarea>
			</td>
		</tr>
		</c:forEach>
	</table>
		<div>
		</div>
	<!-- SJH TODO 회원 세션일경우만 보이도록 보완필요 -->
		<div id="btnBox">
			<button type="submit" id="btnUpdate">수정하기</button>
			
		</div>
	</form>
</section>
</main>
 <script>
 CKEDITOR.replace( 'textContent',{
		uiColor: '#ffebcd',
		height : '300px',
		on: {
			//글자수제한 기능
	        change: function() {
	        	var txt = CKEDITOR.instances['textContent'].getData();
	        	var len = CKEDITOR.instances['textContent'].getData().length;
	        	
	        	var stringByteLength = 0;
	        	//console.log(len);
	        	for(var i=0; i<len; i++) {
	        	    if(escape(txt.charAt(i)).length >= 4)
	        	        stringByteLength += 3;
	        	    else if(escape(txt.charAt(i)) == "%A7")
	        	        stringByteLength += 3;
	        	    else
	        	        if(escape(txt.charAt(i)) != "%0D")
	        	            stringByteLength++;
	        	}
	        	//console.log(txt);
	        	//console.log(stringByteLength + " Bytes")
	        	 document.getElementById('txtlim').value = 1507 - stringByteLength;
	        	
	        	if(stringByteLength >= 1507){
	        		alert("더 이상 입력할 수 없습니다.");
	        		document.getElementById('txtlim').value = 1507 - stringByteLength;
	        		document.getElementById('txtlim').style.color='red';
	        	} else if(document.getElementById('txtlim').value==1507){
	        		document.getElementById('txtlim').value =1500;
	        	} else {
	        		document.getElementById('txtlim').value = 1507 - stringByteLength;
	        		document.getElementById('txtlim').style.color='black';
	        	}
	        	
	        }
	  }

	});
 
 
 $('.btnState').click(function(){
	 if($('#state').val() == 0){
		 $('.btnState').text('처리완료');
	 	$('#state').val('1');
	 	$('#state').change();
	 }else{
		 $('.btnState').text('처리중');
		 $('#state').val('0');
	 }
 })
 
   $(document).ready(function () {
      CKEDITOR.config.removeButtons = 'Image'; 
  });
  </script>
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