<%-- 
    Document   : read
    Created on : Mar 5, 2017, 5:13:50 PM
    Author     : Di3drich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Dream Cars Database</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>Austin's Dream Cars</h1>
        <%= table %>
        
        <br>
        <div class="button">
        <a href="add">Add New Dream Car</a>
        </div>
    </body>
</html>
