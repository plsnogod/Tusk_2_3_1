<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
</head>
<body>
<h2>All Users</h2>
<br>
<table border="2">
    <thead>
    <tr>
        <th>Id</th>
        <th>First_Name</th>
        <th>Last_Name</th>
        <th>E-mail</th>
        <th>Rank</th>
    <tr/>
    </thead>
    <tbody>
    </tr>
    <form action="#" th:action="@{/users/update}" th:object="${user}" method="post">
        <td th:utext="${user.id}">Id</td>
        <td><input type="text" th:value="${user.name}" th:name="name" th:id="name"/></td>
        <td><input type="text" th:value="${user.lastname}" th:name="lastname" th:id="lastname"/></td>
        <td><input type="text" th:value="${user.email}" th:name="email" th:id="email"/></td>
        <td><input type="text" th:value="${user.rank}" th:name="rank" th:id="rank"/></td>
        <td colspan="2">
            <input type="hidden" name="id" id="id" th:value="${user.id}"/>
            <button type="submit" name="submit" value="value" class="link-button">Update User</button>

        </td>
    </form>
    <td colspan="4">
        <form th:action="@{/users}" th:object="${user}" method="post">
            <input type="hidden" name="id" th:value="${user.id}"/>
            <input type="hidden" name="name" th:value="${user.name}"/>
            <input type="hidden" name="lastname" th:value="${user.lastname}"/>
            <input type="hidden" name="email" th:value="${user.email}"/>
            <input type="hidden" name="rank" th:value="${user.rank}"/>
            <button type="submit">Delete User</button>
        </form>
    </td>
    </tr>
    </tbody>
</table>
<h2> Add New User </h2>
<br/>
<form action="#" th:action="@{/users}" th:object="${user}" method="post">
    <table>
        <tr>
            <td>First Name</td>
            <td><label>
                <input type="text" th:field="*{name}"/>
            </label></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><label>
                <input type="text" th:field="*{lastname}"/>
            </label></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><label>
                <input type="text" th:field="*{email}"/>
            </label></td>
        </tr>
        <tr>
            <td>Rank</td>
            <td><label>
                <input type="text" th:field="*{rank}"/>
            </label></td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" value="Add New User"/></td>
        </tr>
    </table>
</form>
</body>
</html>