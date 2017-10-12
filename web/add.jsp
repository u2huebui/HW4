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
         <link rel="stylesheet" type="text/css" href="style_1.css">
    </head>
    
    <body>
        <h1>Add a New Class</h1>
        
        <form name="addForm" action="addClass" method="get">   
           
            <table class="add">
                <tr>
                    <td class="right">Class Name:</td>
                    <td> <input type="text" name="name" value=""/></td>
                </tr>
                
                <tr>
                    <td class="right">Professor Name:</td>
                    <td><input type="text" name="proname" value=""/></td>
                </tr>
                
                <tr>
                    <td class="right">Classroom</td>
                    <td><input type="text" name="rooms" value=""/></td>
                </tr>
                
                <tr>
                    <td class="right">Occupied :</td>
                    <td><input type="text" name="occupied" value=""/></td>
                </tr>
                
                
            </table>
            <br>
            <input type="reset" name="reset" value="Clear"/>
           
            <input type="submit" name="submit" value="Submit"/>
        </form>

    </body>
</html>
