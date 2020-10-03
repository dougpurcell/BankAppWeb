<%-- 
    Document   : Account
    Created on : Oct 2, 2020, 9:18:08 AM
    Author     : doug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#DADBE0;">
        <div align="center">
              
            <h1>Welcome to your Account.</h1>
            <h2>You may view your Checkings and Savings Amounts, and deposit or withdraw from your checking account.</h2>
            <h3>You may also transfer from your savings to your checking.</h3>
            Checking Account Balance: <input type="text" name="username" />
            <br/>
            Savings Account Balance: <input type="text" name="password" />
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
