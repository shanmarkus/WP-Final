<%-- 
    Document   : mainmenu
    Created on : May 17, 2013, 3:44:26 PM
    Author     : Shan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Carousel items -->
    <div class="carousel-inner">
        <div class="active item">
            <img src="image/2.jpg">
            <div class="carousel-caption">
                <h4>Computer</h4>
                <p>We almost have almost your IT needs.</p>
            </div>
        </div>
        <div class="item">
            <img src="image/3.jpg">
            <div class="carousel-caption">
                <h4>Our Store</h4>
                <p>Clean and nice store.</p>
            </div>
        </div>
        <div class="item">
            <img src="image/4.png">
            <div class="carousel-caption">
                <h4>Computer Mod</h4>
                <p>We also give an options for computer mods.</p>
            </div>
        </div>
    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>

<h1>HELLOO WORLDD</h1>

<!-- Javascript -->
<script type="text/javascript">
    <jsp:include page="js/jquery.js" />
    <jsp:include page="js/bootstrap.js" />
</script>       
</body>
</html>
