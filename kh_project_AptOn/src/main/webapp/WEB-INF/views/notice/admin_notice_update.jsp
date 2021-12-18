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

 #mainsection {
 	 font-family: 'Noto Sans KR', sans-serif;
 	width: 1200px;
    display: flex;
    background-color: white;
    padding-bottom: 100px; 
    padding-left: 100px;
    padding-right: 100px; }
    
         .ck.ck-editor {
            max-width: 1500px;
        }

        .ck-editor__editable {
            min-height: 400px;
        }
 .tolist{
    width: 60px;
    height: 30px;
	margin-top:15px;
	font-size:13px;
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
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
    .tolist:active{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
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
	background-color:#ffebcd;
	border-bottom: 1px solid #b4b1b1;
}

td{
		word-break:break-all;
		word-wrap:break-word;
	}
 #td1{
     width:800px;
     border-bottom: 1px solid #b4b1b1;
 }   
     th,td{
        
        
        padding: 10px;
    } 
    #div1{
	width: 1100px;
	margin-left:50px;
	margin-top:100px;
	float:left;
}
#maintable{
    border-top: 1px solid #b4b1b1;
    border-collapse: collapse;


}
#tolist2{
    margin-left: 525px;
    margin-top:-28px;
}
#tolist1{
    margin-left: 1000px;
}
#contenttd{
width:1050px; 
} 

 #noticetitle{
     width: 100%;
    border: 0;
    font-size: 15px;
    padding-left: 10px;
 }  
 
 
 #backbtn{
position: absolute;
	margin-top:22px;
	margin-left:500px;
 width: 100px;
 height: 40px;
 border: 1px solid #FF8200;
  background-color: rgba(0,0,0,0);
  color: black; 
 
  
}
#updatebtn{
position: absolute;
	display:inline;
	margin-left:900px;
	margin-top:20px;
	 width: 100px;
 	height: 40px;
 	border: 1px solid #FF8200; 
 	background-color: rgba(0,0,0,0); 
 	color: #FF8200; 
}
#backbtn:hover{ 
  color:white; 
  background-color: #FF8200; 
  }
  
   #updatebtn:hover{ 
  color:white; 
  background-color: #FF8200; 
  }


 input:focus, textarea:focus{    
 outline: none; 
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
	    <div id="div1">
	    <h3>공지사항 수정</h3>
<table id="maintable">
	<c:forEach items="${noticelist}" var="detail">
		 <thead>
            <tr>
                <th id="th1">제목</th>
                <td colspan="5" id="td1">
                 <input type="text" id="noticetitle" name="noticetitle" placeholder="제목" value= "${detail.notice_title }">
            	</td>
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
   
                <td colspan="6">
                <textarea id="ckeditor" name="noticecontent" placeholder="내용을 입력하세요" >${detail.notice_content}</textarea>
                </td>
                 
                </tr>
	
	</table>

        <button type="button" id="updatebtn" name="updatebtn" >수정하기</button>
        <button onclick="location.href = '/apton/adnoticelist' " id="backbtn" >목록</button>
     
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
$('#updatebtn').on("click",function() {
	var ckdata = CKEDITOR.instances['ckeditor'].getData();
	var adminid = "${admin.adminId }";
	$.ajax({
		url: "noticeupdate1",
		type: "POST",
		data: {
			notice_num : ${detail.notice_num },
			noticetitle : $("#noticetitle").val(),
			adminId : adminid,
			content : ckdata
	},
	success :function(msg){
		alert("수정되었습니다.");
		location.href="/apton/adnotice-detail?no=${detail.notice_num}";
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
</div>
	</c:forEach>	
	</form>
	
</section>
</main>
<jsp:include page="../footer.jsp" flush="true" />

    
</body>
</html>