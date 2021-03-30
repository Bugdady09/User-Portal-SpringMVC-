package com.jonayed.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jonayed.Model.ChangePassSuccess;
import com.jonayed.Model.EncriptAlgo;

public class PassWordChange {

	Connection con = new DbConnection().establishConnection();
	PreparedStatement st = null;
	public boolean updatePass(ChangePassSuccess userPass) {
		
		String newPass = new EncriptAlgo().encriptPass(userPass.getNewPass());
		String oldPass = new EncriptAlgo().encriptPass(userPass.getOldPass());
		
		String sqlupdate = "UPDATE userinfo SET password = ? WHERE email = ?";
		String sqloldpass = "SELECT password FROM userinfo where email = ?";

		try {
			
			st = con.prepareStatement(sqloldpass);
			st.setString(1, userPass.getEmail());
			ResultSet rs = st.executeQuery();
			if(rs.next()){
				String getpass = rs.getString(1);
				
				if(getpass.equals(oldPass)) {
					st = con.prepareStatement(sqlupdate);
					st.setString(1, newPass);
					st.setString(2, userPass.getEmail());
					st.executeUpdate();

					return true;
					
				}else {
					return false;
				}
			}else {
				return false;
			}
			
			

		} catch (SQLException e) {

			e.printStackTrace();
			return false;
		}
	}

}
