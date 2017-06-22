var app = angular.module("app", [])
app.controller("ProductController", function($scope, $http) {

	$scope.getCart = function(cartId) {
		$scope.cartId = cartId;
		console.log("cartid is " + cartId);
		$http.get('http://localhost:8080/HawaiiAircraftTyres/cart/getCart/'
								+ $scope.cartId).success(function(data) {
					$scope.cart = data
				})
	}

	$scope.addToCart = function(productId) {
		$http.post('http://localhost:8080/HawaiiAircraftTyres/addCartItem/' + productId)
				.success(function() {
					alert('Product successfully added to the cart')
				})
	}

	$scope.removeFromCart = function(cartItemId) {
		console.log('cartitem to be removed is ' + cartItemId);
		$http.put(
				'http://localhost:8080/HawaiiAircraftTyres/cart/removeCartItem/'
						+ cartItemId).success(function() {
			$scope.getCart($scope.cartId)
		})
	}

	$scope.clearCart = function() {
		$http.put(
				'http://localhost:8080/HawaiiAircraftTyres/cart/removeAllCartItems/'
						+ $scope.cartId).success(function() {
			$scope.getCart($scope.cartId)
		})
	}

	$scope.calculateGrandTotal = function() {
		var grandTotal = 0.0;
		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal = grandTotal + $scope.cart.cartItems[i].totalPrice;
		}
		return grandTotal;
	}

})