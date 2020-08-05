<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Accident</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="row" style="height: 25px; "></div>
    <div class="row">
        <div class="col-md-12" style="text-align: center; ">
            <p>
                Login as : ${user.username}
            </p>
            <h4>Правонарушения</h4>
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
                <c:forEach items="${accidents}" var="accident">
                    <tr>
                        <th scope="row"><c:out value="${accident.id}"/></th>
                        <td><c:out value="${accident.name}"/></td>
                        <td><c:out value="${accident.text}"/></td>
                        <td><c:out value="${accident.address}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>

</body>
</html>