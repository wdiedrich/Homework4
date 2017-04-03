<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="model.Cars"%>
<% Cars car = (Cars) request.getAttribute("car"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Dream Car</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
    <div class="wrap">

            <div class="header">
                <div class="headerImg">
                    <img src="images/car.jpg" width='300' height ='150' alt='Cars' />
                </div>

                <div class="headerText">
        <h1>Update A Dream Car</h1>
        </div>
            </div>
        <div class="navcontainer">
                <ul class="navlist">
                    <li class="active"><a href="index.jsp" id="current">Home</a></li>
                    <li><a href="read">View My Dream Cars</a></li>
                    <li><a href="add">Add New Dream Car</a></li>
                    <li><a href="search.jsp">Search My Dream Cars by Make</a></li>
                </ul>
            </div>
       <div class="main">        
        
        <form name="updateForm" action="updateCar" method="get">
            
        
            <label>Make:</label>
            <br>
            <input type="text" name="make" value="<%= car.getCarMake() %>" />
            <br>
            <label>Model:</label>
            <br>
            <input type="text" name="model" value="<%= car.getCarModel() %>" />
            <br>
            <label>Color:</label>
            <br>
            <input type="text" name="color" value="<%= car.getFavColor() %>" />
            <br>
            <label>Year:</label>
            <br>
            <input type="text" name="year" value="<%= car.getCarYear() %>" />
            <br>
            <label>Type:</label>
            <br>
            <input type="text" name="type" value="<%= car.getCarType() %>" />
            <br><br>
            
            <input type="submit" name="submit" value="Update" />
        </form>
       </div>
            
        <div class="footer">
                <hr>
                Copyright 2017 SoftwareDesignAndDevelopment.com | All rights reserved
            </div>
            
            
            </div>
    </body>
</html>
