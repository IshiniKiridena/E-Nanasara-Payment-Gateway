<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Payment</title>
	<link rel = "stylesheet" href = "style.css"/>
	<script type="text/javascript">
	
		function validateInsertPaymentDetails(){
			var cDate  = new Date();
			var fDate = document.InsertPaymentDetails.expDate.value;
			fDate = new Date(fDate);
			
			if(fDate < cDate){
				alert('Expire date should be greater that the curent date');
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
			
				<h1>Insert Payment Details</h1>
				
				<form action = "insert" method = "post" name = "InsertPaymentDetails" onsubmit="return validateInsertPaymentDetails()" >
				
					Card Number <input type = "text" name = "cardNo" pattern="[0-9\s]{13,19}" maxlength="19" placeholder="0000 0000 0000 0000" required><br><br>
					Card Type <br>
					<input type = "radio" name = "cardType" value = "credit" required> Credit 
					<input type = "radio" name = "cardType" value = "debit" required> Debit
					<br><br>
					Expire date   <input type="date" id="expDate" name="expDate"
				       									value="0000-00-00"
				       									min="2020-01-01" max="2030-12-31" required><br><br>
					CVC <input type = "text" name = "cvc" pattern="[0-9\s]{4}" maxlength="4" placeholder="0000" required ><br><br>
					Amount <input type = "number" name = "amount" required><br><br>
					StudentID <input type = "text" name = "sid" required><br><br>
					Lecturer ID <input type = "text" name = "lid" required><br><br>
							
					<input type = "submit" name = "submit" value = "Pay">
					
				
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