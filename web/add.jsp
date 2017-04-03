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
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div class="wrap">


            <div class="headerImg">
                <img src="images/car.jpg" width='300' height ='150' alt='Cars' />
            </div>


            <div class="headerText">
                <h1>Add A New Dream Car</h1>
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
                <form name="addForm" action="addCar" method="get">

                    <label>Make:</label>
                    <br>
                    <input type="text" name="make" value="" />
                    <br>
                    <label>Model:</label>
                    <br>
                    <input type="text" name="model" value="" />
                    <br>
                    <label>Color:</label>
                    <br>
                    <input type="text" name="color" value="" />
                    <br>
                    <label>Year:</label>
                    <br>
                    <input type="text" name="year" value="" />
                    <br>
                    <label>Type:</label>
                    <br>
                    <input type="text" name="type" value="" />
                    <br><br>

                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />
                </form>
            </div> 

            <div class="footer">
                <hr>
                Copyright 2017 SoftwareDesignAndDevelopment.com | All rights reserved
            </div>   


        </div>
    </body>
</html>
