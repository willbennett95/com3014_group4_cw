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
        <jsp:include page="_navbar.jsp"/>
        
        <div class="container marketing">
            <div class="container">
                
                  <h1>${pageContext.request.userPrincipal.name}</h1>
                
                <form:form method="POST" modelAttribute="audioFileModel" enctype="multipart/form-data" class="form-signin">
                    <h2 class="form-signin-heading">Upload a file</h2>
                    <label for="file">Upload a file</label>
                    <form:input type="file" path="audio" />
                    <input type="submit" value="Upload" />
                    <form:errors path="audio" style="color:red;"/>

                </form:form>


            </div>
        </div> 

    </body>
</html>
