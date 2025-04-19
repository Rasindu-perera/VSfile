<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="com.example.restaurant.model.Waiter" %>
<%@ page import="com.example.restaurant.model.Order" %>
<%@ page import="com.example.restaurant.dao.OrderDAO" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Waiter Dashboard</title>
</head>
<body>
<jsp:include page="includes/header.jsp" />

<div class="container mt-5">
    <h2>Welcome, <c:out value="${waiter.name}"/>!</h2>
    <h4>Manage Table Reservations</h4>
    
    <form action="reserveTable" method="post">
        <div class="form-group">
            <label for="tableNumber">Table Number:</label>
            <input type="number" class="form-control" id="tableNumber" name="tableNumber" required>
        </div>
        <input type="hidden" name="waiterId" value="${waiter.id}">
        <button type="submit" class="btn btn-primary">Reserve Table</button>
    </form>

    <h4 class="mt-5">Current Orders</h4>
    <table class="table">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Table Number</th>
                <th>Food Items</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="${orders}">
                <tr>
                    <td><c:out value="${order.id}"/></td>
                    <td><c:out value="${order.tableNumber}"/></td>
                    <td><c:out value="${order.foodItems}"/></td>
                    <td><c:out value="${order.status}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="includes/footer.jsp" />

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>