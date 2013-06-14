<%-- 
    Document   : index
    Created on : 10 Apr 13, 20:49:34
    Author     : Jason
--%>

<%@page import="currencyclient.Converter"%>
<%@page import="captchas.CaptchasDotNet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

        <!-- CSS -->
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/index.css">
        <link rel="StyleSheet" type="text/css" href="CSS/mainmenu.css">
        <link rel="StyleSheet" type="text/css" href="CSS/main-nav-bar.css">
        <link rel="StyleSheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="StyleSheet" type="text/css" href="CSS/shelf.css">
        <link rel="StyleSheet" type="text/css" href="CSS/general.css">

    </head>
    <body>
        <%
            CaptchasDotNet captchas = new captchas.CaptchasDotNet(request.getSession(true), "demo", "secret");
        %>

        <!--        Sign up Form-->
        <div class="container-fluid topMargin">
            <div class ="row-fluid">
                <!-- Adding padding for top -->
                <div class="span6 offset3">
                    <div class="span12">

                        <div class="row-fluid loginHeader span6 offset3">
                            Login
                        </div>

                        <form action="myServlet" method="post" onsubmit="">
                            <input type="hidden" name="page" value="login">

                            <div class="row-fluid loginMenu">
                                <input type="text" class="span6 offset3" name="username" id="username" placeholder="username">
                            </div>

                            <div class="row-fluid loginMenu">
                                <input type="password" class="span6 offset3" name="password" id="password" placeholder="password">
                            </div>

                            <div class="row-fluid loginFooter">
                                <a class="btn span3 offset3" data-toggle="modal" href="#myModal">Sign Up</a>
                                <input class ="btn span3 login-button" type="submit" value="Login">
                            </div>
                            <div class="marginTop10px"></div>
                            <div class="row-fluid offset3">
                                <a data-toggle="modal" href="#forgetPassModal">forget password</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row-fluid">
            <% Converter a = new Converter();
            a.run();
            %>
        </div>

        <div class="modal fade hide" id="myModal">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">×</button>
                <h3>Please Fill this form</h3>
            </div>
            <form action="myServlet" onsubmit="return validateForm();">
                <div class="modal-body">
                    <div class="container-fluid marginpage">
                        <div class="row-fluid">

                            <input type="hidden" name="page" value="signup">
                            <div class="row-fluid">
                                <div class="span3">
                                    Username
                                </div>
                                <input type="text" class="" name="username" id="username">
                            </div>
                            <div class="row-fluid">
                                <div class="span3">
                                    Password
                                </div>
                                <input type="password" class="" name="password" id="password">
                            </div>
                            <div class="row-fluid">
                                <div class="span3">
                                    name
                                </div>
                                <input type="text" class="" name="name" id="name">
                            </div>
                            <div class="row-fluid">
                                <div class="span3">
                                    Address
                                </div>
                                <input type="text" class="" name="address" id="address">
                            </div>
                            <div class="row-fluid">
                                <div class="span3">
                                    Email Address
                                </div>
                                <input type="text" class="" name="email" id="email">
                            </div>
                            <div class="row-fluid">
                                <div class="span5">
                                    <%= captchas.image()%>
                                </div>
                                <div class="span4">
                                    <input type="text" name="captcha" id="captcha" style="width: 100%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <input type="submit" class="btn" value="Submit">
                    <input type="button" href="#" class="btn" data-dismiss="modal" value="Cancel">
                </div>
            </form>
        </div>

        <div class="modal fade hide" id="forgetPassModal">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">×</button>
                <h3>Please input your username</h3>
            </div>
            <form action="myServlet" method=post"">
                <div class="modal-body">
                    <div class="container-fluid marginpage">
                        <div class="row-fluid">
                            <input type="hidden" name="page" value="forgetpassword">
                            <div class="row-fluid">
                                <div class="span3">
                                    Username
                                </div>
                                <input type="text" class="" name="username" id="username">
                            </div>
                        </div>
                    </div>
                </div>

        <div class="modal-footer">
            <input type="submit" class="btn" value="Submit">
            <input type="button" href="#" class="btn" data-dismiss="modal" value="Cancel">
        </div>
    </form>
</div>

<!-- SCRIPT !!!  -->
<script type="text/javascript">
    <jsp:include page="js/jquery.js" />
    <jsp:include page="js/bootstrap.js" />
    <jsp:include page="js/myJs.js" />
</script>       
</body>
</html>