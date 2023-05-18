<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


#logina{position: relative; width:1180px; height:800px; margin: 0 auto; text-align: center;}
#login {position: relative; width:100%; height:250px; margin: 0 auto; line-height: 160px; text-align: center; font-size:200%}
#input{ position: relative;width:600px; height:70px; color:gray; border:1px solid silver; 
		margin: 0 auto; background: white; line-height: 70px; text-align:center; font-size: 100%; }
input[type=text], input[type=password]{ font-size:150%; border:0; outline: none; }

h2{font-size:150%; color: gray;}

</style>
</head>
<body>

<aticle>
<div id=logina>

	<div id="login">
	<h1>로그인</h1>
	<hr>
	</div>
	<h2>회원아이디와 비밀번호로 로그인 하세요.</h2>
	<br><br>
	<form method="post" action="shop.do" name="loginFrm">
	<input type="hidden" name="command" value="login">
	<div id=input>
		<input name="id" placeholder="아이디" size="40" type="text"><br>
	</div>
	<div id=input>
		<input name="pwd" placeholder="비밀번호" size="40" type="password"><br>
	</div>
	<div>
		<ul>
			 <li>아이디 | </li>
             <li>비밀번호 찾기</li>
		</ul>
	</div>
	
	</form>
</div>
</aticle>


</body>
</html>