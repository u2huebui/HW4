<%-- 
    Document   : add
    Created on : Oct 9, 2017, 9:14:22 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a New Class</title>   
    </head>
    
    <body>
        <h1>Add a New Class</h1>
        
        <form name="addForm" action="addClass" method="get">   
            
            <label>Class Name:</label>
            <input type="text" name="name" value=""/>
            <br>
            <label>Professor Name:</labrel>
            <input type="text" name="proname" value=""/>
            <br>
            <label>Classroom</label>
            <input type="text" name="rooms" value=""/>
            <br>
            <label>Occupied :</label>
            <input type="text" name="occupied" value=""/>
            <br>
            <input type="submit" name="submit" value="submit"/>
        </form>

    </body>
</html>
