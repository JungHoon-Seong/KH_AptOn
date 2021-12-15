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
                <th>  </th>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
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
		<c:if test="${startPage > 1 }" >이전</c:if>
		<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
			<a href="adnoticelist?p=${i}">${i}</a>
		</c:forEach>
		<c:if test="${endPage < pageCount }"> 다음 </c:if>
	</div>
	<button type="button" id="deletebtn" onclick="deleteMsg()">삭제</button>
	
	</form>
	<button onclick = "location.href = '/apton/noticeinsert' ">공지사항 등록</button>
		  <input type="text" name="keyword" id="keywordInput" />
    <button id="searchBtn" type="button">검색</button>
<script type="text/javascript">

var d = document.noticeinfo;      	
function deleteMsg() {
	
    if (!confirm("정말 삭제하시겠습니까?")) {
        alert("취소 되었습니다.");
        	return;
    } else {    	
    	d.submit(); 

    }
}     

</script>	
	
	
</section>
</main>



    
</body>
</html>