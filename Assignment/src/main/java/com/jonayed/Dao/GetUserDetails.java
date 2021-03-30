package com.jonayed.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jonayed.Model.EncriptAlgo;
import com.jonayed.Model.UserLogIn;
import com.jonayed.Model.UserRegistratrion;

public class GetUserDetails {

	Connection con = new DbConnection().establishConnection();
	private String sql = "select * from userinfo where email = ? and password = ?";
	
	public UserRegistratrion userGetails(UserLogIn user) {
		
		String email = user.getEmail();
		String pass = new EncriptAlgo().encriptPass(user.getPassward());
		
		try {
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				
				UserRegistratrion ur = new UserRegistratrion(
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5), 
						rs.getString(6), 
						rs.getString(7), 
						rs.getInt(8), 
						rs.getString(9));
				
				return ur;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;

	}
}
