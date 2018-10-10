<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>부트스트랩은 어떻게 사용하는가?</h1>
		<!-- 하나의 row에는 12칸을 사용할수가 있는데 ,미지정 하면 알아서 설정이 된거고 -->
		<div class="row">
			<div class="col">
				<p>
					두가지 형태로 연동을 할수가 있는데 ,<br /> css 파일 자체를 다운 받아서 link rel로 위치 잡아서
					연동해서 되고 CDN 방식으로 연동해도 된다.(※)
				</p>
			</div>
			<div class="col">
				<p>
					Bootstrap 에서 연동이 되었다면 , 미리 설계해둔 css 클래스들을 이용이 가능해진다.<br /> 그중에 먼저
					살펴봐야 될 class 들이 layout을 잡을때 사용하라고 만들어둔 Grid System 에 관련된 class들 이다.

				</p>
			</div>
		<!-- 
		</div>
		<hr/>
		<div class="row">
		 -->
		<hr/>
		 	<div class="w-100"></div>
			<div class="col">
				<p>
					두가지 형태로 연동을 할수가 있는데 ,<br /> css 파일 자체를 다운 받아서 link rel로 위치 잡아서
					연동해서 되고 CDN 방식으로 연동해도 된다.(※)
				</p>
			</div>
			<div class="col-5">
				<p>
					Bootstrap 에서 연동이 되었다면 , 미리 설계해둔 css 클래스들을 이용이 가능해진다.<br /> 그중에 먼저
					살펴봐야 될 class 들이 layout을 잡을때 사용하라고 만들어둔 Grid System 에 관련된 class들 이다.

				</p>
			</div>
			<div class="col">
				<p>
					Bootstrap 에서 연동이 되었다면 , 미리 설계해둔 css 클래스들을 이용이 가능해진다.<br /> 그중에 먼저
					살펴봐야 될 class 들이 layout을 잡을때 사용하라고 만들어둔 Grid System 에 관련된 class들 이다.
				</p>
			</div>
		</div>
	</div>
</body>
</html>