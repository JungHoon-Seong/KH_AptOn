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
	background-color:rgb(201, 242, 252);
}

td{
		word-break:break-all;
		word-wrap:break-word;
	}
 #td1{
     width:800px;
 }   
     th,td{
        
        border-bottom: 1px solid #b4b1b1;
        padding: 10px;
    } 
    #div1{
	width: 1100px;
	margin-left:50px;
	margin-top:200px;
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
    margin-left: 525px;
    margin-top:-28px;
}
#tolist1{
    margin-left: 1000px;
}
#contenttd{
width:1050px; 
}
</style>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
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
                <button id="tolist1" class="tolist" onclick = "location.href = '/apton/noticeupdate?no=${detail.notice_num}'">수정</button>
                <button id="tolist2" class="tolist" onclick = "location.href = '/apton/adnoticelist' ">목록</button>
            </div>

        </c:forEach>	
        </form>
	
<script>


</script>	
	
	
</section>
</main>
<jsp:include page="../footer.jsp" flush="true" />


    
</body>
</html>