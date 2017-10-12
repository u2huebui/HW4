<%-- 
    Document   : updateForm
    Created on : Oct 12, 2017, 2:24:00 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Classes" %>
<% Classes classes = (Classes) request.getAttribute("classes"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Class</title>
        <link rel="stylesheet" type="text/css" href="style_1.css">
    </head>
     <body>
        <h1>Update A Class Record</h1>
        
        <form name="updateForm" action="updateClass" method="get">   
            
            <table class="update">
                
                <tr>
                    <td class="right">Class ID:</td>
                    <td> <input type="text" name="name" value="<%=classes.getClassID() %>"/></td>
                </tr>
                
                <tr>
                    <td class="right">Class Name:</td>
                    <td> <input type="text" name="name" value="<%=classes.getClassName() %>"/></td>
                </tr>
                </tr>
                
                <tr>
                    <td class="right">Professor Name:</td>
                    <td><input type="text" name="proname" value="<%=classes.getProfessorName() %>"/></td>
                </tr>
                
                <tr>
                    <td class="right">Classroom</td>
                    <td><input type="text" name="rooms" value="<%=classes.getClassroom() %>"/></td>
                </tr>
                
                <tr>
                    <td class="right">Occupied :</td>
                    <td><input type="text" name="occupied" value="<%=classes.getOccupied() %>"/></td>
                </tr>  
            </table>
                <br>
            <input type="reset" name="reset" value="Clear"/>
           
            <input type="submit" name="submit" value="Submit"/>
        </form>


    </body>
</html>