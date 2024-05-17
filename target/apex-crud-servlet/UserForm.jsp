<%--
  Created by IntelliJ IDEA.
  User: itmas
  Date: 5/17/2024
  Time: 8:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>Users Management</h1>
    <h2>
        <a href="/new">Add New User</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/list">List All Users</a>

    </h2>
</center>
<div align="center">
    <c:if test="${user != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${user != null}">
                            Edit User
                        </c:if>
                        <c:if test="${user == null}">
                            Add New User
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>
                <tr>
                    <th>UserId: </th>
                    <td>
                        <input type="text" name="userId" size="45"
                               value="<c:out value='${user.userId}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>UserName: </th>
                    <td>
                        <input type="text" name="userName" size="45"
                               value="<c:out value='${user.userName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Email: </th>
                    <td>
                        <input type="text" name="email" size="5"
                               value="<c:out value='${user.email}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Password: </th>
                    <td>
                        <input type="text" name="password" size="5"
                               value="<c:out value='${user.password}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Designation: </th>
                    <td>
                        <input type="text" name="designation" size="5"
                               value="<c:out value='${user.designation}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>DeptmsCode: </th>
                    <td>
                        <input type="text" name="deptmsCode" size="5"
                               value="<c:out value='${user.deptmsCode}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
