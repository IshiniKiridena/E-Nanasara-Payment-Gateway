package com.Payment;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class PaymentDBUtil {

	//boolean variable to catch the output of the boolean methods
	private static boolean success = false ;
		
	//variables for database connection
	//initializing to null to avoid garbage values
	private static Connection con = null ;
	private static Statement stmt = null ;
	private static ResultSet rs = null ;
	
	//insert method
	public static boolean insertPayment(String cardNo , String cardType , String expDate , String cvc , String amount , String sid , String lid) {
		
		//handling exceptions of database connection
		try {

			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
		
			//query
			String sql = "insert into payment values (0 , '"+cardNo+"' , '"+cardType+"' , '"+expDate+"' , '"+cvc+"' , '"+amount+"' , '"+sid+"' , '"+lid+"')";
			
			//executing the query
			//for insert , update , delete , create , alter must use executeUpdate()
			//it'll output 0 - execution unsuccess or 1 - execution success
			int rs = stmt.executeUpdate(sql);
			
			//checking succession
			if(rs > 0) {
				success = true ;
			}
			else {
				success = false ;
			}	
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//returning boolean variable
		return success;
	}
	
	//update method - Salary Increase when Student makes a payment
	public static void updateSalaryIncrease(String amount , String lid ) {
		
		try {
			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			//converting passed String values to the relevant data type
			double convertedAmount = Double.parseDouble(amount);
			int convertedLid = Integer.parseInt(lid);
			
			//the payed amount will be devided with tutor and admin
			double amountHalf = convertedAmount / 2 ;
						
			//calling stored procedure
			CallableStatement stCall = con.prepareCall("{call UpdateSalaryIncrease(?,?)}");
			
			//passing values to the procedure INs
			stCall.setInt(1, convertedLid);
			stCall.setDouble(2, amountHalf);
			
			//executing the procedure
			stCall.execute();
			stCall.close();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//data retrieval method
	public static List<Payment> getPaymentDetails(String payID) {
		
		//converting passed String values to the relevant data type
		int convertedPayID = Integer.parseInt(payID);
		
		//creating the Payment list
		ArrayList<Payment> payDetails = new ArrayList<>();
		
		try {
			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			//query 
			String sql = "select * from payment where pid = '"+convertedPayID+"'";
			
			//execution
			rs = stmt.executeQuery(sql);
			
			//loop to get all data 
			//next() will return a boolean value
			//true - execution success
			//false - execution failure or invalid entry in the table
			while(rs.next()) {
				
				//variables to catch data
				//we have to give the coloumn number here
				int pid = rs.getInt(1);
				String cardNo = rs.getString(2);
				String cardType = rs.getString(3);
				String expDate = rs.getString(4);
				String cvc = rs.getString(5);
				double amount = rs.getDouble(6);
				int sid = rs.getInt(7);
				int lid = rs.getInt(8);
				
				//creating a Payment object
				//Assign the values passed from the database to the overloaded constructor
				Payment p = new Payment(pid, cardNo, cardType, expDate, cvc, amount, sid, lid);
				
				//adding the object to the ArrayList
				payDetails.add(p);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		//returning the array list
		return payDetails;
	}
	
	//delete method
	public static boolean deletePayment(String pid) {
		
		//converting to integer
		int convertedPid = Integer.parseInt(pid);
		
		try {
			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			//query
			String sql = "delete from payment where pid = '"+convertedPid+"'";
			
			//execution
			int rs = stmt.executeUpdate(sql);
			
			//checking the execution
			if(rs > 0) {
				success = true ;
			}
			else {
				success = false ;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return success ;
	}
	
	
	//update method - Salary decrease when Student cancels a payment
	public static void updateSalaryDecrease(String amount , String lid ) {
			
		try {
			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
				
			//converting passed String values to the relevant data type
			double convertedAmount = Double.parseDouble(amount);
			int convertedLid = Integer.parseInt(lid);
				
			//the payed amount will be devided with tutor and admin
			double amountHalf = convertedAmount / 2 ;
				
			//calling stored procedure
			CallableStatement stCall = con.prepareCall("{call UpdateSalaryDecrease(?,?)}");
				
			//passing values to the procedure INs
			stCall.setInt(1, convertedLid);
			stCall.setDouble(2, amountHalf);
				
			//executing the procedure
			stCall.execute();
			stCall.close();
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	//retriving the payment ID
	public static List<Payment> getPayID(String cardNO) {
		
		//creating the Payment list
		ArrayList<Payment> payDetails = new ArrayList<>();
		
		try {	
			//creating database connection
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			//query 
			String sql = "select * from payment where cardNo = '"+cardNO+"'";
			
			//execution
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				//variables to catch data
				//we have to give the coloumn number here
				int pid = rs.getInt(1);
				String cardNo = rs.getString(2);
				String cardType = rs.getString(3);
				String expDate = rs.getString(4);
				String cvc = rs.getString(5);
				double amount = rs.getDouble(6);
				int sid = rs.getInt(7);
				int lid = rs.getInt(8);
				
				//creating a Payment object
				//Assign the values passed from the database to the overloaded constructor
				Payment p = new Payment(pid, cardNo, cardType, expDate, cvc, amount, sid, lid);
				
				//adding the object to the ArrayList
				payDetails.add(p);	
			
			}
			
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return payDetails;
	}
}





