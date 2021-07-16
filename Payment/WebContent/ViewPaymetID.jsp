<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel = "stylesheet" href = "style.css"/>
	<title>Your Payment ID</title>
	</head>
<body>
	<div class = "wrapper">
	
		<center>
				<img alt="logo" src="images/cover.png" width="30%" height="30%" >
		</center>
			
		<div class="top-bar clearfix">
			
			<div class = "account">
				<ul>
					<li><a href = "#" >Login</a></li>
					<li><a href = "#" >Register</a></li>
				</ul>
			</div><!-- account -->
				
			<div class = "navigation">
				<ul>
					<li><a href = "">Home</a></li>
					<li><a href = "">Courses</a></li>
					<li><a href = "">Lecture Panel</a></li>
					<li><a href = "">About us</a></li>
					<li><a href = "">Contact us</a></li>
				</ul>
			</div><!-- navigation -->
		
		</div><!-- top bar -->
			
		<center>
			<br><br>
			<h1>Happy learning</h1>
			<br>
			<c:forEach var = "pay" items = "${payDetails}">
				<c:set var = "pid" value = "${pay.pid}"/>
			
			
			Your Payment ID is ${pay.pid}<br><br>
				<h3>Please use this if you want to cancel the payment</h3><br>
			</c:forEach>
		</center>
		
		<div class = "forms" >
			<form action = "MakeOrDeletePayment.jsp" method = "post" id = "view">
				<input type = "submit" name = "submit" value = "I want to delete this payment" >
			</form>
		</div><!-- forms -->
			
		<div class = "footer clearfix">
				<p>Copyright©2020 E-Nanasara Online Education Platform</p>

				<ul>
					<li><a href = "#">Facebook</a></li>
					<li><a href = "#">Twitter</a></li>
					<li><a href = "#">Instagram</a></li>
					<li><a href = "#">RSS feed</a></li>
				</ul>
			</div> <!-- footer -->
	</div><!-- Wrapper -->
</body>
</html>