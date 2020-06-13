<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Simple Spring Boot Board</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>DB SELECT TEST</h2>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>OID</th>
            <th>ACCOUNT</th>
            <th>NAME</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${userList.content}">
            <tr>
                <td>${user.OID }</td>
                <td><a href="/questions/view/${user.OID}">${user.ACCOUNT}</a></td>
                <td>${user.NAME}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>