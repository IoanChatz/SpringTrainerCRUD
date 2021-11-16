<%-- 
    Document   : readalltrainers
    Created on : Nov 3, 2021, 3:53:08 PM
    Author     : IoanChatz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<style><%@include file="/WEB-INF/views/css/tablecss.css"%></style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Trainers</title>
    </head>
    <body>
        <div class="container">
            <h1>Trainers List</h1>
            <table border ="2" >
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>Subject</td>                    
                        <td>Email</td>                    
                    </tr>
                </thead>
                    <c:forEach items="${listoftrainers}" var="trainer">
                        <tbody>
                        <tr>    
                            <td>${trainer.trainerid}</td>
                            <td>${trainer.firstname}</td>
                            <td>${trainer.lastname}</td>
                            <td>${trainer.subject}</td>
                            <td>${trainer.email}</td>
                        </tr> 
                        </tbody>
                    </c:forEach>
            </table>
            <br><br>
            <a href="/">&laquo; Return</a>
        </div>
    </body>
</html>
