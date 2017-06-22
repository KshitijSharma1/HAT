<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>About Us</title>


<link rel="stylesheet" type="text/css" href="resources/css/Style.css">
<link rel="icon" href="G:\project\bootstrap\images\icon.ico">
<!--<link href="C:\Users\kcom\Desktop\Project\Bootstrap\css\bootstrap.min.css" rel="stylesheet">
    <script src="C:\Users\kcom\Desktop\Project\Bootstrap\js\bootstrap.min.js"></script>-->
<link href="carousel.css" rel="stylesheet">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	color: #FFF;
	border-radius: 0px;
}

.jumbotron-sm {
	padding-top: 24px;
	padding-bottom: 24px;
}

.jumbotron small {
	color: #FFF;
}

.h1 small {
	font-size: 24px;
}
</style>

</head>
<body>
<%@include file="./templates/Header.jsp" %>

	<div class="hero-slide">
	<div class="box">


		<div class="jumbotron jumbotron-sm">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-lg-12">
						<h1>
							About <b>HAT Technologies</b>
						</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="container" id="style">
		</br> Hawaii Aircraft Tyres is a tyre-manufacturing company in Gurgaon,
		India, that claims to be India's only specialist aircraft tyre
		manufacturer and retreader, for aircraft landing gear (also known as
		undercarriage).</br>
		</br> Hawaii manufactures new bias and new radial aircraft tyres. It
		retreads all manufacturers bias tyres and radial tyres. For a
		description of the various technologies of tyres please visit the <a
			href="Technical.jsp">technical support section</a><br />

		<hr style="width: 100%; margin: 30px auto 5px auto" />

		</br>
		</br>


		<div class="well" class="col-md-4" class="col-sm-4" class="col-lg-4"
			class="col-xs-4">
			<div class="thumbnail">
				<a href="#" target="_blank"> <img
					src="resources/images/tyrebadalna.jpg" alt="Nature"
					style="width: 100%;">

				</a>
			</div>

			<div>Aircraft tires work under extreme conditions, carrying up
				to 340 tons and accelerating at over 250km/hour at takeoff, in
				addition to enduring varied environmental stress when in flight and
				taxiing. With more than 70 years of experience and insistence on
				quality in aircraft tire manufacturing, HAT ensures that its
				aircraft tires remain among most trusted brands in the aviation
				industry.</div>

		</div>
		</br>

		<hr style="width: 100%; margin: 30px auto 5px auto" />

		</br>
		</br>
		</br>

		<div class="well" class="col-md-4" class="col-sm-4" class="col-lg-4"
			class="col-xs-4">
			<div class="thumbnail">
				<a href="#" target="_blank"> <img
					src="resources/images/bharatkatyre.jpg" alt="Nature"
					style="width: 100%;">

				</a>
			</div>

			<div>HAT's commitment to efficient, high-quality service for
				aircraft is backed by our three sales offices and four retreading
				plants in Maharashtra, Delhi and Mumbai as well as our head office,
				Technical Center and new tire & retreading plants in Gurgaon. Our
				company also maintains distribution depots in strategic locations in
				India.</div>

		</div>
	</div>

	</br>

	<%@include file="./templates/Footer.jsp" %>

</body>
</html>