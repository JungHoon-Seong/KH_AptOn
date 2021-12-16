<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>노원 롯데캐슬 관리자</title>
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
  #adminmain{
	margin-top:100px;
}
 #mainsection {
 	float: left;
 	width: 1200px;
 }
         .ck.ck-editor {
            max-width: 1500px;
        }

        .ck-editor__editable {
            min-height: 400px;
        }
  
  </style>
  
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <!-- <script src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script> -->
  <script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />

<main id="adminmain">
<section id="mainsection">
	    <h3>공지사항 등록</h3>

        <table id="maintable">
            <thead>
                <tr>
                    <td>
                        <input type="text" id="noticetitle" name="noticetitle" placeholder="제목">
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea id="ckeditor" name="noticecontent" placeholder="내용을 입력하세요"></textarea>

                    </td>
                </tr>
            </thead>
            <tbody>

        </table>
        <button type="button" id="insertbtn" name="insertbtn" >등록</button>
        <button onclick="location.href = '/apton/adnoticelist' ">목록</button>
   
    <script>
    CKEDITOR.replace( 'ckeditor',{
    	uiColor: '#ffebcd',
    	height : '300px',
    	on: {
    		//글자수제한 기능
            change: function() {
            	var txt = CKEDITOR.instances['ckeditor'].getData();
            	var len = CKEDITOR.instances['ckeditor'].getData().length;
            	
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
    
$('#insertbtn').on("click",function() {
	var ckdata = CKEDITOR.instances['ckeditor'].getData();
	ckdata.replace(/<(\/div|div)([^>]*)>/gi,"");
	var adminid = "${admin.adminId }";
	$.ajax({
		url: "notice_insert",
		type: "POST",
		data: {
			noticetitle : $("#noticetitle").val(),
			adminId : adminid,
			content : ckdata
	},
	success :function(msg){
		alert("등록되었습니다.");
		location.href="adnoticelist";
	},
	error : function(request, status, errorData){
		alert("error code : " + request.status + "\n"
			+ "message : " + request.responseText + "\n"
			+ "error : " + errorData
		)
		location.href="error";
		}
	})
})

</script>	
	
	
</section>
</main>
<jsp:include page="../footer.jsp" flush="true" />


    
</body>
</html>