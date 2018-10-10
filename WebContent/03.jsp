<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<title>Bootstrap</title>
<body>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-sm-3">
				<p>
				col 만 설정하게 되면 , 모든 디바이스에서 똑같이 적용이 된다.
				</p>
			</div>
			<div class="col-sm-9">
				<p>
				하지만, col 설정시 디바이스 크기를 설정하게 되면 , <br/>
				 해당 디바이스 보다 스크린이 작아지면 알아서 stack 형태로 바뀐다.(반응형 컬럼, 디바이스는 sm/md/lg/xl)
				</p>			
			</div>
		</div>	
	</div>


</body>
</html>