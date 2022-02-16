<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 16.02.2022
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="container-fluid">


    <!-- Page Heading -->
    <link href="${pageContext.request.contextPath}/theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}css/sb-admin-2.css" rel="stylesheet">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <th>Nazwa użytkownika</th>
                        <th>Email</th>
                        <th>Akcja</th>
                    </tr>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.userName}</td>
                            <td>${user.email}</td>
                            <td>
                                <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                                <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edit</a>
                                <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
