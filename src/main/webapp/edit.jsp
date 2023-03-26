<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 25.03.2023
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Meal</title>
</head>
<body>
<section>
    <h2><a href = "index.html"> Home </a></h2>
    <h3>Edit meal</h3>
    <hr>
    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal" scope="request" />
    <form method="post" action="meals">
        <input type="hidden" name="id" value="${meal.id}">
        <dl>
            <dt>DateTime:
            <dd><input type="datetime-local" value="${meal.date}" name="dateTime"></dd>
            </dt>
            <dt>Description:
            <dd><input type="text" value="${meal.description}" size="40" name="description"></dd>
            </dt>
            <dt>Calories:
            <dd><input type="number" value="${meal.calories}" name="calories"></dd>
            </dt>
        </dl>
        <button type="submit">Save</button>
        <button onclick="window.history.back()">Cancel</button>
    </form>
</section>

</body>
</html>
</html>
