<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view oder detail and update</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
</head>
<body>


<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="about.jsp" class="w3-bar-item w3-button">Online laundry management System</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">About</a>
      <a href="Login.jsp" class="w3-bar-item w3-button">Log In</a>
    </div>
  </div>
</div>


<br>
<br>
<br>
<br>
<table class="table table-bordered table-striped text-center">
<tr>
	<th colspan="8"> Laundry Oder Details</th>
</tr>
<tr>
	
	<th>Id</th>
	<th>Name</th>
	<th>Address</th>
	<th>Telephone</th>
	<th>NIC</th>
	<th>Amount(kg)</th>
	<th>Due Date</th>
	<th>Return Date</th>
</tr>

<c:forEach var="cus" items="${oderdetail}">

	 	<c:set var="lid" value="${cus.lid}"/>
	 	<c:set var="lname" value="${cus.lname}"/>
	 	<c:set var="laddress" value="${cus.laddress}"/>
	 	<c:set var="lTelephone" value="${cus.lTelephone}"/>
	 	<c:set var="lNIC" value="${cus.lNIC}"/>
	 	<c:set var="lamount" value="${cus.lamount}"/>
		<c:set var="duedate" value="${cus.duedate}"/>
	 	<c:set var="returndate" value="${cus.returndate}"/>
	<tr>
		
		<td>${cus.lid}</td>
		<td>${cus.lname}</td>
		<td>${cus.laddress}</td>
		<td>${cus.lTelephone}</td>
		<td>${cus.lNIC}</td>
		<td>${cus.lamount}</td>
		<td>${cus.duedate}</td>
		<td>${cus.returndate}</td>
	</tr>
		
	</c:forEach> 

</table>
<br>
<h4>Update Oder Details</h4><br>
<%
	String lid =request.getParameter("lid");
	String lname = request.getParameter("lname");
 	String laddress = request.getParameter("laddress");
 	String lTelephone = request.getParameter("lTelephone");
 	String lNIC = request.getParameter("lNIC");
 	String lamount = request.getParameter("lamount");
 	String duedate = request.getParameter("duedate");
 	String returndate = request.getParameter("returndate");

%>

<form action="update" method="post" class="box" >

<table class="table table-bordered table-striped text-center">
<tr>

	<th>ID</th>
	<td><input type="text" name="lid" value="<%= lid%>" ><br></td>
</tr>
<tr>

	<th> Name</th>
	<td><input type="text" name="lname" value="<%= lname%>"><br></td>
</tr>
<tr>

	<th>Address</th>
	<td><input type="text" name="laddress" placeholder="Enter your address" class="form-control" value="<%= laddress%>"><br></td>
</tr>
<tr>

	<th>Telephone number</th>
	<td><input type="text" name="lTelephone" pattern="[0-9]{10}" value="<%= lTelephone%>"><br></td>
</tr>
<tr>

	<th>NIC</th>
	<td><input type="text" name="lNIC"  value="<%= lNIC%>"><br></td>
</tr>
<tr>

	<th>Amount(kg)</th>
	<td><input type="text" name="lamount"  value="<%= lamount%>"><br></td>
</tr>
<tr>

	<th>Date</th>
	<td><input type="date" name="duedate"  value="<%= duedate%>"><br></td>
</tr>
<tr>

	<th>Return Date</th>
	<td><input type="date" name="returndate"  value="<%= returndate%>"><br></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="update details" class="btn btn-secondary"> <br></td>
</tr>
	
</table>

</form>	
<br><br>
<h4>Delete Oder Details</h4>
<br>
<form action="delete" method="post">
<table class="table table-bordered table-striped text-center">
	<tr>
		<th> NIC</th>
		<td><input type="text" name="lNIC" value="<%= lNIC%>" ><br></td>
	</tr>	
	<tr>
		<td colspan="2"> <input type="submit" name="submit" value="delete oder" class="btn btn-secondary"> <br></td>
	</tr>		 
			 
            
</table>		
	</form>



<hr>
<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Online_BiddingSystem</a></p>
</footer>

</body>
</html>