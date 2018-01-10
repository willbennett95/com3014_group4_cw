<%-- 
    Document   : success
    Created on : 06-Jan-2018, 17:19:08
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload Success</title>
    </head>
    <body>

        <form:form method="POST" modelAttribute="audio">

            <h2>Upload a file</h2>

        <legend>Upload Audio</legend>

        <label for="title">Title</label>
        <form:input type="text" path="title" placeholder="Title" />

        <label  for="Artist">Artist</label>
        <form:input type="text" path="artist" placeholder="Artist" />

        <input type="submit" value="UploadDetails" />

    </form:form>

    File  <strong>${audioName}</strong> uploaded successfully.
    <br/><br/>

    <a href="<c:url value='/mymusic/list-${username}' />">go back</a>	

</body>
</html>
