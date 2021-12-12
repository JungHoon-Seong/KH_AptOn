<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>노원 롯데캐슬 with APTON</title>
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
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  
  <style>
  #wrapchart{
  	margin:auto;
  }
  
  #chart_div3{
  		text-align:right;		
		font-size:10px;
  }
  #covidtable{
  	margin:auto;
  }
  	#covidtable th{
  		text-align:center;
  		width:135px;
  	}
  	#covidtable td{
  		text-align:center;
  	}
  	#covidtable td:nth-of-type(1){
		color:red;  		
  	}
  	#covidtable #tablefoot{
		text-align:right;		
		color:black;
		font-size:10px;
  	}
  	#cycleOption{
  		width:150px;
  		font-size:12px;
  	}
  	#cycleInfo{
  	margin-left : 20px;
  	margin-top:10px;
  	}
  	#cycleInfo2{
  		text-align: right;
  		font-size:10px;
  	}
#cycleInfo2 button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 2px 2px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 2px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  border-radius:6px;
}
#cycleInfo2 button:hover {
  background-color: #4CAF50;
  color: white;
}
  	
  	
  	select {
    width: 100%; /* 가로 사이즈 */
    padding: 3px; /* 내부여백 */
    padding-left: 5px;
    border: 1px solid #ddd;
    background-size: 30px; /* 화살표 크기 */
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 12px;
    color: #000;
    outline:none;
}
select:hover {border: 1px solid #aaa;} /* 마우스오버 */

#services{
	padding-bottom:20px;
}

#services a:hover{
	cursor:default;
}

  </style>
</head>

<body>

<!-- ========header.jsp 삽입해주세요 -->

<jsp:include page="header.jsp" flush="true" />
<!-- ========header.jsp 삽입해주세요 -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
      <h1>노원 롯데 캐슬 <span>시그니처</span></h1>
      <h2>with 아파트온</h2>
      <a href="./calendarlist" class="btn-get-started scrollto">우리 아파트 일정 보러가기</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= What We Do Section ======= -->
    <section id="what-we-do" class="what-we-do">
      <div class="container">

      <!-- 
       <div class="section-title">
          <h2>What We Do</h2>
          <p>Magnam dolores commodi suscipit consequatur ex aliquid</p>
        </div>
        -->

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="icon-box">
              <div class="icon"><span style="color: #2490C1;"><i class="far fa-calendar-alt fa-lg"></i></span></div>
              <h4><a href="./noticelist">아파트 소식</a></h4>
              <p>아파트 공지사항과 각종 행사 및 전자투표/결재에 참여하실 수 있습니다.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="./board-defectreception">아파트 민원 접수</a></h4>
              <p>아파트에서 일어나는 문제점들을 온라인으로 관리사무소에 문의하실 수 있습니다.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="./allcost">우리집 관리하기</a></h4>
              <p>우리집이 신청한 민원 관리, 관리비 및 각종 고지서들을 열람하실 수 있습니다. </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End What We Do Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title">
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="icon-box">
              
              <h4 id ="airstats" style="margin-left:0px; margin-bottom:0px"><img width="30" src="https://img.icons8.com/fluency/48/000000/dust.png"/>&emsp;<a>노원구 대기환경 현황</a></h4>
              <div>
              <div id="wrapchart">
	              <div id="chart_div" style="display:inline-block;"></div>
	              <div id="chart_div2" style="display:inline-block;"></div>
	              <div id="chart_div3" style="display:inline-block;font-size:12px;">
	              	<b>미세먼지</b>(PM10) : <b>81㎍/m3</b> 이상이면 <b style="color:red;">나쁨</b><br>
	              	<b>초미세먼지</b>(PM2.5): <b>36㎍/m3</b> 이상이면 <b style="color:red;">나쁨</b><br><br>
	              </div>
	          </div>
	              <div id="chart_div3"> 서울특별시 제공</div>
             
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-lg-0">
            <div class="icon-box">
             
              <h4 style="margin-left:0px; margin-bottom:0px"><img src="https://img.icons8.com/ultraviolet/40/000000/coronavirus.png"/>&emsp;<a>노원구 코로나 현황</a></h4>
              
              <table id="covidtable">
              	<tr>
              		<th>신규 확진자</th>
              		<th>누적 확진자</th>
              	</tr>
              	<tr>
              		<td id="newcvd"></td>
              		<td id="allcvd"></td>
              	</tr>
              	<tr>
              		<td colspan="2" id="tablefoot">서울특별시 제공</td>
              	</tr>
              	
              </table>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              
              <h4 style="margin-left:0px; margin-bottom:0px"><img width="40" src="https://img.icons8.com/external-icongeek26-outline-gradient-icongeek26/64/000000/external-cycle-healthy-lifestyle-icongeek26-outline-gradient-icongeek26.png"/>&emsp;<a>노원역 주변 따릉이 정보</a>
		 <select id="cycleOption">
        </select>
</h4>
        <div id="cycleInfo"></div>
        <div id="cycleInfo2"><br>업데이트 시간 : <b><span id="cycleup"></b></span> <button onclick="cycle();">새로고침</button>&emsp;서울특별시 제공</div>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <h4 style="margin-left:0px; margin-bottom:0px"><img src="https://img.icons8.com/ultraviolet/40/000000/subway.png"/>&emsp;<a>노원역 실시간 도착 정보</a></h4>
              <p  id="openData4">도착 정보가 없습니다.</p>
              <div id="cycleInfo2"><br>업데이트 시간 : <b><span id="subwayup"></b></span> <button onclick="subway();">새로고침</button>&emsp;서울특별시 제공</div>
            </div>
          </div>
<!--           <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="bi bi-brightness-high"></i>
              <h4><a href="#">Magni Dolore</a></h4>
              <p  id="openData5">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="bi bi-calendar4-week"></i>
              <h4><a href="#">Eiusmod Tempor</a></h4>
              <p  id="openData6">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>
          </div>
        </div> -->

      </div>
    </section><!-- End Services Section -->
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="resources/img/about.jpg" class="img-fluid" alt="" style="opacity: 0.75">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3>About 노원 롯데캐슬 시그니처</h3>
            <ul>
              <li><i class="bx bx-check-double"></i>노원 롯데캐슬 1163세대 대단지로 노원구의 새로운 랜드마크가 된 노원 롯데캐슬 시그니처</li>
              <li><i class="bx bx-check-double"></i>아름다운 조경과 각종 커뮤니티 시설로 인한 삶의 질 향상</li>
            </ul>

          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    
 </main><!-- End #main -->
     <!-- ======= Footer ======= -->
<jsp:include page="footer.jsp" flush="true" />
 


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>
  <script src="resources/vendor/purecounter/purecounter.js"></script>
  <script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script src="resources/js/main.js"></script>

  <script>
//인증키 : 676f6f6569776f6e38374b6756756b
    $.ajax({
      type:"GET",
      url : "http://openAPI.seoul.go.kr:8088/676f6f6569776f6e38374b6756756b/json/RealtimeCityAir/1/5/동북권/노원구",
      success : function(data){
        let dust_data = data['RealtimeCityAir']['row'];
        console.log(dust_data);
        var airstat = dust_data[0]['IDEX_NM'];
        if(airstat=='보통' || airstat=='좋음'){
        $("#airstats").append("<span style='color:green;'> - <strong>"+airstat+"</strong></span>");
        } else {
        $("#airstats").append("<span style='color:red;'> - "+airstat+"</span>");
        }
        
        
        google.charts.load('current', {'packages':['gauge']});
        google.charts.setOnLoadCallback(drawChart);
        google.charts.setOnLoadCallback(drawChart2);

        function drawChart() {

          var data = google.visualization.arrayToDataTable([
            ['Label', 'Value'],
            ['미세먼지', dust_data[0]['PM10']],
          ]);
          
          var formatter = new google.visualization.NumberFormat(
        		    {suffix: '㎍/㎥',pattern:'#'}
        		);
        		    formatter.format(data,1);

          var options = {
            width: 200, height: 120,
            greenFrom : 0, greenTo:80,
            redFrom: 151, redTo: 1000,
            yellowFrom:81, yellowTo: 150,
            max : 200,
            minorTicks: 5
          };

          var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

          chart.draw(data, options);
        }
        
        function drawChart2() {

          var data = google.visualization.arrayToDataTable([
            ['Label', 'Value'],
            ['초미세먼지', dust_data[0]['PM25']],
          ]);
          var formatter = new google.visualization.NumberFormat(
      		    {suffix: '㎍/㎥',pattern:'#'}
      		);
      		    formatter.format(data,1);

          var options = {
           width: 200, height: 120,
            greenFrom : 0, greenTo:35,
            yellowFrom:36, yellowTo: 75,
            redFrom: 76, redTo: 1000,
            max : 100,
            minorTicks: 5
          };

          var chart = new google.visualization.Gauge(document.getElementById('chart_div2'));

          chart.draw(data, options);
        }
        
        
      }
    });
  
    var now = new Date();
    var year = now.getFullYear();
    var month = ('0' + (now.getMonth() +1)).slice(-2);
    var date = ('0' + (now.getDate()-1)).slice(-2)+".00";
    var today = year+"."+month+"."+date;

    $.ajax({
      type:"GET",
      url : "http://openapi.seoul.go.kr:8088/676f6f6569776f6e38374b6756756b/json/TbCorona19CountStatusJCG/1/5/"+today,
      success : function(data){
        let covid_data = data['TbCorona19CountStatusJCG']['row'];
        console.log(covid_data);
        var txt = year +"년 " + (now.getMonth()+1)+"월 "+ (now.getDate()-1)+"일 <br>+"+ covid_data[0]['NOWONADD']+"명";
          $('#newcvd').html(txt);
          $('#allcvd').html(covid_data[0]['NOWON']+"명");
      }
    });
    
    var cycleData;
    var str1;
    var str1Arr;
    var str2;
    var str2Arr;
    var str3;
    var str3Arr;

    function cycle(){
    	
    $.ajax({
      type: "GET",
      url : "http://openapi.seoul.go.kr:8088/676f6f6569776f6e38374b6756756b/json/bikeList/1160/1190/",
      dataType:'json',
      async:false,
      success : function(data){
        //3 7 25
        //console.log(data);
        //console.log(typeof data['rentBikeStatus']['row']);
        
        var str = JSON.stringify(data['rentBikeStatus']['row']);
        cycleData = JSON.parse(str);
		var a=0;
        for(var i=0;i<30;i++){
            if(cycleData[i]['stationName'].includes("노원")){
              console.log(cycleData[i]['stationName']);
              str1 = ""+cycleData[i]['stationName'];
              str1Arr = str1.split(".");
              //$('#cycleOption').children().eq(a).text(str1Arr[1]);
              if(i==0){
                $("#cycleOption").append("<option selected>"+str1Arr[1]+"</option>");
              }else {
                $("#cycleOption").append("<option>"+str1Arr[1]+"</option>");
              }
              a++;
          };
          };
      },
      error : function(msg){
        alert(msg);
      }
    })
    $("#cycleOption option").prop("selected", false);
	for(var i=0;i<30;i++){
		if(cycleData[i]['stationName'].includes($.trim($("#cycleOption option:selected").val()))){
			$("#cycleInfo").html("<b>"+cycleData[i]['stationName'].split(".")[1]+"</b>의 대여가능 자전거 개수 : <b style='color:blue;'>" + cycleData[i]['parkingBikeTotCnt']+"</b>대");
			break;
		}
	}
    // 세 개 중에 선택하면 정보 보이게
    $("#cycleOption").on('change', function(){
    	for(var i=0;i<30;i++){
    		if(cycleData[i]['stationName'].includes($.trim($("#cycleOption option:selected").val()))){
    			
    			$("#cycleInfo").html("<b>"+cycleData[i]['stationName'].split(".")[1]+"</b>의 대여가능 자전거 개수 : <b style='color:blue;'>" + cycleData[i]['parkingBikeTotCnt']+"</b>대");
    		}
    	}
    });
    
    var date = new Date();
    var year = date.getFullYear().toString();

    var month = date.getMonth() + 1;
    month = month < 10 ? '0' + month.toString() : month.toString();

    var day = date.getDate();
    day = day < 10 ? '0' + day.toString() : day.toString();

    var hour = date.getHours();
    hour = hour < 10 ? '0' + hour.toString() : hour.toString();

    var minites = date.getMinutes();
    minites = minites < 10 ? '0' + minites.toString() : minites.toString();

    var seconds = date.getSeconds();
    seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

    $("#cycleup").text(year+"년" + month+"월" + day+"일" + hour+"시" + minites+"분" + seconds+"초");
    
    
    } // cycle()

    cycle();
    
	    
    function subway(){
    	
    // 지하철 실시간 도착정보
    $.ajax({
      type: "GET",
      url : "http://swopenAPI.seoul.go.kr/api/subway/464e726f6f776f6e39396279705145/json/realtimeStationArrival/0/5/노원",
      dataType:'json',
      async:false,
      success : function(data){
        var len = (data)['errorMessage']['total'];
        console.log((data)['errorMessage']['total']);
        for(var i=0;i<len;i++){
          //console.log(JSON.stringify(data['realtimeArrivalList'][i]));
          $("#subwayup").text(data['realtimeArrivalList'][i]['recptnDt']);
          var min = Math.round(data['realtimeArrivalList'][i]['barvlDt']/60);
          $("#openData4").html(
        		 (i+1)+". " + data['realtimeArrivalList'][i]['trainLineNm'] + " "+
        		  "<b>"+min+"분</b> 후 도착<br>"
        		  
        		  );
        }

      }
    }); // ajax
    }; //subway
    
    subway();
    
    
    
    
    

  </script>

</body>

</html>