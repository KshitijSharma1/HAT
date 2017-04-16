<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Contact Us</title> 
	
	
    <link rel="stylesheet" type="text/css" href="resources/css/Style.css">
	<link rel="icon" href="G:\project\bootstrap\images\icon.ico">
	<!--<link href="C:\Users\kcom\Desktop\Project\Bootstrap\css\bootstrap.min.css" rel="stylesheet">
    <script src="C:\Users\kcom\Desktop\Project\Bootstrap\js\bootstrap.min.js"></script>-->
	<link href="carousel.css" rel="stylesheet">
	
	
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

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

.jumbotron {
background: #1569C7;
color:#FFF ;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 24px;
padding-bottom: 24px; }
.jumbotron small {
color: #FFF;
}
.h1 small {
font-size: 24px;
}

</style>
</head>
<body>
<%@include file="Login.jsp" %>
<%@include file="SignUp.jsp" %>
<%@include file="./templates/Header.jsp" %>

<div class="hero-slide">
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1>
                    <b>Contact us</b> </h1>
            </div>
        </div>
    </div>
</div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8" class="col-sm-8" class="col-lg-8" class="col-xs-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6" class="col-sm-6" class="col-lg-6" class="col-xs-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12" class="container">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs" data-toggle="modal" data-target="#myModal">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our Headquarters</legend>
            <address>
                <strong>India, Inc.</strong><br>
                SCO -26,Old Delhi Road,Sector-14<br>
                Gurugram,Haryana,IN 122001<br>
                <abbr title="Phone">
                    P:</abbr>
                +91 4070704
            </address>
            <address>
                <strong>or Mail Us:</strong>
                <a href="mailto:#">HawaiiAirplaneTyres@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>

<!-- FOOTER -->


    <%@include file="./templates/Footer.jsp" %>
</body>
</html>