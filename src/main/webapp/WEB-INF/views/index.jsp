<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Accident</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<c:forEach items="${accidents}" var="accident">
    <c:out value="${accident.name}"/></br>
</c:forEach>
<!--
<div class="container">
    <div class="row" style="height: 25px; "></div>
    <div class="row">
        <div class="col-md-12" style="text-align: center; ">
            <h3>Правонарушения</h3>
        </div>
    </div>
    <div class="row" style="height: 25px; "></div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Текст</th>
                    <th scope="col">Адрес</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${accidents}" var="entry">
                    <tr>
                        <th scope="row">${entry.value.id}</th>
                        <td>${entry.value.name}</td>
                        <td>${entry.value.text}</td>
                        <td>${entry.value.address}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>

-->
</body>
</html>