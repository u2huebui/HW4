<%-- 
    Document   : index
    Created on : Oct 6, 2017, 4:39:41 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="style_1.css">
        <title>My Classes</title> 
    </head>
    <body>
        <div class="wrap">
            <!--header-->
            <%@ include file="includes/header.jsp" %>
            
            <!--menu-->
            <%@ include file="includes/menu.jsp" %>
        <div class="main"> <!-- main div -->
        <h1>My Classes Database</h1>
        
        <a href="read">View All Classes</a>
        <br><br>
         <a href="search.jsp">Search Classes</a>
         </div> <!-- close the main div -->
         
         <!--footer-->
          <%@ include file="includes/footer.jsp" %>

         </div> <!-- close wrap div -->
    </body>
</html>
