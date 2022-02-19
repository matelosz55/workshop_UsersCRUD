
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <%@ include file="/meta.jsp" %>
    <title>Show</title>
    <%@ include file="/styles.jsp"%>
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="container-fluid">


    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Użytkownik nr ${param.id}:</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <th>Nazwa użytkownika</th>
                        <th>Email</th>
                    </tr>


                    <tr>
                        <td>${param.id} </td>
                        <td>${user.userName} </td>
                        <td>${user.email} </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
