<%@ include file="template/Header.jsp"%>


<div class="section" style="padding-top:100px;padding-bottom:300px">
	<div class="container" ng-app="addToCartApp">


		
		

		

		<div class="bs-component" ng-controller="addToCartCtrl" ng-init="retrieveCart(${user.cart.cartId})">



			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->

						<th>Name</th>
						<th>Brand</th>
						<th>price</th>
						<th>Quantity</th>
						<th>Item Total</th>
						

						<th></th>

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="item in cart.items">
						<td>{{item.product.productName}}</td>
						<td>{{item.product.brand}}</td>
						<td>{{item.product.price}}</td>
						<td>{{item.quantity}}</td>
						<td>{{item.itemTotal}}</td>

						<!-- Info button that maps to the ProductDetails view. Required Info for ProductDetails view is passed through request parameters -->
						<!-- ============================================================================================== -->

						<td><a
							href="#" ng-click="removeItemFromCart(item.itemId)"><i class="fa fa-times" aria-hidden="true"></i></a></td>
					</tr>
					<tr>
					<td></td>
					<td></td>
					<td>Total:</td>
					<td>{{GrandTotalOfItems()}}</td>
						<td><a href="<c:url value='/order/${user.cart.cartId}'/>" class="btn btn-success">Checkout</a></td>
						
					</tr>
				</tbody>
			</table>

<script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
		</div>
	</div>
</div>
</div>
</div>
</div>



<%@ include file="template/Footer.jsp"%>