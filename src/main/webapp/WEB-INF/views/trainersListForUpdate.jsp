<%-- 
    Document   : updatelist
    Created on : Nov 3, 2021, 12:31:26 PM
    Author     : IoanChatz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<style><%@include file="/WEB-INF/views/css/tablecss.css"%></style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update List</title>
    </head>
    <body>
        <div class="container">
            <h1>Trainers List</h1>
            <table border ="1" >
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>Subject</td>                    
                        <td>Email</td>                    
                        <td>UPDATE</td>
                    </tr>
                </thead>
                <c:forEach items="${listofentities}" var="trainer">
                    <tr>    
                        <td>${trainer.trainerid}</td>
                        <td>${trainer.firstname}</td>
                        <td>${trainer.lastname}</td>
                        <td>${trainer.subject}</td>
                        <td>${trainer.email}</td>
                        <td>
                            <springForm:form action="updatetrainerlist/${trainer.trainerid}" method="get">
                                <button type="submit" >SELECT</button>
                            </springForm:form>  
                        </td>
                    </tr> 
                </c:forEach>
                </select>
            </table>
            <br><br>
            <a href="/">&laquo; Return</a>
        </div>
    </body>
</html>
