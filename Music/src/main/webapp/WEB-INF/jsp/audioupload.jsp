<%-- 
    Document   : audioupload
    Created on : 05-Jan-2018, 13:39:56
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload song</title>
    </head>
    <body>
        <h1>Music file upload</h1>
<<<<<<< HEAD


        <form:form method="POST" modelAttribute="audioFileModel" enctype="multipart/form-data">


            <label for="file">Upload a file</label>

            <form:input type="file" path="audio" />
            
            <form:errors path="audio" style="color:red;"/>
            <input type="submit" value="Upload" />


        </form:form>



=======
        
>>>>>>> parent of 101453f... Merge branch 'File-upload'
    </body>
</html>
