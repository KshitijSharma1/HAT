<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Our Range</title> 
	
	<link rel="stylesheet" type="text/css" href="resources/css/Style.css">
	<link rel="icon" href="G:\project\bootstrap\images\icon.ico">
	<link href="carousel.css" rel="stylesheet">
	
	<!--<link href="C:\Users\kcom\Desktop\Project\Bootstrap\css\bootstrap.min.css" rel="stylesheet">
    <script src="C:\Users\kcom\Desktop\Project\Bootstrap\js\bootstrap.min.js"></script>-->
    
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
footer{
	background: #333;
	color: #eee;
	font-size: 11px;
	padding: 20px;
	width: device-width;
}
ul.unstyled{
	list-style: none;
	padding: 0;
}
.box{
 border: #1569C7 1px solid;
 background-color: #1569C7;
}

#style{
border: black 1px solid;
border-shadow:0px 6px 10px rgba(50, 50, 50, 0.52);
    border-left: 1px solid #dddddd;
	    border-right: 1px solid #cccccc;

}
</style>
</head>
<body>
<%@include file="Login.jsp" %>
<%@include file="SignUp.jsp" %>
<%@include file="./templates/Header.jsp" %>



<div class="hero-slide">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="resources/images/Range.jpg" width="device" alt="First slide">
          
        </div>
		</div>
       </div>
    </div><!-- /.carousel -->
   
	
	<div class="box">
	
	<h1 style="color: White; margin-left:40px;"> Search Different Range of Tyres</h1>
	</div>
	<div class="container" id="style">
	</br>
	</br>
	Hawaii Aircraft Tyres is focused on providing constructors and operators alike with a range of high quality products backed by an unrivaled level of customer service - throughout the world.</br></br>

Hawaii manufactures new bias and new radial aircraft tyres. It retreads all manufacturers bias tyres and radial tyres. For a description of the various technologies of tyres please visit the <a href="technical">technical support section</a><br/></br>

Click the appropriate link below to start searching.</br></br>

<a href="#">Search by Aircraft Manufacturer and Aircraft Type</a></br>
<a href="#">Search by Desired Tyre Part Number</a></br>
<a href="#">Search by all or part of Tyre Size</a> (Not all of the tyre size is required)</br></br>
</br>
 
   
</div>
<!-- FOOTER -->
       <br/></br>      
     
       
     <%@include file="./templates/Footer.jsp" %>
</body>
</html>