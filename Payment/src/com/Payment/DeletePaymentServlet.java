package com.Payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//for JS messages
		//creating PrintWriter object
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//variables to catch the passed needed data
		String pid = request.getParameter("pid");
		String amount = request.getParameter("amount");
		String lid = request.getParameter("lid");
	
		boolean isDeleteDone;
		
		//calling the delete method
		isDeleteDone = PaymentDBUtil.deletePayment(pid);
		
		//checking the succesion
		if(isDeleteDone == true) {
			
			//JS error 
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Payment Deleted!!');");
			
			//and redirect Student to the insert page
			out.println("location = 'InsertPayment.jsp'");
			
			//ending JSscript
			out.println("</script>");
			
			//calling the update Salary decrese method
			PaymentDBUtil.updateSalaryDecrease(amount, lid);
		
		}
		else {
			//JS error 
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Payment not deleted!! Try again');");
			
			//and redirect Student to the insert page
			out.println("location = 'MakeOrDeletePayment.jsp'");
			
			//ending JSscript
			out.println("</script>");
			
			
		}
	
	}

}
