<%@ include file="template/Header.jsp" %>



<div class="section">
	<div class="container" ng-app = "addToCartApp">
		
		<h1>${product.productName }</h1>
		<div class="row">

			<div class="col-md-6">
				<img src="<c:url value='/resources/img/${product.productId}.jpg' />"
					class="img-responsive">
			</div>
			<div class="col-md-6" ng-controller="addToCartCtrl">
				<ul>

					<!-- Showing values taken from the request parameters -->
					<!-- ============================================================================================== -->

					<%-- <li>Name:"${param.name}"</li> --%>
					<li><h4>Description:</h4>${product.desc }</li>
					<li><h4>Brand:</h4>${product.brand}</li>
					<li><h4>Price:</h4>${product.price }</li>
					
					
					<a class="btn btn-primary" href="<c:url value='/AddToCart/${product.productId}'/>">Add to
						Cart</a>
						
					

				</ul>


			</div>

		</div>
	</div>
</div>


 <%@ include file="template/Footer.jsp" %>