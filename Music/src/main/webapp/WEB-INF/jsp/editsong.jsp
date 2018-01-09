<%-- 
    Document   : editsong
    Created on : 09-Jan-2018, 10:13:49
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Audio Page</title>
    </head>
    <body>
        <h1>Edit audio</h1>
        
         <form:form method="POST" modelAttribute="songtoedit">

        <legend>Edit Audio</legend>

        <label for="title">Title</label>
        <form:input type="text" path="title" placeholder="Title" />

        <label  for="Artist">Artist</label>
        <form:input type="text" path="artist" placeholder="Artist" />

        <input type="submit" value="Update" />

    </form:form>
    </body>
</html>
