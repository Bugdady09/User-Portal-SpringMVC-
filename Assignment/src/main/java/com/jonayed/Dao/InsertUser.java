package com.jonayed.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jonayed.Model.EncriptAlgo;
import com.jonayed.Model.UserRegistratrion;

public class InsertUser {
	
	
	
	Connection con = new DbConnection().establishConnection();
	
	public boolean insert(UserRegistratrion user) {
		
		String sql = "insert into userinfo(firstname,lastname,address,phone,email,birthdate,age,password) values(?,?,?,?,?,?,?,?)";
		
		try {
			
			String pass = new EncriptAlgo().encriptPass(user.getPassword());
			
			PreparedStatement st= con.prepareStatement(sql);
			st.setString(1, user.getFirstName());
			st.setString(2, user.getLastName());
			st.setString(3, user.getAddress());
			st.setInt(4, user.getPhone());
			st.setString(5, user.getEmai1());
			st.setString(6, user.getBirthdate());
			st.setInt(7, user.getAge());
			st.setString(8, pass);
			st.executeUpdate();
			
			return true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		
		
	}
	

}
