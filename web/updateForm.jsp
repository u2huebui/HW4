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
        <h1>Update A Class</h1>
        
        <form name="updateForm" action="updateClass" method="get">   
            
            <table class="update">
                
                <tr>
                    <td>Class ID:</td>
                    <td> <input type="text" name="ID" value="<%=classes.getClassID() %>"/></td>
                </tr>
                
                <tr>
                    <td>Class Name:</td>
                    <td> <input type="text" name="name" value="<%=classes.getClassName() %>"/></td>
                </tr>
                </tr>
                
                <tr>
                    <td>Professor Name:</td>
                    <td><input type="text" name="professor" value="<%=classes.getProfessorName() %>"/></td>
                </tr>
                
                <tr>
                    <td>Classroom:</td>
                    <td><input type="text" name="classrooms" value="<%=classes.getClassroom() %>"/></td>
                </tr>
                
                <tr>
                    <td>Occupied :</td>
                    <td><input type="text" name="occupied" value="<%=classes.getOccupied() %>"/></td>
                </tr>  
            </table>
                <br>
            <input type="reset" name="reset" value="Clear"/>
           
            <input type="submit" name="submit" value="Update"/>
        </form>


    </body>
</html>
