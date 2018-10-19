<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>JQuery</title>
</head>
<body>
	<h1 class="t">JQuery</h1>
	<h2>HTML document traversal and manipulation</h2>
	<p>
		JQuery 는 빠르고 간편하게,  HTML 요소 접근 해서 제어를 할수 있다.
	</p>
	<select id="avg">
		<option value="5">5</option>
		<option value="4">4</option>
		<option value="3">3</option>
		<option value="2">2</option>
		<option value="1">1</option>
	</select>
	<input type="text" id="ment"/>
	<button type="button" onclick="values()">확인</button>
	<p class="t">
		ㄹㅇ?
	</p>
	<script>
		// $()  탐색 .. document.getElement(s)By...
		// "#txt"  id,   ".word"  : class   , "input"  : tagName 
		var values = function() {
			console.log( $("#avg").value );
			console.log( document.getElementById("avg").value );
			console.log( $( document.getElementById("avg") ).val() );
			
			
			var v = $("#avg").val();
			var v2 =$("#ment").val();
			var txt = "v = " + v + " / v2 = "+ v2;
			//$("p").html(txt);
			$(".t").html(txt);
		};
		
		
	
	</script>
	
</body>
</html>