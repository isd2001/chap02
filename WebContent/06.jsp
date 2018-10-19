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
	<h2 id="p" style="color: red;" >HTML document traversal and manipulation</h2>
	<p>
		JQuery 로 selecting 된 요소들은
		document.getElementById() 로 뽑았을때처럼 직접 변수에 직접 설정하는게 아니다.
		<br/>
		이 라이브러리 에서 제공하는 함수들을 이용해서 요소 제어를 해야된다.
	</p>
	
	<ol>
		<li>val(): value 제어에 사용하는 함수</li>
		<li>attr(): 속성 제어에 사용하는 함수 </li>
		<li>prop(): true,false 로 제어하는 요소에 사용하는 함수</li>
		<li>css(): style 제어에 사용되는 함수</li>
	</ol>
	<hr/>
	<input type="text" onchange="alpha()" id="t1" required>
	<input type="password" onchange="bravo(this)">
	<hr/>
	
	<button type="button" id="b1">ACCEPT</button>
	<button type="button" id="b2" disabled>DECLINE</button>
	<button type="button" id="b3">BACK</button>
	
	
	<script>
		$("#b3").on("click",function(){
			window.alert($("#p").html());			// innerHTML
			$("#p").html("<i>HTML</i>");			// .innerHTML = ??;
			$("#p").append("document traversal");	// .innerHTML +=
			document.getElementById("p").innerHTML += "and manipulation";
			
			
		});
		//=========================================
		
		var colors = ["red","blue"];
		var idx=0;
		var charlie = function(){
			console.log( $("#p").css("color") );
			
			$("#p").css("color", colors[idx++]);
			if(idx ==2)
				idx =0;
			//$("#p").css("color","blue");
		};
		
		$("#b2").on("click",charlie);
		//=========================================
	
	
		//document.getElementById("b1").onclick=function(){}
		$("#b1").on("click",function(){
			console.log($("#b1").prop("disabled") + " / " + $("#b2").prop("disabled"));
			var t3 = $("#t1").prop("required");
			console.log(t3)
			
			$("#b1").prop("disabled",true);
			$("#b2").prop("disabled",false);
			$("#t1").prop("required",false);
			//$("#t1").prop("required",true);
			
		});
	
		
		
		//====================================================
		var alpha = function(){
			if ($("#t1").val().length>0) {
				window.alert($("#t1").val());
				$("#t1").val("");
			}
		}
		
		var bravo= function(target){
			// document.getElementById("t1").type;
			console.log($("#t1").attr("type"));
			console.log($("#t1").attr("onchange"));
			console.log($(target).attr("type"));
			
			$(target).attr("type","checkbox");
			window.alert($(target).attr("value"));
			
		}
		
		
	</script>

</body>
</html>