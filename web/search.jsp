<%-- 
    Document   : search
    Created on : Oct 20, 2017, 7:39:13 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style_1.css">
        <title>Search Class</title>
    </head>
    <body>
        <div class="wrap">
            <!--header-->
            <%@ include file="includes/header.jsp" %>
            
            <!--menu-->
            <%@ include file="includes/menu.jsp" %>
        <div class="main"> <!-- main div -->
        <h1>Search Class</h1>
        <form name="searchForm" action="search" method="post">   
 
                    <input type="text" name="searchVal" value=""/>
                    <br>
                    <br>
                    <input type="submit" name="submit" value="Search"/>
        </div> <!-- close the main div -->
         
         <!--footer-->
          <%@ include file="includes/footer.jsp" %>

         </div> <!-- close wrap div -->
        </body>
</html>
