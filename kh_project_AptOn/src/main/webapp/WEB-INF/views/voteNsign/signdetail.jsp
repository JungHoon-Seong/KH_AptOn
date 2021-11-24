<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서명 상세</title>
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


<style>
#contentsection{
	font-family: 'Noto Sans KR', sans-serif;
	width : 1300px;
}
#div1{
	width: 600px;
	margin-left:50px;
	margin-top:50px;
	float:left;
}
#div2{
	margin-top:200px;
	width: 600px;
	margin-left:50px;
	float:left;
	
}
#votedetail{
	width:600px;
	border-collapse: collapse;
	border-radius: 10px;
	border-style: hidden;
	box-shadow: 0 0 0 0.5px rgb(233, 202, 155);

}
#votedetail #th1{
	border-top-left-radius: 10px;
}
#votedetail th{
	width:100px;
	height:35px;
	text-align:right;
	padding:0 5px 0 5px;
	border:none;
	background-color:rgb(233, 202, 155);
}
#votedetail td{
	height:35px;
	width : 200px;
	padding:0 0 0 5px;
	border:none;
}
#votedetail #desc{
	width : 600px;
	height : 250px;
	padding:0 0 0 5px;
	border:none;
	border-bottom:0.5px solid rgb(233, 202, 155);
	
}
#th_end{
	border-bottom-left-radius:10px;
	border-bottom-right-radius:10px;
}


#copyresult {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 12px;
  padding: 5px;
  width: 120px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  box-shadow: 3px 3px 3px red;
  margin-bottom:10px;
}
#copyresult:hover {
border: 1px solid rgba(255, 0, 0, 0.25);
transform: translateY(-3px);
color: #f4511e;
background-color: #FFFFFF;
box-shadow: 3px 3px 3px 1px red;
}

#copyresult span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

#copyresult span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

#copyresult:hover span {
  padding-right: 25px;
}

#copyresult:hover span:after {
  opacity: 1;
  right: 0;
}
#copylink {
  display: inline-block;
  border-radius: 4px;
  background-color: #ff7b00;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 12px;
  padding: 5px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  box-shadow: 3px 3px 3px #ff7b00;
  margin-bottom:10px;
  margin-left:50px;
}
#copylink:hover {
border: 1px solid rgba(255, 0, 0, 0.25);
transform: translateY(-3px);
color: #ff7b00;
background-color: #FFFFFF;
box-shadow: 3px 3px 3px 1px #ff7b00;
}

#copylink span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

#copylink span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
  
}

#copylink:hover span {
  padding-right: 25px;
}

#copylink:hover span:after {
  opacity: 1;
  right: 0;
}

	#tolist{
	margin-top:15px;
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
	#tolist:hover{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
	#tolist:active{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 1px 1px 0 #D04B4D;
	position: relative;
	top:2px;
	left:2px;
	}
	#textresult:focus{
	outline:none;
	}

</style>
<!-- 구글 파이 차트 api -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />

<main id="adminmain">
<section id="contentsection">
<div id="div1">

<table id="votedetail">
<tr>
	<th id="th1">번호</th>
	<td>${vo.voteNo }</td>
	<th id="th_cate">종류</th>
	<td>
		<c:choose>
			<c:when test="${vo.category eq '0'}">서명</c:when>
			<c:when test="${vo.category eq '1'}">투표</c:when>
		</c:choose>
	</td>
</tr>
<tr>
	<th>시작일</th>
	<td>${vo.voteStartDate }</td>
	<th id="th_end">마감일</th>
	<td>${vo.voteDeadLine }</td>
</tr>
<tr>
	<th>제목</th>
	<td colspan="3">${vo.voteTitle }</td>
</tr>
<tr>
	<th id="content1">내용</th>
	<th ></th>
	<th ></th>
	<th id="content2"></th>
</tr>
<tr>
	<td colspan="4" id="desc">
<div id="votedesc">
</div>
	</td>
</tr>
<tr>
	<td colspan="4" id="td_copy" style="height:150px;">
<div>
<div id="voteresult"><b>서명결과</b><br><c:set var="totalvote" value="0"/><c:set var="voteratio" value="0"/>
서명 대상자 ${vo.voteRights }명 중 ${vo.voteY }명 서명<br>
서명 참여율 : <c:set var="voteratio" value="${vo.voteY /  vo.voteRights}"/> <fmt:formatNumber value="${voteratio * 100 }" pattern="0"/>%<br>
</div>
<button id = "copyresult" onclick="copyresult();"><span><b>결과 복사하기</b></span></button>
<button id = "copylink" onclick="copylink();"><span><b>투표 링크 복사하기</b></span></button>
</div>
	</td>
</tr>
</table>
<button id="tolist" onclick="location.href='votelist' ">목록으로</button>
<textarea id="textresult" style="width:0; height:0;overflow: hidden;resize:none;border:none;outline:none;">
</textarea>
</div>

<div id="div2">
<div id="chart_div" style="width: 600px; height: 500px;"></div>
</div>
<div style="clear:both;"></div>
</section>

</main>


<jsp:include page="../footer.jsp" flush="true" />



<script>
window.onload = function() {
	$("#votedesc").html(${vo.voteDesc });
	
/* 	var result = $("#voteresult").text();
	console.log(result);
	$("#textresult").text(result); */
	
};
</script>
<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {
	
      var data = google.visualization.arrayToDataTable([
        ['', '참여자'],
        ['', ${vo.voteY}]
        ]);

      var options = {
        title: '서명 참여 현황',
        chartArea: {width: '65%'},
        height: 200,
        hAxis: {
          title: '참여율 : <fmt:formatNumber value="${voteratio * 100 }" pattern="0"/>%',
          minValue: 0,
          maxValue: ${vo.voteRights},
          viewWindow: {
              min: 0,
              max: ${vo.voteRights}
          }
        },
        colors: ['#FA9223']
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
	
function copyresult() {
		console.log("복사버튼");
		var result = $("#voteresult").text();
		console.log(result);
		$("#textresult").text(result);
		const textArea = document.getElementById("textresult");
		textArea.select();
		document.execCommand('copy');
		alert(textArea.value+"위의 내용이 복사되었습니다.");
		$(':focus').blur();  // textarea 포커스된거 없애기
		};
function copylink(){
		console.log("링크복사버튼");
		window.screen.width;
		window.screen.height;
		var popupWidth = 640;
		var popupHeight = 400;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY= (window.screen.height / 2) - (popupHeight / 2);
		var myWindow = window.open("dosign?voteNo=${vo.voteNo}", "window ", 'height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	};		

</script>
</body>
</html>