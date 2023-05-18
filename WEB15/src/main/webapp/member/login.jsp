<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


#logina{position: relative; width:1180px; height:800px; margin: 0 auto; text-align: center;}
#logina #login {position: relative; width:100%; height:250px; margin: 0 auto; line-height: 160px; text-align: center; font-size:200%}
#logina #input{ position: relative;width:600px; height:70px; color:gray; border:1px solid silver; 
      margin: 0 auto; background: white; line-height: 70px; text-align:center; font-size: 100%; }
#logina input[type=text], input[type=password]{ font-size:150%; border:0; outline: none; }
#logina h2{font-size:150%; color: gray;}
#logina .menu1{ position: relative; margin: 0 auto; margin-top: 10px; width:600px; height:20px; text-align: right; }
#logina .menu1 ul{ list-style: none; margin:0; padding:0; display:inline-block; }
#logina .menu1 ul li{ float:left; padding:0 5px;  font-size:100%;  }
#logina a {  color:gray; text-decoration: none; } 

#logina #buttons input{margin:30px 0 0 20px  ; width:200px; height:60px; border: 1px solid #666; 
border-radius: 10px; box-shadow: 3px 3px 2px #ccc; font-size:150%;}
#logina #buttons input[type=submit]{background : #6317ed;color:white; }
#logina #buttons input[type=button]{background : #52fff9}
#logina #content{margin:30px; font-size:100%;}
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
   <div class="menu1">
      <ul>
          <li><a href="#">아이디 찾기 | </a></li>
             <li><a href="#">비밀번호 찾기</a></li>
      </ul>
   </div>
   <div id="buttons">
      <input type="submit" value="로그인" class="submit" onclick="return loginCheck()">
      <input type="button" value="회원가입" class="cancel" onclick="">
   </div><br><br>
   <div id=content> 회원정보와 관련된 문의사항이 있으시면 고객만족센터에 연락하세요.<br>
   고객만족센터 : 1899-8900</div>
   <div>&nbsp;&nbsp;&nbsp;${param.message}</div>
   <div>&nbsp;&nbsp;&nbsp;${message}</div>
   
   </form>
</div>
</aticle>


</body>
</html>