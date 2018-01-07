<%-- 
    Document   : audioupload
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="images/music.ico">
        
        <title>Upload Audio</title>
        
        <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/carousel.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/signin.css" />" >
        
        
    </head>
    <body>
        <!-- NAVBAR -->
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
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<c:url value="/home" />">Home</a></li>
                <li><a href="<c:url value="/store" />">Collection</a></li>
                <li><a href="<c:url value="/profile" />">My Profile</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

<<<<<<< HEAD
      </div>
    </div>
                
              <div class="container marketing">
                  <div class="container">
                      <form class="form-signin">
                          <h2 class="form-signin-heading">Upload a file</h2>
                          <fieldset>
=======
        <form:form method="POST" modelAttribute="audioFile" enctype="multipart/form-data">
>>>>>>> parent of 8f57c73... fixed missing file error validation

                <!-- Form Name -->
                <legend>Upload Video</legend>

<<<<<<< HEAD
                <!-- Text input-->
               <div class="control-group">
                <label class="control-label" for="title">Title</label>
                <div class="controls">
                <input id="title" name="title" type="text" placeholder="Name" class="input-xlarge">
                </div>
               </div>
=======
            <label for="file">Upload a file</label>

            <form:input type="file" path="audio" />

            <form:errors path="audio" />


            <input type="submit" value="Upload" >

        </form:form>

>>>>>>> parent of 8f57c73... fixed missing file error validation

<!-- Textarea -->
               <div class="control-group">
                <label class="control-label" for="Description">Description</label>
                <div class="controls">                     
                <textarea id="Description" name="Description">Description</textarea>
                </div>
               </div>
                        </fieldset>
<!-- File Upload -->
                          <form:form method="POST" modelAttribute="audioFile" enctype="multipart/form-data">
                            <label for="file">Upload a file</label>
                            <form:input type="file" path="audio" />
                            <form:errors path="audio" />
                            <input type="submit" value="Upload" >
                          </form:form>
                      </form>
                  </div>
              </div> 

    </body>
</html>
