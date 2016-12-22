 <%@ include file="template/Header.jsp"%>
 <div class="cover">
            <div class="carousel slide" id="carousel-example" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="#"><img src="resources/img/img2.jpeg" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href="#"><img class="img-responsive" src="resources/img/pedroquintela.jpg"></a>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i> </a>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12"></div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-center">Featured Product</h1>
                        <p></p>
                        <p>Canon EOS 70D</p>
                    </div>
                    <div class="col-md-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/aCY1IfU29I8" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <a href="<c:url value='/Products/Camera' />"><img src="resources/img/camera2.jpg" class="img-responsive"></a>
                        <h2>Camera</h2>
                    </div>
                    <div class="col-md-4">
                        <a href="<c:url value='/Products/Lens' />"><img src="resources/img/lens.jpg" class="img-responsive"></a>
                        <h2>Lens</h2>
                    </div>
                    <div class="col-md-4">
                        <a href="<c:url value='/Product/Accessories' />"><img src="resources/img/accessories.jpg" class="img-responsive"></a>
                        <h2>Accessories</h2>
                    </div>
                </div>
            </div>
        </div>
        
<%@ include file="template/Footer.jsp"%>        
        
