<%@ include file="/WEB-INF/views/template/Header.jsp"%>


<br />
<div class="section">
	<div class="container" ng-app="addToCartApp" ng-controller="addToCartCtrl" ng-init="retrieveCart(${order.cart.cartId})">



	

		<div class="bs-component">



			

	<form:form>
		<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1>Shipping Address</h1>
            <ul class="lead list-group">
              <li class="list-group-item">Name: ${order.cart.user.username}</li>
              <li class="list-group-item">Address: ${order.cart.user.shippingAddress.address}</li>
              <li class="list-group-item">City: ${order.cart.user.shippingAddress.city}</li>
              <li class="list-group-item">Pin: ${order.cart.user.shippingAddress.zipCode}</li>
              <li class="list-group-item">Mobile No: ${order.cart.user.shippingAddress.mobileNo}</li>
            </ul>
          </div>
          <div class="col-md-6">
            <h3>Products</h3>
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                 
						<th ng-click="sort('product.productName')">Name <span class="glyphicon sort-icon" ng-show="sortKey=='productName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('product.brand')">Product Brand <span class="glyphicon sort-icon" ng-show="sortKey=='brand'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('product.price')">Price <span class="glyphicon sort-icon" ng-show="sortKey=='price'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('quantity')">Quantity <span class="glyphicon sort-icon" ng-show="sortKey=='quantity'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('totalPrice')">Total price <span class="glyphicon sort-icon" ng-show="sortKey=='itemTotal'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th></th>

					</tr>
				</thead>
				<tbody>
				
					<tr ng-repeat="item in cart.items|orderBy:sortKey:reverse|filter:search">
						<td>{{item.product.productName}}</td>
						<td>{{item.product.brand}}</td>
						<td>{{item.product.price}}</td>
						<td>{{item.quantity}}</td>
						<td>{{item.itemTotal}}</td>
	</tr>
					<tr>
					<td></td>
					<td></td>
					<td>Total:</td>
					<td>{{GrandTotalOfItems() | currency: "Rs."}}</td>
					<td><input type="submit" class="btn btn-success" name="_eventId_orderConfirmed" value="Next"></td>
					<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">
					</tr>
				</tbody>

              
            </table>
          </div>
        </div>
      </div>
    </div>
</form:form>
		</div>
	</div>
</div>
</div>
</div>
</div>
<script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>

<%@ include file="/WEB-INF/views/template/Footer.jsp"%>