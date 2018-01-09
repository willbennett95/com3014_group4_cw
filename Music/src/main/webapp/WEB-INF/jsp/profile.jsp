<%-- 
    Document   : Profile Page
    Author     : Dina
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Soundbite Profile</title>  
    <% 
        Date date = new Date();
    %>
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="<c:url value="/resources/style/profile.css" />" >   
    </head>
    <body>
<<<<<<< HEAD
        <jsp:include page="_navbar-login.jsp"/>
=======
        <jsp:include page="_navbar.jsp"/>
>>>>>>> master
        
    <!-- User Profile 
    ================================================== -->
   
    <div class="container marketing">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<div class="container" style="margin-top: 100px; margin-bottom: 20px;">
	<div class="row panel">
		<div class="col-md-4 bg_blur ">
		</div>
        <div class="col-md-8  col-xs-12">
            <img class="img-thumbnail picture hidden-xs" src="<c:url value="/resources/images/genavatar.jpg" />" />
           <img class="img-thumbnail visible-xs picture_mob" src="<c:url value="/resources/images/genavatar.jpg" />"  />
           <div class="header">
<<<<<<< HEAD
                <h1>${pageContext.request.userPrincipal.name}</h1>
=======
                <h1>Loren Ipsum</h1>
>>>>>>> master
                <h4>Music Enthusiast</h4>
                <span>Some generic and benign information.</span>
           </div>
        </div>
    </div>   
    
	<div class="row nav">    
        <div class="col-md-4"></div>
        <div class="col-md-8 col-xs-12" style="margin: 0px;padding: 0px;">
            <div class="col-md-4 col-xs-4 well"><i class="fa fa-weixin fa-lg"></i> 16</div>
            <div class="col-md-4 col-xs-4 well"><i class="fa fa-heart-o fa-lg"></i> 14</div>
            <div class="col-md-4 col-xs-4 well"><i class="fa fa-thumbs-o-up fa-lg"></i> 26</div>
            <div class="col-md-4 col-xs-4 well"><p><a class ="btn btn-lg btn-primary" href="<c:url value="/upload/audio" />" role="button">Upload Audio</a></p></div>
        </div>
    </div>
</div>
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