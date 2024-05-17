<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.sql.Connection"
         import="java.sql.PreparedStatement"
         import="java.sql.ResultSet"
%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<jsp:useBean id="listOfUser" scope="request" type="java.util.List" />
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/new">Add New User</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/list">List All Users</a>
    </h2>
</center>
<div align="center">

    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>User Id</th>
            <th>Email</th>
            <th>Designation</th>
            <th>Departments Code</th>
            <th>Actions</th>
        </tr>
        <c:if test="${not empty listOfUser}">
            <%--@elvariable id="listOfUser" type="java.util.List"--%>
            <c:forEach  items="${listOfUser}" var="user">
                <tr>
                    <c:if test="${user == null}">
                    <td><c:out value="${user.id}" /></td>
                    </c:if>
                    <td><c:out value="${user.userName}" /></td>
                    <td><c:out value="${user.userId}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.designation}" /></td>
                    <td><c:out value="${user.deptmsCode}" /></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/edit?id=<c:out value='${user.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/delete?id=<c:out value='${user.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
</body>
</html>
