<%-- 
    Document   : success
    Created on : 06-Jan-2018, 17:19:08
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload Success</title>
    </head>
    <body>

        File  <strong>${fileName}</strong> uploaded successfully.
        <br/><br/>
        
        <a href="<c:url value='Music/upload/audio' />">go back</a>	

    </body>
</html>
