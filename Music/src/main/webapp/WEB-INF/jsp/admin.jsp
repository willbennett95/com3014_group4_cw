<%-- 
    Document   : admin
    Created on : 07-Jan-2018, 00:48:28
    Author     : Will
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body>
        <h2>Administrator Area</h2>
        <h3>Welcome: ${pageContext.request.userPrincipal.name}</h3>
    </body>
</html>
