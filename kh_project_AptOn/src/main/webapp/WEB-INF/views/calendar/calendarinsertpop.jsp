<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

/* #writesection{
margin:auto;
margin-top:200px;
width:600px;
} */
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
#cancle{
	margin-left:500px;
	margin-top:20px;
}
#insert{
	margin-left:400px;
	margin-top:-27px;
}
.enrollbtn{
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
/* 	margin-left:500px;
	margin-top:20px; */
	}
.enrollbtn:hover{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
.enrollbtn:active{
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
		  dateFormat: "yy-mm-dd", 
		  showAnim: "slide", 
		  showMonthAfterYear: true, 
		  dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
	 	 }); 
	  });

  </script>
</head>
<body>
<section id="writesection">
<fieldset>
<legend>일정 등록</legend>
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
    <input type="text" placeholder="제목을 입력해주세요." id="title">
  </div>
</fieldset>
<button onclick="cancle();"id="cancle" class="enrollbtn">취소하기</button>
<button onclick="insertdata();" id="insert"class="enrollbtn">등록하기</button>
</section>
<script type="text/javascript">
function insertdata(){
	
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
	var result = confirm("등록 하시겠습니까?");
	if(result == false){
		return;		
	} else{
	var adminid = "${admin.adminId }";
	$.ajax({
		url : "calendarinsert",
		data : { 
			adminId : adminid,
			calendartitle : $("#title").val(),
			calendarStartDate : $("#startdate").val(),
			calendarenddate : $("#enddate").val()
		},
		type : "post",
		success : function(msg){
			alert("등록되었습니다.");
			opener.parent.location.reload();
			window.close();  
		},
		error : function(request, status, errorData){
			alert("error code : " + request.status + "\n"
				+ "message : " + request.responseText + "\n"
				+ "error : " + errorData
			);
			location.href="error";
		}
	}); 
	};
		
	}
	
	function cancle(){
		var result = confirm("취소하시겠습니까?");
		if(result == false){
			return;		
		} else{
			window.close(); 
		}
	}


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
	 if(enddate < sltdate){
			alert("시작일보다 이른 날을 마감일로 지정할 수 없습니다.");
			$(this).val("");
		}
	};
});
</script>
</body>
</html>