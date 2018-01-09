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
        <title>Upload Audio</title>
        <!-- CSS -->
        <link rel="stylesheet" href="<c:url value="/resources/style/signin.css" />" >
    </head>
    <body>
<<<<<<< HEAD
        <jsp:include page="_navbar-login.jsp"/>
=======
        <jsp:include page="_navbar.jsp"/>
>>>>>>> master
        
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
<<<<<<< HEAD
                    <input id="btnSubmit" type="submit" value="Upload" />
                    <form:errors path="audio" style="color:red;"/>

                </form:form>
                    
                    <pre>
                        <span id="result"></span>
                    </pre>
                    
                    <script type="text/javascript" src="javascript/upload.js"></script>
=======
                    <input type="submit" value="Upload" />
                    <form:errors path="audio" style="color:red;"/>

                </form:form>
>>>>>>> master


            </div>
        </div> 

    </body>
</html>
