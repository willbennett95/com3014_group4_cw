<%-- 
    Document   : Log-in
    Author     : Dina
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>

    <title>Log In</title>
    <% 
        Date date = new Date();
        %>
    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/style/signin.css" />" >
    </head>
    <body>
        <jsp:include page="_navbar.jsp"/>
        
    <!-- Sign-in form
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
        <div class="container">
      <!-- Three columns of text below the carousel -->
     <form method="POST" action="/Music/login" class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
        </div>
        
        <p class="register">Don't have an account? Register <a href="register">here</a>!</p>
        <p class="register">Or <a href="#"> sign-in with Facebook</a>!</p>
       
      <!-- FOOTER -->
      <footer>
          <p class="pull-right"><a href="#">Back to top</a></p>
          <p>&copy; 2018 - Group 4 &middot;</p>
        <p><%= date %> </p>
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