package com.Payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CancelPaymentServlet")
public class CancelPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//declaring variables to catch the data from the jsp page
		//here pass the input type name of the jsp form
		String pid = request.getParameter("pid");
		
		try {

			//calling the method to catch data and pass values to an ArrayList
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			
			//this will take the data list to the DeletePayment.jsp
			request.setAttribute("payDetails", payDetails);
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//redirecting to the DeletePayment.jsp page
		RequestDispatcher dis = request.getRequestDispatcher("DeletePayment.jsp");
		dis.forward(request, response);
		
	}

}
