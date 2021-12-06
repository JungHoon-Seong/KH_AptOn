<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>투표/서명 등록</title>
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
  
#writesection{
  font-family: 'Noto Sans KR', sans-serif;
  }
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
	height:35px;
	cursor : Default;
}
#dateul li:nth-of-type(3){
	width:210px;
}
#enddate{
	width:180px;
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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
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
	
	// 유효성 검사
	// 1. 종류 선택 
	// console.log($("#choosecat").val());
	if(!($("#choosecat").val()=='1'|| $("#choosecat").val()=='0')){
		alert("종류를 선택해주세요.");
		return;
	}
	// 2. 시작일, 마감일 선택 startdate enddate
	if(!$("#startdate").val() || !$("#enddate").val()){
		alert("시작일 또는 마감일을 선택해주세요.");
		return;
	};
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
	// 4. 내용입력
	if(!(CKEDITOR.instances['editor'].getData())){
		alert("내용을 입력해주세요.");
		$('.cke_wysiwyg_frame').contents().find('.cke_editable').focus();
		return;
	};
	// 5. 내용입력제한 초과 
	if($("#txtlim").val()<0){
		alert("입력 제한을 초과했습니다.");
		$('.cke_wysiwyg_frame').contents().find('.cke_editable').focus();
		return;
	}
	
	var result = confirm("등록하시겠습니까?");
	if(result == false){
		return;		
	} else{
	var ckdata = CKEDITOR.instances['editor'].getData();
	console.log(ckdata);
	var adminid = "${admin.adminId }";
	$.ajax({
		url : "enrollvote.do",
		data : { 
			category : $("#choosecat").val(),
			adminId : adminid,
			voteTitle : $("#title").val(),
			voteDesc : JSON.stringify(ckdata), //html타입을 string으로
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
	}
}; //function
function golist(){
	var result = confirm("취소하시겠습니까?");
	if(result == false){
		return;		
	} else{
		location.href="votelist";
	}
}

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
    </ul>
  </div>

  <div>
    <ul id="dateul">
      <li class="datetitle"><strong>시작일</strong> </li>
      <li class="datetitle">
      <img src="resources/img/calendaricon.png" width="30px" class="cld" onclick="focusto(event);" id="sttcld">
      </li>
      <li><input type="text" class="datepicker" id="startdate" autocomplete="off" readonly>
      <li class="datetitle"><strong>마감일</strong></li>
      <li class="datetitle">
      <img src="resources/img/calendaricon.png" width="30px" class="cld" onclick="focusto(event);" id="endcld">
      </li>
      <li><input type="text" class="datepicker" id="enddate" autocomplete="off" readonly></li>
    </ul>
  </div>
  <div id="divinput">
    <input type="text" placeholder="제목을 입력해주세요. (25자 제한)" id="title">
  </div>
</fieldset>
<!-- Create the editor container -->
<div id="editor">
<textarea name="editor" id="editor"></textarea>
</div>
<span style="font-size:12px;">남은 bytes : <input value="1500" id="txtlim" style="font-size:12px; border:none; width:35px;" readonly>bytes</span>
<button onclick="goenroll();" id="enrollbtn">등록하기</button>
<button onclick="golist();" id="enrollbtn">취소하기</button>

</section>
</main>

<jsp:include page="../footer.jsp" flush="true" />
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<script>
CKEDITOR.replace( 'editor',{
	uiColor: '#ffebcd',
	height : '300px',
	on: {
		//글자수제한 기능
        change: function() {
        	var txt = CKEDITOR.instances['editor'].getData();
        	var len = CKEDITOR.instances['editor'].getData().length;
        	
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

</script>
<script> 
// 투표와 서명 중 선택하는 기능 구현
function setCatClass(event){ 
	// console.log("여기");
	// console.log($(event.target));
	var thisEle = $(event.target);
	// console.log(thisEle.attr("id"));
	
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
// 제목 글자 수 제한
$('#title').on("change keyup paste",function(){
	if($("#title").val().length > 25){
		alert("제목이 25자를 초과했습니다.");
		var titletxt = $("#title").val();
		$("#title").val(titletxt.substring(0,25));
		return false;
	};
	
});
//시작날짜 날짜 입력되면 오늘이랑 비교하기
$("#startdate").on("change keyup paste", function() {
    var currentVal = $(this).val();
    var sltdate=new Date($(this).val());
    var today = new Date();
    var today2 = new Date(today.toLocaleDateString());
    var endDate = new Date($("#enddate").val());
    
    if(sltdate < today2){
    	 alert("이미 지난 날을 시작일로 선택할 수 없습니다.");
    	 $(this).val("");
    }else if(endDate != null && endDate != ""){
    	if(sltdate > endDate){
    		alert("마감일이 지난 날로 시작일을 선택할 수 없습니다.");
    		$(this).val("");
    	} else if(sltdate.getTime() == endDate.getTime()){
    		alert("투표 진행일수는 최소 하루이상이어야 합니다.");
    		$(this).val("");
    	}
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