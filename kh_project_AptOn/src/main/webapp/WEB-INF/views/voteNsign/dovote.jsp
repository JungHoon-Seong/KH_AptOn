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
        #votetext {
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
    </style>

</head>

<body>
    <div id="votemain">
        <h3>아파트 경비원 증원 관련 투표</h3>
        <div id="votetext">
            <p>최근 아파트의 오래된 조경이 미관을 해친다고 하는 민원이 다수 제기되어</p>
            <p>보수공사를 위한 주민 투표가 진행되어 과반수 세대가 참여하고 과반수가 찬성하면</p>
            <p>새로운 조경을 위한 공사가 진행될 예정입니다. 아래는 공사에 대한 정보입니다.</p>
            <ul>
                <li>보수 공사 업체 : kh인테리어</li>
                <li>예상 비용 : 2,000만원</li>
                <li>예상 공사 기간 : 12월 5일 ~ 12월 10일</li>
                <li>각 세대별 부담금 : 약 2만원이 1월 관리비에 계상될 예정입니다</li>
            </ul>
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
	$(".button1").on("click", function(){
		confirm("찬성 하시겠습니까?");
		alert("찬성하셨습니다.");
		window.close();
	});
	$(".button2").on("click", function(){
		confirm("반대 하시겠습니까?");
		alert("반대하셨습니다.");
		window.close();
	});
    </script>

</body>

</html>