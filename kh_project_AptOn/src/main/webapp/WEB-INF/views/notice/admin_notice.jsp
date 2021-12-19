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
 	width: 1100px;
 	margin-left: 30px;
 	padding: 20px;
 }
 
 table {
	 width: 1100px;
	 text-align: center;
	  border-collapse: collapse;
 }
 
  td{
    border-bottom: solid 1px #ddd;
}
   #th1{
  background-color: #B9E2FA;
     border-bottom: solid 1px;
     padding: 10px;
     color: white;
     border-top-left-radius: 5px;
     border-bottom-left-radius: 5px;
     font-size: 20px;
 }
  
  #th2{
  background-color: #B9E2FA;
     border-bottom: solid 1px;
     padding: 10px;
     color: white;
     font-size: 20px;
 }
  
  #th3{
  background-color: #B9E2FA;
     border-bottom: solid 1px;
     padding: 10px;
     color: white;
          border-top-right-radius: 5px;
     border-bottom-right-radius: 5px;
     font-size: 20px;
 }
 
 .line{
 padding: 20px;
 font-size: 15px;
 }
 
 #div1{
 padding: 20px;
 }
 
 #paging{
	margin-left: auto;
	margin-top : 20px;
	margin-right: auto;
	display:table;
	}
 #paging ul{
	margin: auto;
	}
 #paging a{
	margin-left:10px;
	color: black;
	display:block;
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.5;
	}
 #paging a:hover{
	background-color:black;
	color: white;
	display:block;	
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.8;
	}
  	.line a:hover {
  text-decoration: underline;
}

#deletebtn{
 width: 100px;
 height: 40px;
 margin-top:-30px;
 border: 1px solid skyblue; 
 background-color: rgba(0,0,0,0); 
 color: skyblue;
 position: absolute;

}
#insertbtn{
margin-left:950px;
margin-top:-30px;
 width: 100px;
 height: 40px;
 border: 1px solid skyblue;
  background-color: rgba(0,0,0,0);
  color: skyblue;
  position: absolute;
  }
  
 #deletebtn:hover{ 
  color:white; 
  background-color: skyblue; 
  }
  
   #insertbtn:hover{ 
  color:white; 
  background-color: skyblue; 
  }
  #btndiv{
  float: left;
  display: inline-block;
  }


  </style>
  
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />

<main id="adminmain">
<section id="mainsection">
<form action="noticedelete" method="post" name="noticeinfo">
<table id = "list">
        <thead>
            <tr id = "toplist">
                <th id="th1">  </th>
                <th id="th2">번호</th>
                <th id="th2">제목</th>
                <th id="th2">작성자</th>
                <th id="th3">작성일</th>
            </tr>
        </thead>
        <tbody>

            <c:forEach var="notice" items="${noticelist}">
                <tr id = "Value">
                    <td><input type="checkbox" id="delete" name="deletecheck" value="${notice.notice_num}"></td>
                    <td class = "line">${notice.notice_num}</td>
                    <td class = "line"><a href = "adnotice-detail?no=${notice.notice_num } ">${notice.notice_title}</a></td>
                    <td class = "line">${notice.admin_id}</td>
                    <td class = "line">${notice.notice_date}</td>
                </tr>
            </c:forEach>


            
        </tbody>
    </table>
   <div id="paging">
		<ul class="pagination">
<%-- 		<c:if test="${startPage > 1 }" >이전</c:if>
		<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
			<a href="noticelist?p=${i}">${i}</a>
		</c:forEach>
		<c:if test="${endPage < pageCount }"> 다음 </c:if> --%>
			<c:if test="${startPage > 1 }" >
				<li><a href="adnoticelist?p=${startPage-1}">이전</a></li> </c:if>
			<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
				<li><a href="adnoticelist?p=${i}">${i}</a></li>
			</c:forEach>
			<c:if test="${endPage < pageCount }">
				<li><a href="adnoticelist?p=${endPage+1}">다음</a></li> </c:if>
		</ul>
		
	
	
	</div>
	<div id="btndiv">
	<button type="button" id="deletebtn" onclick="deleteMsg()">삭제</button>
	<button type="button" id="insertbtn" onclick = "location.href = '/apton/noticeinsert' ">공지 등록</button>
	</div>
	</form>
	

<script type="text/javascript">

var d = document.noticeinfo;      	
function deleteMsg() {
var chkList = $("input:checkbox[name='deletecheck']:checked").length;
	
	if(chkList == 0){
		alert("삭제할 게시물을 선택하세요.");
    	return;
	} 
    if (!confirm("정말 삭제하시겠습니까?")) {
        alert("취소 되었습니다.");
        	return;
    }
	 else {
    	d.submit(); 

    }
}     

</script>	
	
	
</section>
</main>
	<div id="columnchart_material" style="width: 800px; height: 650px;"></div>
<jsp:include page="../footer.jsp" flush="true" />


    
</body>
</html>