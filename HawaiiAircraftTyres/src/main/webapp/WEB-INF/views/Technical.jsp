<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Technical Support</title> 
	
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
          <img class="first-slide" src="resources/images/Technical.jpg" width="device" alt="First slide">
          
        </div>
		</div>
       </div>
    </div><!-- /.carousel -->
   
	
	<div class="box">
	
	<h1 style="color: White; margin-left:40px;"> The Training and Technical Support</h1>
	</div>
	
	<div class="container" id="style">
	</br>
	</br>
	The lifespan of a tyre can be extended by following proper tyre care and maintenance procedures.</br>
    The technical support pages should be read in conjunction with the Hawaii Technical Manual (DM1172) that can be downloaded from this website.</br></br>

To contact Hawaii Technical support through the website for technical enquries or to arrange a tyre inspection:<a href="#" >Contact Technical Support</a></br>
Download Hawaii Technical Manual DM1172: <a href="#">Download DM1172</a></br>
Understand the construction aircraft tyres:<a href="#">Tyre Technology</a></br>
Review engineering concepts linked to aircraft tyres:<a href="#">Engineering Data</a></br>
Identify the meaning of the marks on the tyre sidewall:<a href="#">Aircraft Tyre Markings</a></br>
Review the meaning of various ratings of aircraft tyres: <a href="#">Aircraft Tyre Ratings</a></br>
Identify and understand different tyre wear patterns: <a href="#">Tyre Wear Guide</a></br>
Understand how tyre life can be maximised: <a href="#">Best Practice</a></br></br>
 
   
</div>
<!-- FOOTER -->
       <br/></br>      
     
       
       <%@include file="./templates/Footer.jsp" %>

</body>
</html>