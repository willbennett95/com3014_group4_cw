<%-- 
    Document   : index3
    Created on : 03-Jan-2018, 19:49:07
    Author     : Dina
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Soundbite</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- JavaScript -->

    <% 
        Date date = new Date();
        %>

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
  
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="login.jsp">Log In</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="welcome.jsp">Home</a></li>
                <li><a href="store.jsp">Shop</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                  </ul>
                </li>
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
          <img class="first-slide" src="images/discover.jpeg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Discover new music!</h1>
              <p>What will inspire you today?</p>
              <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Enter!</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/shop.jpeg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Visit our store.</h1>
              <p>See our vast selection!</p>
              <p><a class="btn btn-lg btn-primary" href="store.jsp" role="button">Browse store</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="images/board.jpeg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Upload your own creations.</h1>
              <p>Create a personalised artist page!</p>
              <p><a class="btn btn-lg btn-primary" href="INFORMATION" role="button">Learn more</a></p>
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



      <!-- FOOTER -->
      <footer>
          <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        <p><%= date %> </p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-3.2.1.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

