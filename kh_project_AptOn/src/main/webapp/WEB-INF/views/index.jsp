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
  		width:130px;
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
      <a href="boardlistRB123" class="btn-get-started scrollto">우리 아파트 소식 보러가기</a>
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
              <h4><a href="">아파트 소식</a></h4>
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
              <h4><a href="">우리집 관리하기</a></h4>
              <p>우리집이 신청한 민원 관리, 관리비 및 각종 고지서들을 열람하실 수 있습니다. </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End What We Do Section -->

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

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title">
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="icon-box">
              
              <h4 id ="airstats" style="margin-left:0px; margin-bottom:0px"><img width="30" src="https://img.icons8.com/fluency/48/000000/dust.png"/>&emsp;<a href="#">노원구 대기환경 현황</a></h4>
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
             
              <h4 style="margin-left:0px; margin-bottom:0px"><img src="https://img.icons8.com/ultraviolet/40/000000/coronavirus.png"/>&emsp;<a href="#">노원구 코로나 현황</a></h4>
              
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
              <i class="bi bi-bar-chart"></i>
              <h4 style="margin-left:0px; margin-bottom:0px"><a href="#">노원역 지하철 혼잡도</a></h4>
              <p id="openData3">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="bi bi-binoculars"></i>
              <h4><a href="#">Nemo Enim</a></h4>
              <p  id="openData4">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
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
        </div>

      </div>
    </section><!-- End Services Section -->
    
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
    var date = ('0' + (now.getDate())).slice(-2)+".00";
    var today = year+"."+month+"."+date;

    $.ajax({
      type:"GET",
      url : "http://openapi.seoul.go.kr:8088/676f6f6569776f6e38374b6756756b/json/TbCorona19CountStatusJCG/1/5/"+today,
      success : function(data){
        let covid_data = data['TbCorona19CountStatusJCG']['row'];
        console.log(covid_data);
        var txt = year +"년 " + (now.getMonth()+1)+"월 "+ now.getDate()+"일 <br>+"+ covid_data[0]['NOWONADD']+"명";
          $('#newcvd').html(txt);
          $('#allcvd').html(covid_data[0]['NOWON']+"명");
      }
    });

  </script>

</body>

</html>