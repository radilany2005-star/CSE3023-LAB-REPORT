<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 3:52:14 pm
    Author     : radil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
// Retrieve form data
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverageType");
            String ncdStr = request.getParameter("ncd");
            String marketPrice = request.getParameter("marketPrice");
            double price = 0;
            double ncd = 0;
            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncd = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncd = 0;
            }
// Business Logic
            double rate = 0;
            String coverageDisplay = "";
            if ("comprehensive".equals(coverage)) {
                rate = 0.05; // 5%
                coverageDisplay = "Comprehensive";
            } else {
                rate = 0.03; // 3%
                coverageDisplay = "Third Party";
            }
//Base insurance calculation
            double insurance = price * rate;
// Apply NCD discount
            double discount = insurance * ncd;
            double afterNCD = insurance - discount;
// Add 8% SST
            double sst = afterNCD * 0.08;
            double finalAmount = afterNCD + sst;
        %>
        
          <div class="container">
    <div class="card">
        <h2 class="form-title">Customer Result</h2>
        
         <div class="result-group">
            <label>IC No:</label>
            <p><%= icno %></p>
        </div>
        
       <div class="result-group">
            <label>Name:</label>
            <p><%= name %></p>
        </div>

        <div class="result-group">
            <label>Market Price (RM):</label>
            <p><%= marketPrice %></p>
        </div>
        
        <div class="result-group">
            <label>Coverage Type:</label>
            <p><%= coverage %></p>
        </div>
        
        <div class="result-group">
            <label>NCD</label> 
            <p><%= ncd %></p>
            
        </div>
            
             <div class="result-group">
            <label>Base Insurance</label> 
            <p><%= insurance %></p>
            
        </div>
            
             <div class="result-group">
            <label>NCD Discount</label> 
            <p><%= discount %></p>
            
        </div>
            
             <div class="result-group">
            <label>After NCD</label> 
            <p><%= afterNCD %></p>
            
        </div>
            
             <div class="result-group">
            <label>SST(8%)</label> 
            <p><%= sst %></p>
            
        </div>

        <div class="result-group">
            <label>Final Insurance Amount:</label>
            <p>RM <%= finalAmount %></p>
        </div>

        <br>
        <a href="customer.html">
            <button class="btn-back">Back</button>
        </a>
        
    </div>
</div>
    </body>
</html>
