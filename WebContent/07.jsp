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
	<h1 id="t">JQuery</h1>
	<h2>event handling, and Ajax</h2>
	<p>
		이벤트제어와 Ajax도 간단히 처리 가능하다.
	</p>	
	
	<form action="search.jsp" id="f">
		<input type="text" name="word"/>
	</form>
	
	
	<button id="bt">확인~</button>
	
	<script >
		$("#bt").on("click",function(){
			var t=window.confirm("JQuery는 간단하다??");
			if (t) {
				$("#f").trigger("submit");		// 이벤트 강제 발생
			}
		});
		
		$("#t").on("mouseover",function(){
			$("#bt").trigger("click");
			
		});
	
	
	
	</script>
	

</body>
</html>