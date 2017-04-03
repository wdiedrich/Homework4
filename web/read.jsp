<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Dream Cars Database</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>

    <% String table = (String) request.getAttribute("table");%>

    <body>
        <div class="wrap">

            <div class="header">
                <div class="headerImg">
                    <img src="images/car.jpg" width='300' height ='150' alt='Cars' />
                </div>

                <div class="headerText">
                    <h1>Austin's Dream Cars</h1>
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
                <%= table%>
            </div>


            <div class="footer">
                <hr>
                Copyright 2017 SoftwareDesignAndDevelopment.com | All rights reserved
            </div>
        </div>
    </body>
</html>
