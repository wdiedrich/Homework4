<%-- 
    Document   : add
    Created on : Mar 26, 2017, 5:19:59 PM
    Author     : Di3drich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Dream Car</title>
    </head>
    <body>
        <h1>Add A New Dream Car</h1>
        
        <form name="addForm" action="addFriend" method="get">
            
            <label>Make</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Model</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Color</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Year</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Type</label>
            <input type="text" name="name" value="" />
            <br>
            <input type="submit" name="submit" value="Submit" />
        </form>
    </body>
</html>