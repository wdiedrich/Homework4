<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Search Dream Cars</title>
    </head>
    <body>
        <div class="wrap">
            <%@ include file="includes/header.jsp" %>
            <%@ include file="includes/menu.jsp" %>
            <h1>Search Dream Cars</h1>

            <div class="main">
                <form name="searchForm" action="search" method="get">

                    <input type="text" name="searchVal" value="" />
                    <br>
                    <input type="submit" name="submit" value="Search"/>
            </div>

            <%@ include file="includes/footer.jsp" %>
        </div>
    </body>
</html>
