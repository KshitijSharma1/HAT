<%@ include file="./templates/Header.jsp"%>
<style>
body {
	padding-top: 80px;
}

.hero-slide {
	margin-top: 45px;
}

ul.unstyled {
	list-style: none;
	padding: 0;
}
</style>
<body ng-app="app" ng-controller="ProductController">
    <div class="well">
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>
					<b>Tyre Details</b>
				</h1>

				<p class="lead">Here is the detailed information of the Aircraft Tyre choosen:</p>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<c:url var="src" value="/resources/images/${product.id }.jpg"></c:url>
						<img class="img-thumbnail" src="${src }" alt="image" style="width: 100%" />
						<%-- <img src="<c:url value="/resources/Images/${product.id}.jpg" />" alt="image" style="width:100%"/> --%>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<h1>${product.name}</h1>
						<h2>${product.description}</h2>
						
					</br>
						<p>Rs ${product.price}</p>
						
						<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
							<a href="#" class="btn btn-warning btn-lg"
								ng-click="addToCart(${product.id })"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Add to Cart

							</a>
						</c:if>
						
						
						<a href="<c:url value="/prodlist" />" class="btn btn-danger btn-lg" >View Another Tyre</a> <br />
					</div>

				</div>

			</div>

		</div>
	</div>
    </div>
	<br />
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
	</body>
	
	<%@ include file="./templates/Footer.jsp"%>