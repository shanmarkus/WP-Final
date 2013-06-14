<%-- 
    Document   : mainmenu
    Created on : May 17, 2013, 3:44:26 PM
    Author     : Shan
--%>


<%@page import="java.util.List"%>
<%@page import="yahoo.srch.ResultType"%>
<%@page import="java.net.URL"%>
<%@page import="javax.xml.bind.JAXBContext"%>
<%@page import="javax.xml.bind.Unmarshaller"%>
<%@page import="yahoo.srch.ResultSet"%>
<%@page import="currencyclient.CurrencyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>

<div class="row">
    <div class="span3">
        <h4 class="span12">Hello <%= session.getAttribute("name")%>!</h4>
    </div>
    <div class="span3 offset6"> 
        <%
            ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
            out.println("Items in cart: " + cart.size());
            out.println("<a href=\"checkout.jsp\">Check out</a>");
        %> 
    </div>

</div>


<div id="myCarousel" class="carousel slide" data-interval="3000">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0"></li>
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

<!--Main Container-->
<div class="row-fluid">

    <div class="span4 one-third-container">
        Convert to Rupiah
        <form action="myServlet" method="post">
            <input type="text" name="input1" class="input-small">
            <input type="submit" name="submit" value="Convert" class="btn">
            <input type="hidden" name="page" value="converterAS">
        </form>
        <h4>
            Rp. <%=session.getAttribute("res")%> ,-
        </h4>
        <br>
        <%
            CurrencyClient a = new CurrencyClient();
            double x = a.RupiahtoUSD("1");
            out.println("<h4>");
            out.println("Current rate this day is Rp." + x);
            out.println("</h4>");
        %>
    </div>
    <div class="span4 one-third-container">
        <a class="twitter-timeline" href="https://twitter.com/shanmarkus" data-widget-id="345433787439673345">Tweets by @shanmarkus</a>
        <script>!function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                if (!d.getElementById(id)) {
                    js = d.createElement(s);
                    js.id = id;
                    js.src = p + "://platform.twitter.com/widgets.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }
            }(document, "script", "twitter-wjs");</script>


    </div>
    <div class="span4 one-third-container">
        <div class="fb-like" data-href="https://www.facebook.com/CryingOnionCorp?ref=ts&amp;fref=ts" data-send="true" data-width="300" data-show-faces="true"></div>
    </div>
</div>

<div class="clearer">

</div>

<!--footer page -->
<div class="row-fluid marginTop20px">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    Lorem 
</div>

<div class="row-fluid marginTop20px">
    <h2>This Is Flash</h2>
    <object type="application/x-shockwave-flash" data="./slideshow/slideshow.swf" width="600" height="250">
        <param name="menu" value="false" />
        <param name="wmode" value="transparent" />
        <param name="flashvars" value="xml=./slideshow/slideshow.xml&amp;dir=./slideshow/" />
        <param name="movie" value="./slideshow/slideshow.swf" />
    </object>
</div>

<hr>

<%@ include file="footer.jsp" %>
