<%@ include file="/WEB-INF/views/template/Header.jsp"%>

<div class="section">
      <div class="container">
      <form:form commandName="order.cart.user">
      <div class="container">
      <h1>Shipping Address</h1>
      
      <div class="form-group">
        <label class="control-label">Address</label>
        <form:input class="form-control" path="shippingAddress.address" placeholder="Enter Address" />
      </div>
      <div class="form-group">
        <label class="control-label">City</label>
        <form:input class="form-control" path="shippingAddress.city" type="text" placeholder="Enter City" />
      </div>
      <div class="form-group">
        <label class="control-label">Zip</label>
        <form:input class="form-control" type="text" path="shippingAddress.zipCode" placeholder="Enter Zip" />
      </div>
      <div class="form-group">
        <label class="control-label">Mobile No</label>
        <form:input class="form-control" type="text" path="shippingAddress.mobileNo" placeholder="Enter Mobile" />
      </div>
      <div class="form-group">
        <a class="btn btn-default">Back</a> 
        <input class="btn btn-success" type="submit" name="_eventId_shippingAddressChecked" value="Next"></a>
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">
      </div>
    </div>
        </form:form>
      </div>
    </div>
    
<%@ include file="/WEB-INF/views/template/Footer.jsp"%>