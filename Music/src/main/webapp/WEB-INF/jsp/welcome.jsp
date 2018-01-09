<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Soundbite</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- JavaScript -->

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

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <a href="/Music/logout">Log Out</a>

                <h2>Welcome ${pageContext.request.userPrincipal.name} | <a href="/Music/logout">Log Out</a></h2>

            </c:if>


            <!-- FOOTER -->
            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
                <p><%= date%> </p>
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

