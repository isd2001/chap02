<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// 컨트롤러에서 데이터를 확보해서 차트르 만드어내는 JSON 문자열을 만든 후 ,
	// ModelMap 같은거 이용해서 데이터 세팅 시키고 , 뷰로 넘기고 ,
	String data= "[['Task', 'Hours per Day'],['Work',     7],['Eat',      5],['Commute',  2],['Watch TV', 2], ['Sleep',    7] ]";
	request.setAttribute("chartData", data);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script open API</title>
</head>
<body>
	<p>
	HTML 을 만들때 Text가 아니라 지도나 차트 같은걸 문서에 포함 시키고 싶다면 ,
	자바 스크립트 기반의 open api 를 사용하는걸 알아야 된다.
	쓰는 방법은 api 마다 살짝은 다르겠지만 , 공공 데이터에서 Open API 에서 사용하듯 인자 설정법이 
	다른 정도이다
	</p>
	<p>
	구글 차트와 구글맵을 사용해보며 , 활용해보자.
	</p>
	<p>
		<div id="piechart" style="width: 900px; height: 500px;"></div>
	</p>
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable(${chartData});

        var options = {
          title: 'Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
	<!-- 
		차트를 만들어낼때 데이터가 필요한데 보통 대부분이 JSON 으로 객체로 설정한다거나,
		배열로 설정한다거나 그렇다.
		이 데이터는 ajax로 긁어 와도 되고 , 아니면 컨트롤러 에서 세팅해서 넘겨서 만들면 된다.
	 -->
</body>
</html>