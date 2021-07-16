package com.Payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/InsertPaymentServlet")
public class InsertPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//for JS messages
		//creating PrintWriter object
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//declaring variables to catch the data from insert jsp page
		//here pass the input type name of the jsp form
		String cardNo = request.getParameter("cardNo");
		String cardType = request.getParameter("cardType");
		String expDate = request.getParameter("expDate");
		String cvc = request.getParameter("cvc");
		String amount = request.getParameter("amount");
		String sid = request.getParameter("sid");
		String lid = request.getParameter("lid");
		
		//boolean variable to catch the succession of the insert method
		boolean isInsertDone ;
		
		//calling insert method and passing fetched values
		isInsertDone = PaymentDBUtil.insertPayment(cardNo, cardType, expDate, cvc, amount, sid, lid);
		
		//checking the succesion
		if(isInsertDone == true) {
			
			List<Payment> payDetails;
			
			//getting the payment ID
			payDetails = PaymentDBUtil.getPayID(cardNo);
			
			request.setAttribute("payDetails", payDetails);
			
			//redirecting to the ViewPaymentID.jsp page
			RequestDispatcher dis = request.getRequestDispatcher("ViewPaymetID.jsp");
			dis.forward(request, response);
			
			//calling the salary update method
			PaymentDBUtil.updateSalaryIncrease(amount, lid);
			
		}
		else if(isInsertDone == false){
			//JS error 
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Please try again!!');");
			
			//and redirect Student to the insert page
			out.println("location = 'InsertPayment.jsp'");
			
			//ending JSscript
			out.println("</script>");
			
			
		}
		
	}

}
