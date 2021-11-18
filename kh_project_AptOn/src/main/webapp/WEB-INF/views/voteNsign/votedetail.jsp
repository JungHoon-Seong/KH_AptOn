<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표 상세</title>
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
  
<style>
#contentsection{
}
#div1{
	width: 600px;
	margin-left:50px;
	margin-top:50px;
	float:left;
}
#div2{
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
transform: translateY(-3px);
color: #f4511e;
background-color: #FFFFFF;
box-shadow: 3px 3px 3px 2px red;
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
</style>
<!-- 구글 파이 차트 api -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
<!-- {"ops":[{"attributes":{"bold":true},"insert":"굵은 글씨"},{"insert":"\n"},{"attributes":{"bold":true},"insert":"리스트1"},{"attributes":{"list":"bullet"},"insert":"\n"},{"attributes":{"bold":true},"insert":"리스트2"},{"attributes":{"list":"bullet"},"insert":"\n"},{"attributes":{"bold":true},"insert":"리스트3"},{"attributes":{"list":"bullet"},"insert":"\n"}]} -->

<main id="adminmain">
<section id="contentsection">
<div id="div1">

<table id="votedetail">
<tr>
	<th id="th1">번호</th>
	<td>${vo.voteNo }</td>
	<th id="th_cate">종류</th>
	<td>${vo.category }</td>
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
	<td colspan="4" id="td_copy">
<div>
<div id="voteresult"><b>투표결과</b><br><c:set var="totalvote" value="0"/><c:set var="voteratio" value="0"/>
투표수 : ${vo.voteRights }명 중 <c:set var="totalvote" value="${vo.voteY + vo.voteN }"/><c:out value="${totalvote }"/>명 투표<br>
투표율 : <c:set var="voteratio" value="${totalvote /  vo.voteRights}"/> <fmt:formatNumber value="${voteratio * 100 }" pattern="0"/>%<br>
찬성 : ${vo.voteY }표, 반대 : ${vo.voteN }표<br>
</div>
<button id = "copyresult" onclick="copyresult();"><span>결과 복사하기</span></button>
</div>
	</td>
</tr>
</table>
<textarea id="textresult" style="width:0; height:0;overflow: hidden;resize:none;border:none;">

</textarea>
</div>

<div id="div2">
<div id="vote_piechart" style="width: 600px; height: 500px;"></div>
</div>
</section>
</main>

<%-- <jsp:include page="../footer.jsp" flush="true" /> --%>



<!-- 결과복사에 넣기
 <details>
  <summary>Epcot Center</summary>
  <p>Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, award-winning fireworks and seasonal special events.</p>
</details> -->
<script>
window.onload = function() {
	$("#votedesc").html("${vo.voteDesc }");
	
	var result = $("#voteresult").text();
	console.log(result);
	$("#textresult").text(result);
	
};
</script>
<script type="text/javascript">
	

google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() { 
	if(${vo.voteY } >0 || ${vo.voteN }> 0){
		console.log("차트 진입")
		var data = google.visualization.arrayToDataTable( 
				[["vote","Rating"],["찬성",${vo.voteY }],["반대",${vo.voteN }]] );
		var options = { title: "투표 현황", 'width':800};
		var chart = new google.visualization.PieChart(document.getElementById("vote_piechart"));
		chart.draw(data, options); 	
	} else {
		$("#vote_piechart").html("<br><br><b>아직 투표가 시작되지 않았거나 투표를 한 사람이 없습니다.</b>");
	}
};	
	
function copyresult() {
		console.log("복사버튼");
		const textArea = document.getElementById("textresult");
		textArea.select();
		document.execCommand('copy');
		alert(textArea.value+"위의 내용이 복사되었습니다.");
		};
</script>
</body>
</html>