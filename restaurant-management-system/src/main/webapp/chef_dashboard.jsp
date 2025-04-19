<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chef Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <jsp:include page="includes/header.jsp" />

    <div class="container mt-5">
        <h2>Orders to Prepare</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Table Number</th>
                    <th>Food Item</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Fetch orders from the database
                    List<Order> orders = (List<Order>) request.getAttribute("orders");
                    if (orders != null) {
                        for (Order order : orders) {
                %>
                <tr>
                    <td><%= order.getId() %></td>
                    <td><%= order.getTableNumber() %></td>
                    <td><%= order.getFoodItem() %></td>
                    <td><%= order.getStatus() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4" class="text-center">No orders available</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <jsp:include page="includes/footer.jsp" />
    
    <script src="js/script.js"></script>
</body>
</html>