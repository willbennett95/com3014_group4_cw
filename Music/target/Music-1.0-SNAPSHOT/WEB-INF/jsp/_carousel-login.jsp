<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/style/carousel.css" />" >
    </head>
    <body>
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
                            <p><a class="btn btn-lg btn-primary" href="<c:url value="profile" />" role="button">Profile</a></p>
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
                            <p><a class="btn btn-lg btn-primary" href="upload/audio" role="button">Upload</a></p>
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
    </body>
</html>
