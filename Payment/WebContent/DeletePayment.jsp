<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Payment</title>
<link rel = "stylesheet" href = "style.css"/>
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
			<h1>Your Payment Details</h1>
			<br><br>
			<table>
				<!-- Loop to print data -->
				<c:forEach var = "pay" items = "${payDetails}">
				
					<!-- Setting needed values to the variables -->
					<c:set var = "pid" value = "${pay.pid}"/>
					<c:set var = "cardNo" value = "${pay.cardNo}"/>
					<c:set var = "cardType" value = "${pay.cardType}"/>
					<c:set var = "expDate" value = "${pay.expDate}"/>
					<c:set var = "cvc" value = "${pay.cvc}"/>
					<c:set var = "amount" value = "${pay.amount}"/>
					<c:set var = "sid" value = "${pay.sid}"/>
					<c:set var = "lid" value = "${pay.lid}"/>
					
						
					<!-- This will call the getter methods of the Payment class -->
					<tr>
						<td>Payment ID</td>
						<td>${pay.pid}</td>
					</tr>
					<tr>
						<td>Card No</td>
						<td>${pay.cardNo}</td>
					</tr>
					<tr>
						<td>Card Type</td>
						<td>${pay.cardType}</td>
					</tr>
					<tr>
						<td>Expire Date</td>
						<td>${pay.expDate}</td>
					</tr>
					<tr>
						<td>CVC</td>
						<td>${pay.cvc}</td>
					</tr>
					<tr>
						<td>Amount</td>
						<td>${pay.amount}</td>
					</tr>
					<tr>
						<td>Student ID</td>
						<td>${pay.sid}</td>
					</tr>
					<tr>
						<td>Lecturer ID</td>
						<td>${pay.lid}</td>
					</tr>
							
				</c:forEach>
			</table><br><br>
			
			<c:url value = "DeletePaymentConfirm.jsp" var = "payDetails">
				<c:param name="pid" value = "${pid}"/>
				<c:param name="cardNo" value = "${cardNo}"/>
				<c:param name="cardType" value = "${cardType}"/>
				<c:param name="expDate" value = "${expDate}"/>
				<c:param name="cvc" value = "${cvc}"/>
				<c:param name="amount" value = "${amount}"/>
				<c:param name="sid" value = "${sid}"/>
				<c:param name="lid" value = "${lid}"/>
				
			</c:url>
			
			
			<h5>Are you sure you want to cancel the payment?</h5><br><br>
			<h6>Please note : after the cancellation the relevant progress will be lost</h6><br><br>
			
			<a href = "${payDetails}" class = "forms">
				<input type = "button" name = "delete" value = "Yes">
			</a><br><br>
		
		</center>
		<div class = "footer clearfix">
				<p>Copyright©2020 E-Nanasara Online Education Platform</p>

				<ul>
					<li><a href = "#">Facebook</a></li>
					<li><a href = "#">Twitter</a></li>
					<li><a href = "#">Instagram</a></li>
					<li><a href = "#">RSS feed</a></li>
				</ul>
			</div> <!-- footer -->
		
	</div><!-- wrapper -->
</body>
</html>