<%-- 
    Document   : audioupload
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<c:url value="/resources/images/music.ico" />">

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

            </div>
        </div>

        <div class="container marketing">
            <div class="container">
                <form:form method="POST" modelAttribute="audioFileModel" enctype="multipart/form-data" class="form-signin">
                    <h2 class="form-signin-heading">Upload a file</h2>
                    <fieldset>

                        <!-- Form Name -->
                        <legend>Upload Audio</legend>


                        <!-- Text input-->
                        <div class="control-group">
                            <label class="control-label" for="title">Title</label>
                            <div class="controls">
                                <input id="title" name="title" type="text" placeholder="Name" class="input-xlarge">
                            </div>
                        </div>


                        <!-- Textarea -->
                        <div class="control-group">
                            <label class="control-label" for="Description">Description</label>
                            <div class="controls">                     
                                <textarea id="Description" name="Description"></textarea>
                            </div>
                        </div>
                    </fieldset>
                    <!-- File Upload -->

                    <label for="file">Upload a file</label>
                    <form:input type="file" path="audio" />
                    <input type="submit" value="Upload" />
                    <form:errors path="audio" style="color:red;"/>

                </form:form>


            </div>
        </div> 

    </body>
</html>
