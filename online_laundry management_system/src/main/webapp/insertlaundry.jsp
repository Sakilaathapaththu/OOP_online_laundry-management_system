<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>insert laundry item</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

 <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .box {
   
    padding: 40px;
     background:black;
    margin-right:20%;
    margin-left:20%;
    
    text-align: center;
    transition: 0.25s;
    
}
	.box input[type="text"],
.box input[type="date"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 250px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s
}
.box h1 {
    color: white;
    text-transform: uppercase;
    font-weight: 500
}

.box input[type="text"]:focus,
.box input[type="date"]:focus {
    width: 300px;
    border-color: white;
}

.box input[type="submit"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.box input[type="submit"]:hover {
    background: #2ecc71
}
.c{
color: white;
}
</style>


</head>
<body>

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


  <hr>

  
<!-- End page content -->
<br>

<center><h3>place an order</h3></center>
<form action="insert" method="post" class="box" >
<div class="form-group">
	<label for="name" class="c">Name</label>
	<input type="text" name="lname" placeholder="Enter your name" class="form-control" required><br>
</div>
<div class="form-group">
	<label for="adress" class="c">Address</label>
	<input type="text" name="laddress" placeholder="Enter your address" class="form-control" required><br>
</div>
<div class="form-group">
	<label for="telephone" class="c">Telephone number</label>
	<input type="text" name="lTelephone" placeholder="Enter your telephone number" class="form-control" pattern="[0-9]{10}" required><br>
</div>	
<div class="form-group">
	<label for="NIC" class="c">NIC</label>
	<input type="text" name="lNIC" placeholder="Enter your NIC number" class="form-control" pattern="[0-9]{12}" required><br>
</div>
<div class="form-group">
	<label for="amount" class="c">Amount</label>
	<input type="text" name="lamount"  placeholder="Kg" class="form-control" required><br>
</div>
<div class="form-group">
	<label for="date" class="c"> Date</label>
	<input type="date" name="duedate"  class="form-control"  required><br>
</div>
<div class="form-group">
	<label for="return date" class="c">Return Date</label>
	<input type="date" name="returndate"  class="form-control"  required><br>
</div>

	<input type="submit" name="submit" value="Submit Oder" class="btn btn-primary"> <br>
		
	
</form>	

<br><br>
<form action="view" method="post" class="box">
<input type="submit" name="submit" value="view oder detatis and update" class="btn btn-secondary btn-lg">

</form>





<br>
<hr>
<!-- Footer -->
<div>
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Online_BiddingSystem</a></p>
</footer>

</div>


</body>
</html>