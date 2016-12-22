<%@ include file="template/Header.jsp"%>

<c:url var="addAction" value="/ProductAdmin/add"></c:url>

<div class="section">
	<div class="container">
	
	
		<div class="row">
			<div class="col-md-8 center">
				<h1>Add New Product</h1>
				<form:form class="form-horizontal" role="form" action="${addAction}"
					commandName="product" enctype="multipart/form-data">

					<c:if test="${!empty product.productName}">
						<div class="form-group">
							<div class="col-sm-10">
								<form:input class="form-control" readonly="true" path="productId"
									disabled="true" />
								<form:hidden path="productId" />
							</div>
						</div>
					</c:if>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="brand"
								placeholder="Brand" />
							<form:errors path="brand" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="desc"
								placeholder="Description" />
							<form:errors path="desc" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="productName"
								placeholder="Name" />
							<form:errors path="productName" cssClass=" error"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="price"
								placeholder="Price" />
							<form:errors path="price" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="category"
								placeholder="Category" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="file" class="form-control" path="image" />
						</div>
					</div>
					<c:if test="${!empty product.productName}">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Edit
									Product</button>
							</div>
						</div>
					</c:if>

					<c:if test="${empty product.productName}">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Add
									Product</button>
							</div>
						</div>
					</c:if>
				</form:form>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>Current Products Enlisted</h1>
				<c:if test="${!empty listProducts}">
					<table class="table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Brand</th>
								<th>Description</th>
								<th>Name</th>
								<th>Price</th>
								<th>Category</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listProducts}" var="product">
								<tr>
									<td>${product.productId}</td>
									<td>${product.brand}</td>
									<td>${product.desc}</td>
									<td>${product.productName}</td>
									<td>${product.price}</td>
									<td>${product.category}</td>

									<td><a href="<c:url value='/edit/${product.productId}' />">Edit</a></td>
									<td><a href="<c:url value='/remove/${product.productId}' />">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</div>
</div>

<%@ include file="template/Footer.jsp"%>