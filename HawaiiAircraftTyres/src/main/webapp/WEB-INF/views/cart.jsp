<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ include file="templates/Header.jsp"%>
<style>
body {
	/* background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); */
	padding-top: 100px;
	font-size: 14px;
	background-color: #f2f6f9;
}

.minicart {
	background: grey;
	background-position: -156px 11px;
	background-repeat: no-repeat;
	width: 40px;
	height: 50px;
	padding-right: 32px;
}

.navbar1 {
	background-color: #4ea6bc;
	padding: 20px;
	border-radius: 0;
	margin: 0;
}

.navbar-brand {
	color: #fff;
	font-family: Open Sans, sans-serif;
	padding-left: 32px;
}

.navbar-brand:hover {
	color: #fff;
}

.container.text-center {
	padding: 0 32px;
}

.col-md-5.col-sm-12 {
	padding: 0;
}

.col-md-5.col-sm-12 h1 {
	color: #595c5f;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 30px;
	text-align: left;
}

.bigcart {
	background: url(/HomeDecor/resources/Images/sprite.png);
	background-position: 0px 11px;
	background-repeat: no-repeat;
	width: 155px;
	height: 120px;
	margin: 0 0 40px 60px;
}

.columnCaptions {
	color: #7e93a7;
	font-size: 12px;
	text-transform: uppercase;
	padding: 0;
	box-shadow: 0 0 0;
	background-color: #f2f6f9;
}

.col-md-7 {
	margin-bottom: 72px;
}

 
</style>
<body>
	<!-- <nav class="navbar1">
			<div class="container">
				<a class="navbar-brand" href="#">Your online store</a>
				<div class="navbar-right">
					<div class="container minicart"></div>
				</div>
			</div>
		</nav> -->
	<div ng-app="app" ng-controller="ProductController">
		<div ng-init="getCart(${cartId})">
			 
			<div class="container">
				<div class="col-md-5">
					<div class="container text-center">
						<div class="col-md-5 col-sm-12">
							<div class="bigcart"></div>
							<h1>Your shopping cart</h1>
						</div>
					</div>
				</div>

				
				 <div class="col-md-4">
				<a href="#" ng-click="clearCart(${cartItem.cartItemId})" class="btn btn-danger"> <span
					class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
				</a>
				</div>
				 <div class="col-md-3">
				<a href="<spring:url value="/order/${cartId}" />" class="btn btn-success ">
					<span class="glyphicon glyphicon-shopping-cart"> </span>Check out
				</a>
				 </div>
			
				<!-- <h1>Your Cart</h1> -->
				<%-- <a href="#" ng-click="clearCart(${cartItem.cartItemId})"> <span
					class="glyphicon glyphicon-remove-sign"></span>Clear Cart
				</a> 
				<a href="<c:url value="/order/${cartId}"></c:url>"
					class="btn btn-success pull-right">Check Out 
					</a> --%>
				<div class="table-reponsive">
					<div class="col-md-5"></div>
					<div class="col-md-7  text-left">
						<table class="table table-hover">
							<thead>
								<tr class="columnCaptions">
									<th></th>
									<th>Item</th>
									<th>Qty</th>
									<th>Price</th>
									<th>Total:</th>
								</tr>
							</thead>

							<tr ng-repeat="cartItem in cart.cartItems">
								<td><c:url var="src"
										value="/resources/Images/{{cartItem.product.id}}.jpg"></c:url>
									<img class="img-thumbnail" src="${src }" width="120"
									height="120" /></td>
								<td>{{cartItem.product.name}}</td>
								<td><!-- <button class="btn btn-success" type="button">+</button> -->
									{{cartItem.quantity}}
									<!-- <button class="btn btn-inverse" type="button">-</button></td> -->
								<td>{{cartItem.product.price}}</td>
								<td>{{cartItem.totalPrice}}</td>
								<td><a href="#" class="label label-danger"
									ng-click="removeFromCart(cartItem.cartItemId)"> <span
										class="glyphicon glyphicon-remove">remove</span>
								</a></td>

							</tr>

						</table>
						<h4>Total Price : <span class="text-muted">Rs. {{calculateGrandTotal()}}</span></h4>


					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
	<%-- <%@ include file="footer.jsp"%> --%>