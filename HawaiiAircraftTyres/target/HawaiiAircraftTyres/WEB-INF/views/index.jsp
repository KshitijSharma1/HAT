<%@include file="./templates/Header.jsp"%>

<!-- Carousel
    ================================================== -->
	<div class="hero-slide">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="resources/images/tyre4.jpg"
						width="device" alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>All Airplane Tyres Available at One Place</h1>
							<p>
								<a class="btn btn-lg btn-primary" role="button" href="<c:url value="/SignUpmodal"/>">Sign up today</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide" src="resources/images/tyre3.jpg"
						alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>The Best in the World</h1>
							<p>
								<a class="btn btn-lg btn-primary" href="range" role="button">Buy
									Now</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="resources/images/tyre8.jpg"
						alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>The Best Engineers Hired From Around The World</h1>
							<!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse Gallery</a></p>-->
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->
	</div>
	</br>

	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container outer-shadow bg-pad">
		<div class="row">
			<div class="span12" style="padding-top: 5px;">
				<center>
					<img src="<c:url value="/resources/images/logo3.JPG"/>">
				</center>
				<center>
					<h2 style="font-weight: 200 !important;">Welcome to Hawaii
						Aircraft Tyres</h2>
				</center>
				</br>
				<center>
					<p>
						For more than 100 years <strong>Aircraft Tyres</strong> has
						represented excellence in the aviation industry and is today the
						world's only specialist manufacturer and retreader of aircraft
						tyres.
					</p>
				</center>
				<center>
					<p>
						With over 500 approvals, <strong> Hawaii Aircraft Tyres</strong>
						can supply tyres for over 300 different types of aircraft in the
						civil and military aviation market. The organisation is committed
						to providing <strong>airplane operators</strong> around the globe
						with new or retreaded airplane tyres of the highest quality and
						customer service of the highest standard.
					</p>
				</center>
				<hr style="width: 100%; margin: 30px auto 5px auto" />
			</div>
		</div>

		</br> </br> </br>



		<div class="row placeholders">
			<div class="row">


				<div class="col-md-4" class="col-sm-4" class="col-lg-4"
					class="col-xs-4">
					<center>
						<a href="<c:url value="/range"/>"> <img class="img-circle"
							src="<c:url value="/resources/images/tyre7.jpg"/>"
							alt="Generic placeholder thumbnail" width="200" height="200"></a>
					</center>
					<h2>
						<center>
							<a href="<c:url value="/range"/>">Our Range</a>
						</center>
					</h2>
					<center>
						<p>A wide range of tyres available from smallest plane like
							cesna to airbus and boeing. We also deal in Military and Fighter
							planes.</p>
				</div>
				<!-- /.col-md-3 -->

				<div class="col-md-4" class="col-sm-4" class="col-lg-4"
					class="col-xs-4">
					<center>
						<a href="<c:url value="/technical"/>"> <img class="img-circle"
							src="<c:url value="/resources/images/tyre6.jpg"/>"
							alt="Generic placeholder thumbnail" width="200" height="200"></a>
					</center>
					<h2>
						<a href="<c:url value="/technical"/>"><center>Training and Technical
								Support</center></a>
					</h2>
					<center>
						<p>Find technical support information such as aircraft tire
							ratings, wear patterns and best practice to optimise aircraft
							tire life.</p>
				</div>
				<!-- /.col-md-3-->

				<div class="col-md-4" class="col-sm-4" class="col-lg-4"
					class="col-xs-4">
					<center>
						<a href="<c:url value="/machinery"/>"> <img class="img-circle"
							src="<c:url value="/resources/images/tyre5.jpg"/>" alt="Generic placeholder image"
							width="200" height="200"></a>
					</center>
					<h2>
						<a href="<c:url value="/machinery"/>"><center>Machinery and Working</center></a>
					</h2>
					<center>
						<p>We let you know how we make it,along with detailed
							description.</p>
						<div class="col-md-1"></div>
				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- row placeholders-->
		</br> </br>



	</div>
	<!-- /.container -->

	<%@include file="./templates/Footer.jsp"%>


