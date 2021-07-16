<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" href = "style.css"/>
<title>Delete Payment</title>
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
	
			<!-- catching the values passed from the DeletePayment.jsp -->
			<!-- here we use a java code -->
			<%
				//here as parameters we pass the param variables which created in the DeletePayment.jsp
				String pid = request.getParameter("pid");
				String cardNo = request.getParameter("cardNo");
				String cardType = request.getParameter("cardType");
				String expDate = request.getParameter("expDate");
				String cvc = request.getParameter("cvc");
				String amount = request.getParameter("amount");
				String sid = request.getParameter("sid");
				String lid = request.getParameter("lid");	
			%>
			
			<!-- to do the delete -->
			<form action= "delete" method = "post" class = "forms">
				<!-- here we pass the java variables as the values  -->
				Payment ID <input type = "text" name = "pid" value = "<%= pid %>" readonly><br>
				Card No <input type = "text" name = "cardNo" value = "<%= cardNo %>" readonly><br>
				Card Type <input type = "text" name = "cardType" value = "<%= cardType %>" readonly><br>
				Expire Date <input type = "text" name = "expDate" value = "<%= expDate %>" readonly><br>
				CVC <input type = "text" name = "cvc" value = "<%= cvc %>" readonly><br>
				Amount <input type = "text" name = "amount" value = "<%= amount %>" readonly><br>
				Student ID <input type = "text" name = "sid" value = "<%= sid %>" readonly><br>
				Tutor ID <input type = "text" name = "lid" value = "<%= lid %>" readonly><br>
			
				
				<input type = "Submit" name = "Submit" value = "Delete this payment"><br>
			
			</form>
			
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