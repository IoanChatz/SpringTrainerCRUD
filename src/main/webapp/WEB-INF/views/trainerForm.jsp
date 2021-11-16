<%-- 
    Document   : result
    Created on : Oct 30, 2021, 6:23:00 PM
    Author     : IoanChatz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>

<!DOCTYPE html>
<style><%@include file="/WEB-INF/views/css/mystyle.css"%></style>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Form</title>
    </head>
    <body>
        <div class="form">
        <div class="title">Welcome</div>
        <div class="subtitle">Register a Trainer!</div>
        <br>
        <springForm:form action="insertTrainer" method="post" modelAttribute="newtrainer">
            <table border="1">
                <tr>
                    <td>First Name: </td>
                    <td><springForm:input path="firstname" element="class='input'" maxlength="15"/></td>
                    <td><springForm:errors path="firstname" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><springForm:input path="lastname" element="class='input'" maxlength="15"/></td>
                    <td><springForm:errors path="lastname" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><springForm:input path="email" element="class='input'" /></td>
                    <td><springForm:errors path="email" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Subject: </td>
                    <td>
                        <springForm:select path="subject" element="class='input'">
                            <springForm:option value="-1" label="Select a Subject"/>
                            <springForm:option value="Java" label="Java"/>
                            <springForm:option value="C#" label="C#"/>
                            <springForm:option value="Python" label="Python"/>
                            <springForm:option value="Javascript" label="Javascript"/>
                        </springForm:select></td>
                    <td><springForm:errors path="subject" cssClass="error"/></td>
                </tr>
            </table>
            <br><br>
            <button type ="submit">Submit</button> 
        </springForm:form>
            <br><br>
        <a href="/">&laquo; Return</a>
        </div>
    </body>
</html>
