<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>투표/결재 등록</title>
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
  
  <style>
fieldset{
  border:none;
  margin :0 0 10px 0; 
  padding: 0;
}
fieldset div{
  border: 1px solid blanchedalmond;
  height: 40px;

}
fieldset li{
    display: block;
    float: left;
    width: 100px;
    height: 100%;
  }
fieldset li strong{
  display: block;
  padding-top: 8px;
  padding-left:5px;
}
.datetitle{
  background-color: blanchedalmond;
  width: 45px;
}
fieldset ul{
    clear: both;
    display: inline;
    list-style: none;
}
fieldset ul li{
    display: block;
    float: left;
    height: 100%;
    line-height: 24px;
    font-size: 13px;
    color: #666;
    font-weight: bold;
    margin-left: 0px;
}
li img{
  padding-top: 8px;
  padding-left: 10px;
}
li img:hover{
  cursor : pointer;
}
#title{
  display: block;
  height: 37px;
  width: 100%;
  border:none;
}
#editor{
  display: block;
  height: 200px;
}
#headdiv li:nth-of-type(1){
  background-color: blanchedalmond;
  width: 90px;
  text-align: center;
}
#headdiv li:nth-of-type(2){
  height:30px;
  margin: 5px 0 5px 20px;
  width: 50px;
  padding-top:2px;
}
#headdiv li:nth-of-type(3){
  height:30px;
  margin: 5px 0 5px 45px;
  width: 50px;
  padding-top:2px;

}
.selectcategory{
  background-color:rgb(33, 39, 63);
  border-radius:10px;
  color:white;
}
#headdiv li:nth-of-type(n+2):nth-of-type(-n+3):hover{
	cursor: pointer;
}
#headdiv li:nth-of-type(n+2):nth-of-type(-n+3):visited{
	background-color:black;
}
#editor{
  display: block;
}
.ql-editor ql-blank::after{
  content: '';
}
.ql-editor::before {
  content: '';
}
#writesection{
margin:auto;
margin-top:200px;
width:600px;
}
#dateul input{
	border:none;
	outline:none;
	padding:8px;
	font-size:15px;
	height:35px
}
#dateul li:nth-of-type(3){
	width:210px;
}

#enrollbtn{
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
	margin-left:500px;
	margin-top:20px;
	}
#enrollbtn:hover{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
#enrollbtn:active{
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

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <!-- 제이쿼리 날짜 선택 api 등록 -->
  <script> 
  $( function() {
	  $(".datepicker").datepicker({ 
		  changeMonth: true, 
		  changeYear: true, 
		  minDate: '-50y', 
		  nextText: '다음 달', 
		  prevText: '이전 달', 
		  yearRange: 'c-50:c+20', 
		  showButtonPanel: true, 
		  currentText: '오늘 날짜', 
		  closeText: '닫기', 
		  dateFormat: "yy/mm/dd", 
		  showAnim: "slide", 
		  showMonthAfterYear: true, 
		  dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
	 	 }); 
	  });

  </script>
<!-- 데이터 보내기 -->
<script type="text/javascript">
function goenroll(){
	console.log(quill.getContents());
	console.log(JSON.stringify(quill.root.innerHTML));
	var adminid = "${admin.adminId }";
/* 	private String voteTitle;
	private String voteDesc;
	private int voteRights; //투표 및 서명 대상자 수
	private int voteY; 
	private int voteN;
	private String voteStartDate;
	private String voteDeadLine;  */
	$.ajax({
		url : "enrollvote.do",
		data : { 
			category : $("#choosecat").val(),
			adminId : adminid,
			voteTitle : $("#title").val(),
			voteDesc : JSON.stringify(quill.root.innerHTML), //html타입을 string으로
			voteStartDate : $("#startdate").val(),
			voteDeadLine : $("#enddate").val()
		},
		type : "post",
		success : function(msg){
			alert("등록되었습니다.");
			location.href="votelist";
		},
		error : function(request, status, errorData){
			alert("error code : " + request.status + "\n"
				+ "message : " + request.responseText + "\n"
				+ "error : " + errorData
			);
			location.href="error";
		}
	}); //ajax
}; //function

</script>
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
<main id="adminmain">
<section id="writesection">
<fieldset>
<legend>투표/결재 등록하기</legend>
  <div id="headdiv">
    <ul id="category">
      <li>
        <strong>종류</strong><input id="choosecat" type="text" value="category" style="display:none";>
      </li>
      <li class="" onclick="setCatClass(event);" id="li_vote">투표</li>
      <li class="" onclick="setCatClass(event);" id="li_sign">서명</li>
      <li>${admin.adminId }</li>
    </ul>
  </div>

  <div>
    <ul id="dateul">
      <li class="datetitle"><strong>시작일</strong> </li>
      <li class="datetitle">
      <img src="resources/img/calendaricon.png" width="30px" class="cld" onclick="focusto(event);" id="sttcld">
      </li>
      <li><input type="text" class="datepicker" id="startdate" autocomplete="off">
      <li class="datetitle"><strong>마감일</strong></li>
      <li class="datetitle">
      <img src="resources/img/calendaricon.png" width="30px" class="cld" onclick="focusto(event);" id="endcld">
      </li>
      <li><input type="text" class="datepicker" id="enddate" autocomplete="off"></li>
    </ul>
  </div>
  <div id="divinput">
    <input type="text" placeholder="제목을 입력해주세요" id="title">
  </div>
</fieldset>
<!-- Create the editor container -->
<div id="editor">
  <p><br></p>
</div>
<button onclick="goenroll();" id="enrollbtn">투표/결재 등록</button>
</section>
</main>
<jsp:include page="../footer.jsp" flush="true" />
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
//Quill editor 기능 구현
  var toolbarOptions =[ ['bold', 'italic', 'underline', 'strike'],
  [{ 'list': 'ordered'}, { 'list': 'bullet' }] ];
  var quill = new Quill('#editor', {
    modules :{ 
      toolbar:toolbarOptions
    },
    theme: 'snow'
  });
</script>
<script> 
// 투표와 서명 중 선택하는 기능 구현
function setCatClass(event){ 
	console.log("여기");
	console.log($(event.target));
	var thisEle = $(event.target);
	console.log(thisEle.attr("id"));
	
	if(thisEle.attr("id")=="li_vote"){
		$(thisEle).html("&nbsp;&#10004; 투표&nbsp")
		$(thisEle).attr('class','selectcategory');
		$("#li_sign").attr('class','');
		$("#li_sign").html('서명');
		$("#choosecat").val("1");
	} else if(thisEle.attr("id")=="li_sign"){
		$(thisEle).html("&nbsp;&#10004; 서명&nbsp")
		$(thisEle).attr('class','selectcategory');
		$("#li_vote").attr('class','');
		$("#li_vote").html('투표');
		$("#choosecat").val("0");
	}
	
};

function focusto(event){
	var thisEle = $(event.target);
	if(thisEle.attr("id")=="sttcld"){
		$('#startdate').focus();
	} else {
		$('#enddate').focus();
	}
};
//시작날짜 날짜 입력되면 오늘이랑 비교하기
$("#startdate").on("change keyup paste", function() {
    var currentVal = $(this).val();
    var sltdate=new Date($(this).val());
    var today = new Date();
    var today2 = new Date(today.toLocaleDateString());
    if(sltdate < today2){
    	 alert("이미 지난 날을 시작일로 선택할 수 없습니다.");
    	 $(this).val("");
    }
    });
//마감날짜 입력되면 시작날짜 먼저 입력하라 --> 시작날짜와 비교
$("#enddate").on("change keyup paste", function() {
	if($("#startdate").val()==null || $("#startdate").val()==""){
		alert("시작일을 먼저 선택해 주세요.");
		$(this).val("");
	} else {
		var sltdate = new Date($("#startdate").val());
		var enddate = new Date($(this).val());
		if(enddate.getTime() == sltdate.getTime()){
			alert("투표 진행일수는 최소 하루이상이어야 합니다.");
			$(this).val("");
		} else if(enddate < sltdate){
			alert("시작일보다 이른 날을 마감일로 지정할 수 없습니다.");
			$(this).val("");
		}
	};
});
</script>


</body>
</html>