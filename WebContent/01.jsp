<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.under {
		text-decoration: underline;
		font-style: italic;
	}
	.highlight {
		color: red;
		background-color: yellow;
	}
</style>
</head>
<body>
	<h1 class="under">css</h1>
	<p>
		요소 직접 기술하는 <span class="under">Inline</span> 형태가는 해당 HTML 요소에만 적용이 되겠지만,<br/>
		따로 기술하는 형태라면 적용대상을 태그로도 지정가능하고 ,
		 아니면 <b class="highlight">클래스</b>라는걸로도 설정이 가능하다.<br/>
	</p>
	<p class="under highlight">
		태그에 class 는 복합으로도 지정이 가능하다 . class 기술시 공백으로 구분해서 적으면 된다.
	</p>
	<p class="highlight under">
		순서는 상관없다.
	</p>
	<h2>BootStrap</h2>
	<p>
		부트스트랩은 특정 css들을 class 형태로 만들어서 제공하는 css library 이다.
		이걸 이용해서 HTML을 만들어보자.		
	</p>
	
	
	

</body>
</html>