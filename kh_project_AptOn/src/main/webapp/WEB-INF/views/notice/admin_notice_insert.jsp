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
 	 font-family: 'Noto Sans KR', sans-serif;
 	width: 1300px;
    display: flex;
    background-color: white;
    padding-bottom: 100px; 
    padding-left: 100px;
    padding-right: 100px; }
   .th1{
	width: 100px;
	height:35px;
	text-align:left;
	padding:0 5px 0 5px;
	background-color:#ffebcd;
    font-size: 20px;
}

td{
    padding: 0px;
    
}

 #title{
     width: 100%;
    height: 50px;
    border: 0;
    font-size: 15px;
    padding-left: 10px;
 }  
   
 /* .enrollbtn{
 	text-align:center;
 	height:30px;
	width:90px;
	font-size:15px;
	border : 1px solid rgba(159,220,120,0.5);
	border-radius:5px;
	background-color: rgba(159,220,120,0.5);
	padding-top:4px;
	padding-bottom:4px;
	box-shadow: 3px 3px 0 rgba(159,220,120,1);
	overflow: hidden;
	white-space: nowrap;
	display: block;
	text-overflow: ellipsis;
	}
.enrollbtn:hover{
	font-size:15px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
.enrollbtn:active{
	font-size:15px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 1px 1px 0 #D04B4D;
	position: relative;
	top:2px;
	left:2px;
	}  */
input:focus, textarea:focus{    
 outline: none; 
 }
#backbtn{
	margin-left:500px;
	
 width: 100px;
 height: 40px;
 border: 1px solid #ffebcd;
  background-color: rgba(0,0,0,0);
  color: black; 
}
#insertbtn{
	margin-left:1000px;
	margin-top:40px;
	 width: 100px;
 	height: 40px;
 	border: 1px solid #ffebcd; 
 	background-color: rgba(0,0,0,0); 
 	color: black; 
}
#backbtn:hover{ 
  color:black; 
  background-color: #ffebcd; 
  }
  
   #insertbtn:hover{ 
  color:black; 
  background-color: #ffebcd; 
  }
  
  #inputdiv{
  float: left;
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
 	<div id="inputdiv">
	   <h2>공지사항 등록</h2>
        <table id="maintable">
            <thead>
                <tr >
                        <th id="titleth" class="th1" >제목</th>
                        <td><input id="title" type="text"  name="noticetitle" placeholder="제목을 입력하세요"></td>
                    
                </tr>
                <tr>
                    <th  class="th1">내용</th>
                    <td>
                        <textarea id="ckeditor" name="noticecontent" placeholder="내용을 입력하세요"></textarea>
                    </td>
                </tr>
            </thead>
            <tbody>
        </table>
        <button type="button" id="insertbtn" name="insertbtn" class="enrollbtn">등록</button>
        <button onclick="location.href = '/apton/adnoticelist' " id="backbtn" class="enrollbtn">목록</button>
        </div>
   
    <script>
    CKEDITOR.replace( 'ckeditor',{
    	uiColor: '#ffebcd',
    	height : '300px',
    	width : '1000px',
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
	// 3. 제목 입력
	if(!$("#title").val()){
		alert("제목을 입력해주세요.");
		$("#title").focus();
		return;
	};
	var blank_pattern = /^\s+|\s+$/g;
	if($("#title").val().replace(blank_pattern)==""){
		alert("제목에 공백만 적을 수는 없습니다.");
		$("#title").focus();
		return;
	}
	var ckdata = CKEDITOR.instances['ckeditor'].getData();
	ckdata.replace(/<(\/div|div)([^>]*)>/gi,"");
	
	// 4. 내용입력
	if(!(CKEDITOR.instances['ckeditor'].getData())){
		alert("내용을 입력해주세요.");
		return;
	};
	var adminid = "${admin.adminId }";
	$.ajax({
		url: "notice_insert",
		type: "POST",
		data: {
			noticetitle : $("#title").val(),
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