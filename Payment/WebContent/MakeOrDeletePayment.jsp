<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Make or Delete Payment</title>
		<link rel = "stylesheet" href = "style.css"/>		
		<!-- JavaScript Form validation -->
		<script type="text/javascript">
			function validatePayIdInput() {
				var pid = document.PayIdInput.pid.value;
				
				if (pid == ""){
					alert("Please enter the Payment ID!!");
					return false ;
				}
			}
		
		</script>
		
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
			
			<div class = "forms">
				<h1>Do you want to make payment or cancel a payment?</h1>
				
				<form action = "InsertPayment.jsp" method = "post" class = "InsertPayment" id = "InsertPayment">
					<input type = "submit" name = "submit" value = "I want to make a payment">
				</form>
				<br>
				
				<form action = "cancel" method = "post" name = "PayIdInput" onsubmit = "return validatePayIdInput()" class = "PayIdInput" id = "PayIdInput">
					<h4>If you want to cancel the payment please enter the previously given payment ID</h4><br>
					<input type = "text" name = "pid" id = "pid">
					<br>
					<input type = "submit" name = "submit" value = "I want to cancel the payment">
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

		</div><!-- wrapper -->
	
	</body>
</html>