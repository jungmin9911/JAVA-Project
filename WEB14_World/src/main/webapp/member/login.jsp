<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<h1>Login</h1>
	<form method="post" action="world.do" name="loginFrm">
		<input type="hidden" name="command" value="login">
		<fieldset>
			<legend></legend>
				<label> ID</label>
					<input name="id" type="text"> <br>
				<label> Pwd</label>
					<input name="pwd" type="password"><br>
		</fieldset>
		<div id="buttons">
	        <input type="submit" value="로그인" class="submit" 	onclick="">
	        <input type="button" value="회원가입" class="cancel" onclick="">
	        <input type="button" value="아이디 비밀번호 찾기" class="submit" >     
	    </div><br><br>
	
	</form>