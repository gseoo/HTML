<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/webPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/webPro/resources/cdn-main/example.css">
<script src="/webPro/resources/cdn-main/example.js"></script>
<style>
	span.material-symbols-outlined{
		vertical-align: text-bottom;
 	}
</style>
</head>
<body>
	<header>
  		<h1 class="main">
    		<a href="#">GyeongSeo Home</a>
  		</h1>
  		<ul>
  			<li><a href="#">로그인</a></li>
  			<li><a href="#">회원가입</a></li>
  		</ul>
	</header>
	<h3>
		<span class="material-symbols-outlined">view_list</span>
		javascript days00
	</h3>
	<div>
  		<xmp class="code">
    		
  		</xmp>
		<%
			String subject = request.getParameter("subject");
		%>
	
		선택한 과목 : <%= subject %><br>
		<br>
		<br>
		[ex06.html에서 선택한 과목]<br>
		<input type="radio" name="subject" value="kor">
			<label for="">국어</label>
		</input>
		<input type="radio" name="subject" value="eng">
			<label for="">영어</label>
		</input>
		<input type="radio" name="subject" value="mat">
			<label for="">수학</label>
		</input>
		<input type="radio" name="subject" value="pe">
			<label for="">체육</label>
		</input>
		
		<br>
		<br>
		<a href="javascript:history.back()">뒤로 가기</a>
	
	</div>
	
	<script>
		//$("input[type=radio]")
		$(":radio[value='<%= subject %>']").prop("checked", true);
	</script>
	
</body>
</html>