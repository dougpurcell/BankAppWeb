<%-- 
    Document   : withdrawFromChecking
    Created on : Nov 8, 2020, 11:08:24 AM
    Author     : griff
--%>
<%@page import="com.BankApp.BankAppWeb" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>        

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw From Checking</title>
    </head>
    <body style="background-color:#DADBE0;">
        <jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
        
        <% try {
            BankAppWeb BA = null;
            BA = bankapp.readFromDatabase();  %>
        <div align="center">
            <h1>Welcome, <%= BA.username %>, to your Account.</h1>
            <h2>You may view your Checking and Savings Amounts, and deposit or withdraw from your checking account.</h2>
            <h3>You may also transfer from your savings to your checking.</h3>
            <p> Checking Account Balance: <%=BA.checkingAmount %>
            <br/>
            Savings Account Balance: <%= BA.savingsAmount %>
            <br/></p>
        </div>
        <%  }  catch (NullPointerException e) { %>
            <h1> DEAD </h1>
        <% } //TODO: fix null pointer. why is it happening? %>
    </body>
</html>
