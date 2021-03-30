package com.jonayed.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserForAdmin {
	
	Connection con = new DbConnection().establishConnection();
	
	private String sql = "select concat(firstname, ' ', lastname) as Name, age, email, phone from userinfo;";
	
	public ResultSet getAllUsers(){
		
		try {
			
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			return rs;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
		
		
	}

}
