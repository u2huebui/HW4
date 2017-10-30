<%-- 
    Document   : read
    Created on : Oct 6, 2017, 3:22:49 PM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Classes</title>
        <link rel="stylesheet" type="text/css" href="style_1.css">
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    <body>
        <div class="wrap">
            <!--header-->
            <%@ include file="includes/header.jsp" %>
            
            <!--menu-->
            <%@ include file="includes/menu.jsp" %>
        <div class="main"> <!-- main div -->
        <h1>My Classes Databases</h1>
        
  
        <%= table %>
        
        <br><br>
        
        <a href ="add">Add A New Class</a> 
        <br><br>
        <a href="search.jsp">Search Classes</a>
        </div> <!-- close the main div -->
         
         <!--footer-->
          <%@ include file="includes/footer.jsp" %>

         </div> <!-- close wrap div -->
        </body>
</html>
