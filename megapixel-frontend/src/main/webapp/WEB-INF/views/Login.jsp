<%@ include file="template/Header.jsp"%>

<div class="section" style="padding-bottom:300px;padding-top:100px">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6">
                                        <form class="form-horizontal" method="POST" action="<c:url value='/Login'/>">
                                            <div class="form-group">
                                                <div class="col-sm-2">
                                                    <label class="control-label">Username</label>
                                                </div>
                                                <div class="col-sm-10">
                                                    <input type="text" id="inputUsername" placeholder="Username" class="form-control" name="username">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-2">
                                                    <label class="control-label">Password</label>
                                                </div>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-default">Sign in</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<%@ include file="template/Footer.jsp"%>