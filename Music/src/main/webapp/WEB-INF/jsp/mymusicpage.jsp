<%-- 
    Document   : mymusicpage
    Created on : 09-Jan-2018, 10:14:23
    Author     : Emi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table>
            <thead>
                <tr>
                    <th>artist</th>
                    <th>title</th>
                   
                    <th width="100"></th>
                    <th width="100"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${songsByUser}" var="song">
                    <tr>
                        <td>${song.artist}</td>
                        <td>${song.title}</td>
                        <td><a href="<c:url value='/mymusic/edit-audio-${song.id}' />" > edit</a></td>
                        <td><a href="<c:url value='/mymusic/delete-audio-${song.id}' />" >delete</a></td>
                    </tr>
                </c:forEach>
                    
                     <td><a href="<c:url value='/mymusic/audio-${username}' />" > Add audio</a></td>
            </tbody>
        </table>

    </body>
</html>
