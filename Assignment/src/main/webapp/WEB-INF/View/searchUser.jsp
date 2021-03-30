

<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jonayed.Dao.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%
	String data = request.getParameter("searchdata");
	Connection con = new DbConnection().establishConnection();

	String sql = "select concat(firstname, ' ', lastname) as fullname, age, email, phone from userinfo where concat(firstname, ' ', lastname) like ? or email like ? or age like ? or phone like ?";
	ResultSet rs = null;
	try {
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, "%"+data+"%");
	pst.setString(2, "%"+data+"%");
	pst.setString(3, "%"+data+"%");
	pst.setString(4, "%"+data+"%");
	
	rs = (ResultSet) pst.executeQuery();
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  	while(rs.next()){
  
  %>
    <tr>
      <td><%= rs.getString(1) %></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><%= rs.getString(4) %></td>
    </tr>

<%} %>
    
    
    
    
