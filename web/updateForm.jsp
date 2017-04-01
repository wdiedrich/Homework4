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
    <div class="centerText">
        <h1>Update A Dream Car</h1>
        </div>
        
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
            
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Update" />
        </form>
    </body>
</html>
