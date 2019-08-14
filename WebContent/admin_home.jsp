<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
</style>
</head>
<body>





  
  <a href="admin_logout.jsp"><b>Log Out</b></a>
  
</div>


<h2>Welcome, Administrator!</h2>
<p>Nice of you to stop by.</p>

<br>
<br>






<b>Show All Flights By Airport</b>
<form method="post">
	<table>
	<tr>    
	<td>Airport ID</td><td><input type="text" name="AirportID"></td>
	</tr>

	</table>
<br>
	<input type="submit" value="Show All Flights For This Aiport"  onclick="form.action='admin_flights_airport.jsp'">
	
	
	</form>
<br>
<br>
<br>
<br>








	<b>Show Reservations by Flight Number (ID) / Customer Name</b>
	<form method="post">
	<table>
	<tr>    
	<td>Flight Number</td><td><input type="text" name="flight_id"></td>
	<td><input type="submit" value="Show Reservations"  onclick="form.action='admin_list_rsv.jsp'"></td>
	</tr>
	</table>
	</form>
	
	<form method="post">
	<table>
	<tr>
	<td>Customer Name </td><td><input type="text" name="customer_name"></td>
	<td><input type="submit" value="Show Reservations"  onclick="form.action='admin_list_rsv.jsp'"></td>
	</tr>

	</table>
	
	</form>
<br>
<br>
<br>
<br>








<b>Show Revenue Generated by Flight/Airline/Customer ID</b>
<form method="post">
	<table>
	<tr>    
	<td>Flight ID</td><td><input type="text" name="Flight ID"></td>
	<td><input type="submit" value="Show Revenue Generated"  onclick="form.action='admin_revenue_by.jsp'"></td>
	</tr>
	</table>
</form>

<form method="post">	
	<table>
	<tr>    
	<td>Airline ID</td><td><input type="text" name="Airline ID"></td>
	<td><input type="submit" value="Show Revenue Generated"  onclick="form.action='admin_revenue_by.jsp'"></td>
	</tr>
	</table>
</form>
	
<form method="post">	
	<table>	
	<tr>    
	<td>Customer ID</td><td><input type="text" name="Customer ID"></td>
	<td><input type="submit" value="Show Revenue Generated"  onclick="form.action='admin_revenue_by.jsp'"></td>
	
	</tr>
	</table>

<br>
<br>
<br>
<br>










<b>Show Sales Report By Month</b>
<form method="post">
	<table>
	<tr>    
	<td>Month/Year (mm/yyyy)</td><td><input type="text" name="Month"></td>
	</tr>

	</table>
<br>
	<input type="submit" value="Show Sales Report for This Month/Year"  onclick="form.action='admin_sales_rep_month.jsp'">
	
	
	</form>
<br>
<br>
<br>
<br>








<b>Delete an Account</b>
<form method="post">
	<table>
	<tr>    
	<td>Delete Account (ID)</td><td><input type="text" name="deleteID"></td>
	</tr>
	<tr>
	<td><input type="radio" name="command1" value="isUserd"/>This User is a Customer</td>
	<td><input type="radio" name="command2" value="isRepd"/>This User is a Representative</td>
	</tr>
	</table>

<input type="submit" value="Delete this Account"  onclick="form.action='admin_delete.jsp'">
</form>

<br>
<br>
<br>
<br>









<b>Add an Account</b>
<form method="post">
	<table>
	<tr>    
	<td>Username </td><td><input type="text" name="addUsername"></td>
	</tr>
	<tr>    
	<td>Name </td><td><input type="text" name="addName"></td>
	</tr>
	<tr>    
	<td>Password </td><td><input type="text" name="addPassword"></td>
	</tr>
	<tr>
	<td><input type="radio" name="command111" value="Add Customer"/>This User is a Customer</td>
	<td><input type="radio" name="command222" value="Add Representative"/>This User is a Representative</td>
	</tr>

	</table>

	<input type="submit" value="Add"  onclick="form.action='admin_add.jsp'">

<br>
<br>
<br>
<br>










<b>Edit an Account</b>
<form method="post">
	<table>
	<tr>    
	<td>Insert ID of Account to be Updated</td><td><input type="text" name="theID"></td>
	</tr>
	<tr>    
	<td>New ID (Enter current if no changes)</td><td><input type="text" name="editUsername"></td>
	</tr>
	<tr>    
	<td>New Name (Enter current if no changes)</td><td><input type="text" name="editName"></td>
	</tr>
	<tr>    
	<td>New Password (Enter current if no changes)</td><td><input type="text" name="editPassword"></td>
	</tr>
	<tr>
	<td><input type="radio" name="command11" value="isUsere"/>This User is a Customer</td>
	<td><input type="radio" name="command22" value="isRepe"/>This User is a Representative</td>
	</tr>
	</table>

<input type="submit" value="Update this Account"  onclick="form.action='admin_edit.jsp'">
</form>


<br>
<br>
<br>
<br>



<b>Most Valuable Customer</b>
<form method="post">


<input type="submit" value="Get Most Valuable Customer(s)"  onclick="form.action='admin_mv_cust.jsp'">
</form>

<br>
<br>
<br>
<br>

<b>Most Active Flights</b>
<form method="post">


<input type="submit" value="Get Most Active Flights"  onclick="form.action='admin_most_active_flights.jsp'">
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


</body>
</html>