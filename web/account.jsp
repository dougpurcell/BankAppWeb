<%-- 
    Document   : Account
    Created on : Oct 2, 2020, 9:18:08 AM
    Author     : doug
--%>
<%@page import="com.BankApp.BankAppWeb" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BankApp Account</title>
    </head>
    <body style="background-color:#DADBE0;">
        <jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
        <jsp:setProperty name="bankapp" property="username" param="user" />
        
        <% BankAppWeb bankapp1 = null;
            bankapp1 = bankapp.readFromDatabase();    
        %>
           
        <div align="center">
            <h1>Welcome, <%= bankapp1.username %>, to your Account.</h1>
            <h2>You may view your Checking and Savings Amounts, and deposit or withdraw from your checking account.</h2>
            <h3>You may also transfer from your savings to your checking.</h3>
            <p> Checking Account Balance: <%=bankapp1.checkingAmount %>
            <br/>
            Savings Account Balance: <%= bankapp1.savingsAmount %>
            <br/></p>
        </div>
            
        <div align="center"> 
            <form action="withdrawFromChecking.jsp" >
                I'd like to Withdraw From Checking. <input type="submit" Value="Withdraw" />
                <input type="hidden" name="username" value="<%= bankapp1.username %>" > 
                <input type="hidden" name="checkingAmount" value="<%= bankapp1.checkingAmount %>" > 
                <input type="hidden" name="savingsAmount" value="<%= bankapp1.savingsAmount %>" >
            </form>
        </div>
    </body>
</html>
