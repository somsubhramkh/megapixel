<%@ include file="template/Header.jsp"%>

<div class="row">
<c:url var="addAction" value="/user/add"></c:url>
	<div class="section">
		<div class="container">
			<br />
			
			<div class="row">
				<div class="col-md-12">
					<h3 class="text-right">Register With Us:</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img src="<c:url value='/resources/img/megapixel-logo.png'/>" width="300px" class="img-responsive">
				</div>
				<div class="col-md-8">
					<form:form class="form-horizontal" role="form" action="${addAction}" commandName="user" method="post">
						<div class="form-group">
							<div class="col-sm-2">
								<label for="name" class="control-label">Name</label>
							</div>
							<div class="col-sm-10">
								<form:input type="text" path="name" class="form-control" id="inputName"
									placeholder="Enter name" />
									<form:errors path="name" cssClass="error" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<label for="city" class="control-label">City</label>
							</div>
							<div class="col-sm-10">
								<form:input path="city" type="text" class="form-control" id="inputCity"
									placeholder="City" />
									<form:errors path="city" cssClass="error" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-2">
								<label for="username" class="control-label">Username</label>
							</div>
							<div class="col-sm-10">
								<form:input path="username" type="text" class="form-control" id="inputUsername"
									placeholder="Username" />
									<form:errors path="username" cssClass="error" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-2">
								<label for="password" class="control-label">Password</label>
							</div>
							<div class="col-sm-10">
								<form:input path="password" type="password" class="form-control" id="inputPassword"
									placeholder="Password" />
									<form:errors path="password" cssClass="error" />
							</div>
						</div>
							
						
						
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Register</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="template/Footer.jsp"%>