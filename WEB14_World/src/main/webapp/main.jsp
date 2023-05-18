<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>



<div id="main_view">
    <div id="main_imgs">
   			<img src="images/mainimgs1.jpg">
        	<img src="images/mainimgs2.jpg">
        	<img src="images/mainimgs3.jpg">
        	<img src="images/mainimgs4.jpg">
        	<img src="images/mainimgs5.jpg">
        	<img src="images/mainimgs6.jpg">
        	<img src="images/mainimgs7.jpg">
        	<img src="images/mainimgs8.jpg">
    </div>
    <div id ="remote">
        <ul>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
            <li>7</li>
            <li>8</li>
        </ul>
        <div class="auto">▶</div>
    </div>
</div>

<div id="mainTodayArea" >
	<a href="world.do?command=loginForm" target='_blank'>
 	<img src="images/clock.png" width="25" height="25" >오늘의 파크 운영시간   10:00~21:00
	</a>
</div>



<%@ include file="footer.jsp" %>