<%-- 
    Document   : Home Page
    Author     : Dina
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="Group4">
    <link rel="icon" href="<c:url value="/resources/images/music.ico" />">
    
    <title>Soundbite</title>


    <%
        Date date = new Date();
    %>

    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/style/carousel.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css" />" >


    </head>
    <!-- NAVBAR
    ================================================== -->
    <body>
        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- <a class="navbar-brand" href="login.jsp">Log In</a>-->
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="<c:url value="home" />">Home</a></li>
                                <li><a href="<c:url value="store" />">Collection</a></li>
                                <li><a href="<c:url value="profile" />">View Profile</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

            </div>
        </div>


        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide" src="<c:url value="/resources/images/discover.jpeg" />" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Discover new music!</h1>
                            <p>What will inspire you today?</p>
                            <p><a class="btn btn-lg btn-primary" href="<c:url value="login" />" role="button">Log in</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="<c:url value="/resources/images/shop.jpeg" />" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Visit our collection.</h1>
                            <p>Unique user uploads!</p>
                            <p><a class="btn btn-lg btn-primary" href="<c:url value="store" />" role="button">Browse</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="<c:url value="/resources/images/board.jpeg" />" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Upload your own creations.</h1>
                            <p>Create a personalised artist page!</p>
                            <p><a class="btn btn-lg btn-primary" href="#INFORMATION" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/featured2.jpeg" />" alt="Feature" width="140" height="140">
                    <h2>Featured Artists</h2>
                    <p>Listen and discover.</p>
                    <p><a class="btn btn-default" href="<c:url value="construction" />" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/sales.jpg" />" alt="Deals" width="140" height="140">
                    <h2>See our latest news!</h2>
                    <p>Read our announcements.</p>
                    <p><a class="btn btn-default" href="<c:url value="construction" />" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/join.jpeg" />" alt="Join Us" width="140" height="140">
                    <h2>Join the community!</h2>
                    <p>Post your views.</p>
                    <p><a class="btn btn-default" href="<c:url value="construction" />" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->


            <!-- FOOTER -->
            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2018 - Group 4 &middot;</p>
                <p><%= date%> </p>
            </footer>

        </div><!-- /.container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
    
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />"></script>
        <script>window.jQuery || document.write('<script src="<c:url value="/resources/javascript/jquery-3.2.1.min.js" />"><\/script>')</script>
        <script src="<c:url value="/resources/javascript/bootstrap.min.js" />"></script>
    </body>
</html>

