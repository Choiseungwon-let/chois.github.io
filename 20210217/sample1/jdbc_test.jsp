<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<html>
<head><title>Member List</title></head>
<body>

MEMBMER Table Contents
<table width="100%" border="1">
<tr>
	<td>Name</td><td>ID</td><td>E-Mail</td>
</tr>
<%
	// MySQL JDBC Driver Loading
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/ccls_db";
		String dbUser = "CCLS";
		String dbPass = "CCLS";
		
		String query = "SELECT id, name, birth_date, phone, address FROM member;";
		
		// Create DB Connection 
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// Create Statement 
		stmt = conn.createStatement();
		
		// Run Qeury
		rs = stmt.executeQuery(query);
		
		// Print Result (Run by Query) 
		while(rs.next()) {
%>
<tr>
	<td><%= rs.getString("name") %></td>
	<td><%= rs.getString("birth_date") %></td>
	<td><%= rs.getString("phone") %></td>
</tr>
<%
		}
	} catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		// Close Statement 
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		
		// Close Connection
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
</table>

</body>
</html>