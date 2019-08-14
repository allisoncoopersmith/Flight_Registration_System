<!-- @author Allison Coopersmith -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aircraft</title>
</head>
<body>


<%
	try {

		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		Statement stmt = con.createStatement();

		int aircraft_id = Integer.parseInt(request.getParameter("aircraft_id"));
		String airline_id = request.getParameter("airline_id");
		
		String select = "SELECT * FROM Aircraft where aircraft_id = "+ aircraft_id +" and airline_id = '" +airline_id+"'";
		ResultSet result = stmt.executeQuery(select);

		
		if (!result.next()){

			out.print("Aircraft doesn't exist");
			return;

		}
		


		String delete = "DELETE FROM Aircraft where aircraft_id = '"+ aircraft_id +"' and airline_id = '" +airline_id+"'";
		PreparedStatement psDelete = con.prepareStatement(delete);
		System.out.println(delete);
		

		//psDelete.setInt(1, aircraft_id);		
		//psDelete.setInt(2, num_of_seats);
		//psDelete.setString(3, airline_id);
		psDelete.executeUpdate();

		out.print("Aircraft deleted");
		%>
		<br>
		<br>
		<form method="post" action="cust-rep-landing-page.jsp">
			<input type="submit" value="Go back to the main page" >
			</form>
		<% 
		
	} catch (Exception ex) {
		out.print("Aircraft not deleted");%>
		<br>
		<br>
		<form method="post" action="index.jsp">
			<input type="submit" value="Go back to the main page" >
			</form>
		<% 
	}
%>
</body>
</html>