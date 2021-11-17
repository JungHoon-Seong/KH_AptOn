<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표/결재 목록 게시판</title>
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
	table {
		border-collapse: collapse;
		width: 800px;
		margin : auto;
		font-size : 15px;
		font-family: 'Noto Sans KR', sans-serif;
	}
        
    th{
    	text-align: center;
    }
	td:not(td:nth-of-type(4)) {
		padding: 8px;
		text-align: center;
		border-bottom: 1px solid #ddd;
		text-overflow:ellipsis; overflow:hidden
	}
	td:nth-of-type(4){
		padding: 8px;
		text-align: left;
		border-bottom: 1px solid #ddd;
		text-overflow:ellipsis; overflow:hidden	
	}
        
	tr:not(#trofth):hover {background-color: rgb(207,252,236);}
	
	#paging{
	margin-left: auto;
	margin-top : 20px;
	margin-right: auto;
	display:table;
	}
	#paging ul{
	margin-left:200px;
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
	.arrowbtn{
	background-color: #DADADA;
	opacity:0.5;
	}
	#votemain{
	padding-top:30px;
	}
	th:nth-of-type(4){
	width:260px;
	}
	td:nth-of-type(4){
	width:260px;
	display: block;
	text-overflow: ellipsis;
	}
	th:nth-of-type(3){
	width:100px;
	}
	td:nth-of-type(3){
	width:100px;
	}
	#clickednum{
	font-weight:900; 
	background-color:#FBFEA4; 
	}
	#clickednum:hover{
	font-weight:900; 
	background-color:black; 
	}
	#enrollbtn{
	margin-left:250px;
	}
	#enrollbtn button{
	font-size:13px;
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
	#enrollbtn button:hover{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
	#enrollbtn button:active{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 1px 1px 0 #D04B4D;
	position: relative;
	top:2px;
	left:2px;
	}
	
	
</style>
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
<main id="adminmain">
<section id="votemain">

 <table>
        <tr id="trofth">
          <th>번호</th>
          <th>종류</th>
          <th>진행여부</th>
          <th>제목</th>
          <th>시작일</th>
          <th>마감일</th>
        </tr>
       <c:forEach var="map" items="${volist}">
		<tr>
		  <td>${map["vote_no"] }</td>
		  <td> <!-- category가 0이면 서명, 1이면 투표  -->
		  <c:choose>
			<c:when test="${map['category'] eq '0'}">서명</c:when>
			<c:when test="${map['category'] eq '1'}">투표</c:when>
		</c:choose>
		 </td>
		  <td> <!-- DEADLINE과 today 비교  -->
		  <c:choose>
			<c:when test="${today <  map['DEADLINE'] }"><span style="color:#EB87CE;">진행중</span></c:when>
			<c:otherwise><span style="color:#EBA487;">종료</span> <b>&check;</b></c:otherwise>
		</c:choose>
		  </td>
		  <td><a href="#"><nobr>${map["vote_title"] }<nobr></a></td>
		  <td>${map["STARTDATE"] }</td>
		  <td>${map["DEADLINE"] }</td>
		</tr>
       </c:forEach>
	<!-- 	mv.addObject("volist",volist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("limit",limit);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage); -->
      </table>
      

			
			
<span id=paging>
      <ul class="pagination">
      <c:if test="${startPage ne '1'}">
       <li><a href="javascript:PageMove(${startPage-1})" class="arrowbtn">&#10094;</a></li>
      </c:if>
       
    <c:forEach var="i" begin="${startPage}" end="${endPage }" step="1">
                  <c:choose>
                      <c:when test="${i eq currentPage && i <= maxPage}">
                <li class="active"><a href="javascript:PageMove(${i})" id="clickednum">${i}</a></li>
                      </c:when>
                      <c:otherwise>
                        <li><a href="javascript:PageMove(${i})">${i}</a></li>
                      </c:otherwise>
                  </c:choose>
              </c:forEach>
              <c:if test="${endPage ne maxPage}">
			<li><a href="javascript:PageMove(${endPage+1})" class="arrowbtn">&#10095;</a></li>
			</c:if>
			<li id="enrollbtn">
			<button>투표/결재 등록</button>
			</li>
      </ul>
</span>

</section>
</main>
<script>
function PageMove(page){
    location.href = "votelist?clickedPage="+page;
  }

</script>
</body>
</html>