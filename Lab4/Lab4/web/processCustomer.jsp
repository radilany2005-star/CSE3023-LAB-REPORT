<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 1:00:55 pm
    Author     : radil
--%>



<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
// Fixed price
final double price = 10.0;
// Retrieve form data
String cust_no = request.getParameter("customerCode");
String cust_type = request.getParameter("customerType");
int quantity = 0;
try {
quantity = Integer.parseInt(request.getParameter("quantity"));
} catch (Exception e) {
quantity = 0;
}

//Business logic
double total = 0;
String message ="";

if (cust_type.equals("1") && quantity > 100){
message = "You're entitled to 10% discount";
total = quantity * price *0.9;
    }
    else if (cust_type.equals("2") && quantity > 100) {
message = "You're entitled to 25% discount";
total = quantity * price * 0.75;
} 
else {
message = "You're not entitled to any discount";
total = quantity * price;
}
// Display customer type
String custTypeDisplay = cust_type.equals("1") ?
"Normal Customer" : "Privilege Customer";

%>

        <div class="container">
    <div class="card">
        <h2 class="form-title">Customer Result</h2>
        
         <div class="result-group">
            <label>Customer Code:</label>
            <p><%= cust_no %></p>
        </div>
        
       <div class="result-group">
            <label>Quantity:</label>
            <p><%= quantity %></p>
        </div>

        <div class="result-group">
            <label>Status:</label>
            <p><%= message %></p>
        </div>
        
        <div class="result-group">
            <label>Customer Type:</label>
            <p><%
                    if ("1".equals(cust_type)) {
                        out.print("Normal Customer");
                    } else if ("2".equals(cust_type)) {
                        out.print("Privilege Customer");
                } else {
                message = "No discount applied";
                total = quantity * price;
            }
                %></p>
        </div>

        <div class="result-group">
            <label>Total Price:</label>
            <p>RM <%= total %></p>
        </div>

        <br>
        <a href="customer.html">
            <button class="btn-back">Back</button>
        </a>
        
    </div>
</div>

    </body>
</html>
