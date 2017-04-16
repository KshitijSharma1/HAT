<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hawaii Airplane Tyres</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="resources/css/Style.css">
<link rel="icon" href="<c:url value="/resources/images/icon.ico"/>">

<!--<link rel="stylesheet" href="C:\Users\kcom\Desktop\Project\Bootstrap\css\bootstrap.min.css" >
    <script src="C:\Users\kcom\Desktop\Project\Bootstrap\js\bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">-->


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<%@include file="/WEB-INF/views/Login.jsp"%>
	<%@include file="/WEB-INF/views/SignUp.jsp"%>

<style>
footer {
	background: #333;
	color: #eee;
	font-size: 11px;
	padding: 20px;
	width: device-width;
}

ul.unstyled {
	list-style: none;
	padding: 0;
}
</style>
</head>
<body>

<div class="navbar-wrapper">
      

        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">HAWAII AIRPLANE TYRES</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
               <li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span> About</a></li>
                <li><a href="contactus"><span class="glyphicon glyphicon-phone"></span> Contact</a></li>
                <li><a href="addProduct">Add Product</a></li>
              </ul>
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="" data-toggle="modal" data-target="#loginmodal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="#" data-toggle="modal" data-target="#SignUpmodal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			  </ul>
            </div>
          </div>
        </nav>
	  
    </div>
</br>
</br>
</br>