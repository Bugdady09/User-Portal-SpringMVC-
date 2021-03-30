package com.jonayed.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	
	public int id;
    
    public Connection establishConnection(){
       
            String url = "jdbc:mysql://localhost/assignment";
            String username = "root";
            String pass = "1234";
            
            try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, pass);
	            return con;
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
            
            
            
        
        return null;
    }

}
