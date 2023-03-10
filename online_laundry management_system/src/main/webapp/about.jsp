<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>about</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="${pageContext.request.contextPath}/images/laun1.png" class="w3-round w3-image w3-opacity-min" alt="laundry pic" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">About</h1><br>
      <h5 class="w3-center">  Online laundry management System</h5>
      <p class="w3-large">We are here for make your day today life easy .
Our services 
             * Pick up laundry items from your doorstep
             *Wash 
             *Dry cleaning 
             *Deliver oder to your door step quickly and safely 

Thats your turn for place and oder . For any complain or further detail contact us,</p>
    </div>
  </div>

  <hr>

  
<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Online_BiddingSystem</a></p>
</footer>



</body>
</html>