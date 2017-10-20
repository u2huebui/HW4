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
        <h1>My Classes Databases</h1>
        
  
        <%= table %>
        
        <br><br>
        
        <a href ="add">Add A New Friend</a>
    </body>
</html>
