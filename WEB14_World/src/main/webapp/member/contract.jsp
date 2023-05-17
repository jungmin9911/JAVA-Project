<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form id="join" method="post" name="contractFrm" >
<textarea rows="15" cols="100">

</textarea>


	<br><br>
		<div style="text-align: center;">
			<input type="radio" name="okon" > 동의함 &nbsp; &nbsp; &nbsp;
			<input type="radio" name="okon" checked> 동의안함
		</div>

		<input type="button" value="Next" class="submit" onClick="go_next();" style="float: right;" >

</form>
<%@ include file="../footer.jsp" %>

