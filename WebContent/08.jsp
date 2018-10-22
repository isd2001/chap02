<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>JQuery</title>
</head>
<body>
	<h1>JQuery AJAX</h1>
	<p>Ajax도 간단히 처리가 가능하다.</p>

	<button type="button" id="b1">AJAX</button>
	<button type="button" id="b2">GET</button>
	<button type="button" id="b3">POST</button>


	<script>
		$("#b1").on("click", function() {
			$.ajax({
				"url" : "08ajax.jsp",
				"data" : {
					"score" : 3,
					"ment" : "그저그런 .. 나쁘지도 않고 좋지도 않고"
				},
				"method" : "get" // 기본이 GET으로 요청 들어간다.
				,
				"async" : true
			} // 비동기도 기본이 true
			).done(function(rst) {
				// onreadystatechange , 에 readyState 4 잡아서 처리했던 부분이다.
				// 매개변수로(rst)로 받겠다고 설정한게 응답문서가 된다.
				JSON.parse(rst);

			});

		});

		$("#b2").on("click", function() {
			var param = {
				"score" : 4,
				"ment" : "살짝.. 좋은편?"
			};
			// $.get 혹은 $.post 로 특정방식에 의한 ajax를 바로 지정가능
			$.get("08ajax.jsp", param, function(rst) {
				var obj = JSON.parse(rst);
				window.alert(obj.rst);
			});

			/* $.get("08ajax.jsp", param.done(function(rst) {

			})); 
			
			JQuery ajax 는 param 넘길때 QueryString 을 직접 만들필요는 없다.
			알아서 만들어줌.
			*/
		});
		
		// Spring에 post AJAX 처리할때 ?? 인자 값 어떻게 확보했지?
		// 기존 XMLHttpRequest 를 이용해서 Post 할때는 , 인자 전달시
		// 1. encType = application/x-www-form-urlencoded 로 바꾸고,
		//    get 보내듯이 짜서 보내고 , getParameter로 뽑아도 되고
		// 2. encType 변경 없이, 보낼데이터 를 JSON으로 보내서 , RequestBody로 봅아서
		//    Gson으로 fromJSON 해서 처리를 하던가 했었는데..
		// JQuery AJAX 는 POST 던 기본이 application/x-www-form-urlencoded 설정이 되어있다.
		// 보낼때 별도로 신경을 안써도 , 컨트롤러 받아주는 곳애서 @RequestParam 으로 뽑힌다.
		// 따로 변경을 하지 않는다면 , @RequestBody를 쓸필요가 없다
		$("#b3").on("click",function(){
			$.get("08ajax2.jsp").done(function(obj){
				// var obj = JSON.parse(rst);
				// window.alert(obj.rst+" / "+obj.size);
				window.alert(obj.rst+" / "+obj.size);
			});
		});
		
		/*
			JQuery AJAX는 응답컨텐츠가 만역에 application/JSON 이면
			parsing 되서 객체로 뽑힌다.
		*/
		/*
			XMLHttpRequest 객체를 직접 이용해서 AJAX 처리할때와
			JQuery 의 단축 AJAX를 이용할때는 두 부분에 큰차이가 있는데 ,
			GET,POST 던 @RequestParam 으로 처리하면 된다.
			
			ResponseBody 결과물 
		*/
	</script>

</body>
</html>