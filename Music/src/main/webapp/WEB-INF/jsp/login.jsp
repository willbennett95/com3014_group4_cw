<%-- 
    Document   : Log-in
    Author     : Dina
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="icon" href="images/music.ico">

    <title>Log In</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    
    <!-- JavaScript -->

    <% 
        Date date = new Date();
        %>

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet">
    <link href="css/shop.css" rel="stylesheet">

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
              <a class="navbar-brand" href="#">Log In</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="home.jsp">Home</a></li>
                <li><a href="store.jsp">Shop</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
              </ul>

            </div>
          </div>
        </nav>

      </div>
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
    <div class="container marketing">
        <div class="container">
      <!-- Three columns of text below the carousel -->
      
      
     <form name='f' class="form-signin" action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputUser" class="sr-only">Username</label>
        <input type="text" id="inputUser" class="form-control" name='username' placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name='password' placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" value="submit">Sign in</button>
      </form>
        </div>
        
        <p class="register">Don't have an account? Register <a href="register.jsp">here</a>!</p>
        <p class="register">Or <a href="#"> sign-in with Facebook</a>!</p>

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

