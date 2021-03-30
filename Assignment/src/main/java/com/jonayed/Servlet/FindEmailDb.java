package com.jonayed.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jonayed.Dao.DbConnection;



public class FindEmailDb extends HttpServlet {


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String sql = "SELECT * FROM userinfo where email =?";
		
		Connection con = new DbConnection().establishConnection();
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				response.setContentType("text/plain");
				response.getWriter().write("Email already taken");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
}
