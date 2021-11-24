<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        canvas {
            border: 1px black double;
            border-radius: 10px;
        }
        #hl{
            float:left
        }
        #hr{
            
            float: right;
            margin-left: 5px;
        }
        button{
            font-size: 5px;
            margin-bottom:5px;
        }
        
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: -13px 100px 0px 171px;
  padding: 10px 10px 10px 15px;
  border: 3px solid #5492DB;
  background-color:white;
  width: 40%;
  border-radius : 20px;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 18px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
h5{
margin:0;
}
    </style>
</head>
<body onload="init()">

    
     <div id="votemain">
    <p id="vno">투표번호 : ${vo.voteNo }</p>
        <h3>${vo.voteTitle }</h3>
        <div id="votedesc">
        </div>
    </div>
    
   <button id="myBtn">서명하기</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
  <h5>서명란<span class="close">X</span></h5>
    
	   <canvas id="myCanvas" style="background-color:rgba(255, 255, 255, 0.849)" width="250" height="150">
		    </canvas>
		    <br>
		    <button onclick="clearSign()">서명란 비우기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		    <button onclick="loadSign();">서명 불러오기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		    <button onclick="submit()">제출</button>
  </div>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$("#votedesc").html(${vo.voteDesc });
	
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}

    var canvas, context;
    function init() {
        canvas = document.getElementById("myCanvas");
        context = canvas.getContext("2d");
     
        context.lineWidth = 1; // 선 굵기를 2로 설정
        context.strokeStyle = "black";
     
        // 마우스 리스너 등록. e는 MouseEvent 객체
        canvas.addEventListener("mousemove", function (e) { move(e) }, false);
        canvas.addEventListener("mousedown", function (e) { down(e) }, false);
        canvas.addEventListener("mouseup", function (e) { up(e) }, false);
        canvas.addEventListener("mouseout", function (e) { out(e) }, false);
    }
     
    var startX=0, startY=0; // 드래깅동안, 처음 마우스가 눌러진 좌표
    var drawing=false;
    function draw(curX, curY) {
        context.beginPath();
        context.moveTo(startX, startY);
        context.lineTo(curX, curY);
        context.stroke();
    }
    function down(e) {
        startX = e.offsetX; startY = e.offsetY;
        drawing = true;
    }
    function up(e) { drawing = false; }
    function move(e) {
        if(!drawing) return; // 마우스가 눌러지지 않았으면 리턴
        var curX = e.offsetX, curY = e.offsetY;
        draw(curX, curY);
        startX = curX; startY = curY;
    }
    function out(e) { drawing = false; }


    function submit(){
        var canvasValue = myCanvas.toDataURL();
        console.log(canvasValue);
        console.log(typeof canvasValue);
		$.ajax({
    		url : "submitSign.do",
    		data : {"signBase64" : canvasValue},
    		type : "post",
    		//contentType: "application/json; charset=utf-8",
    		success : function(result){
    			console.log(result);
    		},
    		error : function(request, status, errorData){
    			alert("error code : " + request.status + "\n"
    				+ "message : " + request.responseText + "\n"
    				+ "error : " + errorData
    			);
    			//location.reload();
    		}
    	}); //ajax 
    }
    function loadSign(){
	   	 var image = new Image();
  		  image.onload = function() {
  		  context.drawImage(image, 0, 0);
  		  };
  		  //TODO 저장된 base64 불러오기
  		  	$.ajax({
    		url : "loadSign.do",
    		data : {"hNum" : ${member.houseNum } },
    		type : "post",
    		success : function(result){
    			console.log(result);
    			image.src = result;
    		},
    		error : function(request, status, errorData){
    			alert("error code : " + request.status + "\n"
    				+ "message : " + request.responseText + "\n"
    				+ "error : " + errorData
    			);
    			//location.reload();
    		}
    	}); //ajax
  		  
  		  
  		  //image.src = "data:image/png;base64,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";
    }
    
    function clearSign(){
    	console.log("클리어 진입");
        // 픽셀 정리
        context.clearRect(0, 0, myCanvas.width, myCanvas.height);
        // 컨텍스트 리셋
        context.beginPath();

    }
    </script>
    </body>
    </html>