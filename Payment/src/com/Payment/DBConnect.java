package com.Payment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/e_nanasara_ols";
	private static String user = "root";
	private static String pass = "1234Ishini";
	
	//static connection variable
	private static Connection con;
	
	//connection method
	public static Connection getConnection() {
		
		//handling exceptions of the database connection
		try {
			
			//creating the driver 
			Class.forName("com.mysql.jdbc.Driver");
			
			//passing url , username , passsword for database access
			con = DriverManager.getConnection(url , user , pass);
			
			
		}
		catch(Exception e) {
			System.out.println("Error in database connection!!!!!");
		}
	
	
	
		//returning Connection object
		return con;
	}
	
}
