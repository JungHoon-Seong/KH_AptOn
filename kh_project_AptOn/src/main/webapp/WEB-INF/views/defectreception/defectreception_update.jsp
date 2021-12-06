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


  <!-- SJH TODO ck에디터 CDN 향후 변경될 수 있음 -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
  <script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>


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
 	width: 1000px;
 }
 table {
	border: 1px solid black;
	width: 1000px;
	text-align: center;
	background-color: #ffebcd;
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
 #textNo {
 border: none;
 width: 200px;
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
 	border-bottom: 1px solid #008CBA;
 	text-align: center;
 }
  h2 {
 margin-top: 200px;
 margin-left: 200px;
 }
 </style>
 
<script>
    $("document").ready(function () {

        $('input[type=file]').on("change", function () {

            var $files = $(this).get(0).files;

            if ($files.length) {

                // Reject big files
                if ($files[0].size > $(this).data("max-size") * 1024) {
                    console.log("Please select a smaller file");
                    return false;
                }

                // Replace ctrlq with your own API key
                var apiUrl = 'https://api.imgur.com/3/image';
                var apiKey = 'f2cb341d831734c';

                var formData = new FormData();
                formData.append("image", $files[0]);

                var settings = {
                    "async": false,
                    "crossDomain": true,
                    "url": apiUrl,
                    "method": "POST",
                    "datatype": "json",
                    "headers": {
                        'Authorization': "Client-ID " + apiKey
                    },
                    "processData": false,
                    "contentType": false,
                    "data": formData,
                    beforeSend: function (xhr) {
                        console.log("Uploading | 업로드 중");
                    },
                    success: function (res) {
                        console.log(res.data.link);
                        $('input[name=image]').attr('value',res.data.link);
                        $('body').append('<img src="' + res.data.link + '" />'); 
                    },
                    error: function () {
                        alert("Failed | 실패");
                    }
                }
                $.ajax(settings).done(function (response) {
                    console.log("Done | 성공");
                });
            }
        });
    });
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
	<form action="./update-defectreception"  method="post">
		<c:forEach items="${drbList}" var="vo">
		<tr>
			<td><input type="text" class="readonlyHeader" name="no" value="${vo.drNo }" readonly /></td>
			<td>${vo.drDate}</td>
			<td>${vo.houseNo} </td>
			<c:choose>
			<c:when test="${vo.drState == 1}">
				<td class="completestate readonlyHeader" >처리완료</td>
			</c:when>
			<c:when test="${vo.drState == 0}">
				<td class="" >처리중</td>
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
			<td><input type="file" name="image" id="upload" accept="image/*" data-max-size="5000" value="res.data.link" />
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