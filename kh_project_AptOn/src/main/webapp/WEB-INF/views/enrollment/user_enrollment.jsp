<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>노원 롯데캐슬 회원가입 with APTON</title>
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
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

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
 #main {
 	
 	margin: auto;
 	margin-top: 140px;
 	width: 1000px;
 }
 #mainsection {
 	
 	text-align: center;
 	width: 1000px;
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
 button{
 	 width: 140px;
	 border-radius: 5px;
	 color: white;
	 padding: 15px 32px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #008CBA;
	 border-color: #008CBA;
 }
 button[type=reset]{
 	 width: 140px;
	 border-radius: 5px;
	 color: white;
	 padding: 15px 32px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	 background-color: #f0ad4e;
	 border-color: #f0ad4e;
 }
 
  h2 {
  	 text-align: center;
	 margin-top: 200px;
	 margin-left: 200px;
 }
span {
	font-size: 12px;
	color: gray;
}
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

.liText {
	margin-right: 140px;
}
#liTextuserPasswordChk {
	margin-right: 100px;
}
#liTextuserName {
	margin-right: 178px;
}
#imgText{
	color: #3498db;
}

#liTextApartName { 
	font-weight: 600;
	}
form {
	text-align: left;
}
li {
	
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


<aside id="aside">
<!-- 메뉴이름 및 링크는 추후 결정 -->
<ul>

</ul>
</aside>


<section id="mainsection">
	<form action="userjoin" method="post">
<fieldset>
<legend></legend>
<ul>
	<li id="imgText"><img src="resources/img/logo.png" alt="회원가입이미지" class="img">  with APTON</li>
	<li id="liTextApartName">노원 롯데 캐슬 회원가입</li>
	<li class="liText"><label for='userHouseNum'>가구번호</label></li>
	<!-- 7자리인 이유는 동수 3자리 호수4자리이므로 -->
	<li>
		<input type="number" name='userHouseNum' maxlength="7" id="userHouseNum" size='7' oninput="maxLengthCheck(this)" required /> 
		<font id = "idChkText" size ="2"></font>	
	</li>
	<span>동호수를 입력해주세요</span>
	<br>
	<br>
	<!-- 일단 기존회원 비밀번호에 조건이 없으므로 정규표현식을 스크립트에 적용하지 않았음-->
	<li class="liText"><label for="userPassword">비밀번호</label></li>
	<li><input type="password" name='userPassword' id="userPassword" minlength="4" maxlength="20" size='20' required autocomplete="off"/></li>
	<span>4글자이상 20자 이하로 작성해주세요</span>
	<br>
	<br>
	<li class="liText" id="liTextuserPasswordChk"><label for="userPasswordChk">비밀번호 확인</label></li>
	<li><input type="password" name='userPasswordChk' id="userPasswordChk" minlength="4" maxlength="20" size='20' required autocomplete="off"/></li>
	<span>비밀번호와 동일하게 작성해주세요</span>
	<br>
	<br>
	<li class="liText" id="liTextuserName"><label for='userName'>이름</label></li>
	<li><input type="text" name='userName' id="userName" maxlength="20" size='20' required /></li>
	<br>
	<br>
	<li class="liText"><label for='phone'>전화번호</label></li>
	<li><input type="text" name='phone' id="phone" maxlength="11" placeholder="0*[*]***[*]****" required></li>
	<br>
	<br>
	<li>

</li>
</ul>
<div id="btnBox">
	<button>회원가입</button>   
	<button type="reset">취소</button>
</div>
</fieldset>
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

<script>
$("form").submit(function(){
    var id = $("#userId").val();
    var name = $("#userName").val();

    if(id == name){
        alert("아이디와 이름의 값은 일치하면 안됩니다.")
        return false;
    }
    
    var id = $("#userPassword").val();
    var name = $("#userPasswordChk").val();

    if(id != name){
        alert("패스워드와 패스워드 확인값이 일치하지 않습니다.")
        return false;
    }


    var reg = /^[0][0-9]{1,2}-[0-9]{3,4}-[0-9]{4}$/;
        var val = $('#phone').val().trim();
        if(!reg.test(val)){
            alert("전화번호 형식을 확인하세요");
            $('#phone').val("");
            return false;
        }
});

function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
  $('#userHouseNum').focusout(function(){
	  
	  var userHousenum = $('#userHouseNum').val(); // 입력한 가구번호
	  
	  $.ajax({
		  url : "idchk",
		  type : "POST",
		  data : {userHousenum : userHousenum},
		  success : function(result){
			  //console.log("결과는?" + result);
			  if(result == 1){
				  $("#idChkText").html('사용할 수 있는 가구번호입니다.');
				  $("#idChkText").attr('color','green');
			  } else{
				  $("#idChkText").html('사용할 수 없는 가구번호입니다.');
				  $("#idChkText").attr('color','red');
			  }
		  },
		  error : function( request, status, error ){
			  console.log("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
			  //alert("서버요청실패");
		  }
	  })
  })
</script>
</body>
</html>