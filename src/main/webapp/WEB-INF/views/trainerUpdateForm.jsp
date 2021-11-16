<%-- 
    Document   : trainerupdateform
    Created on : Nov 3, 2021, 2:19:34 PM
    Author     : IoanChatz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<!DOCTYPE html>
<style><%@include file="/WEB-INF/views/css/mystyle.css"%></style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainer</title>
    </head>
    <body>
        <<div class="form">
        <div class="subtitle">Update a Trainer!</div>
        <springForm:form action="${pageContext.request.contextPath}/updateTrainerFromDb" method="post" modelAttribute="trainer">
            <table border="1">
                <springForm:hidden path="trainerid"/>
                <tr>
                    <td>First Name: </td>
                    <td><springForm:input path="firstname" maxlength="15"/></td>
                    <td><springForm:errors path="firstname" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><springForm:input path="lastname" maxlength="15"/></td>
                    <td><springForm:errors path="lastname" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><springForm:input path="email" /></td>
                    <td><springForm:errors path="email" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Subject: </td>
                    <td>
                        <springForm:select path="subject">
                            <springForm:option value="-1" label="Select a Subject"/>
                            <springForm:option value="Java" label="Java"/>
                            <springForm:option value="C#" label="C#"/>
                            <springForm:option value="Python" label="Python"/>
                            <springForm:option value="Javascript" label="Javascript"/>
                        </springForm:select></td>
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
