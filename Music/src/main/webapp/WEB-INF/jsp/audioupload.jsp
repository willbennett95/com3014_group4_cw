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


        <form:form method="POST" modelAttribute="audioFile" enctype="multipart/form-data">


            <label for="file">Upload a file</label>

            <form:input type="file" path="audio" />

            <form:errors path="audio" />


            <input type="submit" value="Upload" >

        </form:form>



    </body>
</html>
