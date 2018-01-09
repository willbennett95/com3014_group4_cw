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
        <title>Soundbite</title>
    <%
        Date date = new Date();
    %>
    </head>
    <body>
        <jsp:include page="_navbar-login.jsp"/>
        <jsp:include page="_carousel-login.jsp"/>


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/featured2.jpeg" />" alt="Feature" width="140" height="140">
                    <h2>Featured Artists</h2>
                    <p>Description.</p>
                    <p><a class="btn btn-default" href="<c:url value="construction" />" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/sales.jpg" />" alt="Deals" width="140" height="140">
                    <h2>See our latest news!</h2>
                    <p>Description.</p>
                    <p><a class="btn btn-default" href="<c:url value="construction" />" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="<c:url value="/resources/images/join.jpeg" />" alt="Join Us" width="140" height="140">
                    <h2>Join the community!</h2>
                    <p>Description.</p>
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

