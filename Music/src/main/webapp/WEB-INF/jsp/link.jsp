<%-- 
    Document   : Generic Page To Eliminate Dead Links
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
    
    <title>Under Construction</title>
    <%
        Date date = new Date();
    %>
    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/style/deadlink.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/carousel.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css" />" >
    </head>
    <!-- NAVBAR
    ================================================== -->
    <body>
        <jsp:include page="_navbar.jsp"/>
                
         <!-- Content
    ================================================== -->           
        <div class="container marketing">
            <div class="container">
                <div class="site-wrapper">
                    <div class="site-wrapper-inner">
                      <div class="cover-container">
                        <main role="main" class="inner cover">
                          <h1 class="cover-heading">Page Under Construction.</h1>
                          <p class="lead">Featured Artists, Community Forums and other exciting things coming soon!</p>
                        </main>
                      </div>
                    </div>
                  </div>
            </div> <!-- container -->
        </div> <!-- container marketing -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="https://code.jquery.com/jquery-3.2.1.slim.min.js" />"></script>
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />"></script>
    <script>window.jQuery || document.write('<script src="<c:url value="/resources/javascript/jquery-slim.min.js" />"><\/script>')</script>
    <script src="<c:url value="/resources/javascript/popper.min.js" />"></script>
    <script src="<c:url value="/resources/javascript/bootstrap.min.js" />"></script>
    </body>
</html>

