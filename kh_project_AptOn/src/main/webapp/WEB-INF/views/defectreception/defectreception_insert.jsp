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
  <script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>

 <script>CKEDITOR.replace('c',{filebrowserUploadUrl:'/insert-defectreception/${fileName}'});</script>
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
 }
 .ck-content {
 	height: 375px;
 }  
 .img {
 	width: 240px;
 	height: 200px;
 }
  #btnWrite {
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
 #textTitle {
 border: none;
 width: 1200px;
 }
 #textContent {
 border: none;
 width: 1200px;
 height: 375px;
 }
  h2 {
 margin-top: 200px;
 margin-left: 200px;
 }

header{
font-family: 'Noto Sans KR', sans-serif;
}
footer{
font-family: 'Noto Sans KR', sans-serif;
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
    
    //구글 클라우드를 웹서버로 이용하기 위해 작성됨
    function uploadFile() {
    	  var bucket = document.forms["putFile"]["bucket"].value;
    	  var filename = document.forms["putFile"]["fileName"].value;
    	  if (bucket == null || bucket == "" || filename == null || filename == "") {
    	    alert("Both Bucket and FileName are required");
    	    return false;
    	  } else {
    	    var postData = document.forms["putFile"]["content"].value;
    	    document.getElementById("content").value = null;

    	    var request = new XMLHttpRequest();
    	    request.open("POST", "/gcs/" + bucket + "/" + filename, false);
    	    request.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    	    request.send(postData);
    	  }
    	}
    
    
</script>
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="../header.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->
<aside id="aside">
<!-- 메뉴이름 및 링크는 추후 결정 -->
<ul>

</ul>
</aside>




<main id="main">
<h2>노원 롯데 캐슬 - <a href="./board-defectreception">아파트 민원 접수</a></h2>

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
	<form id="imgur" action="./insert-defectreception"  method="post">
	
		<tr>
			<td><input type="text" name="t" id="textTitle" placeholder="제목을 입력해주세요"/></td>
		</tr>

		<!-- form으로 보낼려면 name이 필요한대 에디터에서 제공해주는 플러그인이 name이 없어서 아래 input file을 사용-->
		<tr>
			<td>
			<!-- <input type="file" name="imgs[]" class="imgur" accept="image/*" data-max-size="5000" > -->
			<input type="file" name="image" id="upload" accept="image/*" data-max-size="5000" value="res.data.link" />
			</td>	
		</tr>
		<tr>
			<td class="textContent" colspan="5">
			<textarea name="c" id="textContent" placeholder="내용을 입력해주세요"></textarea>
			</td>
		</tr>
	
	</table>
		<div>
		</div>
	<!-- SJH TODO 회원 세션일경우만 보이도록 보완필요 -->
		<div id="btnBox">
			<button type="submit" id="btnWrite">작성</button>
			
		</div>
	</form>
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
  <!-- imgurupload Js File -->
  <script src="resources/js/imgur.js"></script>
  <script>
  ClassicEditor
  .create( document.querySelector( '#textContent' ), {
      // 제거 하고싶은 플러그인 (배열)
       removePlugins: [ 'ImageUpload' ]
  } )
  .catch( error => {
      console.error( error );
  } );
  </script>
</body>
</html>