<%-- 
    Document   : Account
    Created on : Oct 2, 2020, 9:18:08 AM
    Author     : doug
--%>
<jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BankApp Account</title>
    </head>
    <body style="background-color:#DADBE0;">
        
        <jsp:setProperty name="bankapp" property="username" param="username" />
        <jsp:setProperty name="bankapp" property="password" param="password" />
        <div align="center">
              
            <h1>Welcome to your Account.</h1>
            <h2>You may view your Checking and Savings Amounts, and deposit or withdraw from your checking account.</h2>
            <h3>You may also transfer from your savings to your checking.</h3>
            Checking Account Balance: <jsp:getProperty name="bankapp" property="checkingAmount" />
            <br/>
            Savings Account Balance: <jsp:getProperty name="bankapp" property="savingsAmount" />
            <br/>
                
        </div>
        <div align="center">
            <form action="update.jsp">
                I want to: <select name ="action">
                    <option value="withdraw">Withdraw From Checking</option>
                    <option value="deposit">Deposit Into Checking</option>
                    <option value="transfer">Transfer from Saving to Checking</option>
                    
                    
                    
                </select>
                <br />
                Amount: <input type="text" name="updateAmount" />
                <br/>
                <input type="submit" Value="Update" />
            </form>
        </div>
    </body>
</html>
