package com.minhanh.Connect;

import com.mysql.jdbc.Connection;
import java.sql.*;
public class DBConnect {
	//ket noi voi mysql
	public static Connection getConnection() {
		Connection conn = null;
		String url= "jdbc:mysql://localhost:3306/tour_service";
		String user="root";
		String password = "ngominhanh";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");	
			conn =  (Connection) DriverManager.getConnection(url, user, password);		
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}

}
