<%-- 
    Document   : homepage
    Created on : Nov 2, 2021, 9:09:16 PM
    Author     : IoanChatz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style><%@include file="/WEB-INF/views/css/homecss.css"%></style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
    </head>
    <body>
        <div class="home">
        <h1>Welcome!</h1>    
        <div class="add"><a href="callInsertTrainerForm">Add</a> a Trainer.</div>
         <div class="delete"><a href="callDeleteTrainerList">Delete</a> a Trainer.</div>
         <div class="update"><a href="callUpdateTrainerList">Update</a> a Trainer.</div>
         <div class="read"><a href="readTrainerList">Read</a> the List of Trainers.</div>
        </div>
    </body>
</html>
