<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: rgba(250, 235, 215, 0.329);
        }
        #votemain {
            width: 630px;
        }
        p {
            margin-top: 0;
            margin-bottom: 2px;
        }
        h3 {
            text-align: center;
        }
        #votedesc {
            width: 600px;
            border: 1px solid rgb(172, 162, 148);
            margin-bottom: 10px;
        }
        #btndiv1 {
            margin-left: 150px;
        }
        #btndiv2 {
            margin-left: 100px;
        }
        .button {
            border: none;
            color: white;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
            border-radius: 20px;
        }
        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #008CBA;
        }
        .button1:hover {
            background-color: #008CBA;
            color: white;
        }
        .button2 {
            background-color: white;
            color: black;
            border: 2px solid #f44336;
        }
        .button2:hover {
            background-color: #f44336;
            color: white;
        }
#vno{
	font-size:10px;
	margin-bottom:0px;
}
h3{
margin-top:0px;
}
    </style>

</head>

<body>
<c:if test="${empty member.houseNum }">
		<script>
			alert("로그인 상태가 아닙니다.");
			location.href="index";
			window.close();
		</script>
	</c:if>
	
    <div id="votemain">
    <p id="vno">투표번호 : ${vo.voteNo }</p>
        <h3>${vo.voteTitle }</h3>
        <div id="votedesc">
        </div>
        <span id="btndiv1">
            <button class="button button1">찬성</button>
        </span>
        <span id="btndiv2">
            <button class="button button2">반대</button>
        </span>
    </div>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
    console.log(${vo.voteDesc } );
    $("#votedesc").html(${vo.voteDesc } );
     
	$(".button1").on("click", function(){
		if(confirm("찬성 하시겠습니까?")){
			doVote(1);
		};
	});
	$(".button2").on("click", function(){
		if(confirm("반대 하시겠습니까?")){
			doVote(0);
		};
	});
function doVote(yn){
	console.log(${vo.voteNo });
	console.log(${member.houseNum });
	console.log(yn);
	//var jArray = {"voteNo" : ${vo.voteNo }, "houseNum" : ${member.houseNum } , "YN" : yn };
	$.ajax({
		url : "dovote.do",
		data :{
			voteNo : ${vo.voteNo },
			houseNum : ${member.houseNum },
			YN : yn
		} ,
		type : "post",
		success : function(result){
			if(result == 'yes'){
				alert("찬성하셨습니다.");
				window.close();
			} else if(result == 'no'){
				alert("반대하셨습니다.");
				window.close();
			};
		},
		error : function(request, status, errorData){
			alert("error code : " + request.status + "\n"
				+ "message : " + request.responseText + "\n"
				+ "error : " + errorData
			);
		}
	}); //ajax
}
</script>

</body>

</html>