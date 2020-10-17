<%-- 
    Document   : Login
    Created on : Oct 2, 2020, 9:17:42 AM
    Author     : doug
--%>
<jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BankApp Login</title>
    </head>
    <body style="background-color:#DADBE0;">
        <div align="center">
            
            <form action="account.jsp">
                
                <h1>Welcome to the Bank App!</h1>
                <h2>Please Login Below:</h2>
                Username: <input type="text" name="username" />
                <br/>
                Password : <input type="text" name="password" />
                <br/>
                <input type="submit" value="Login" />
                <% bankapp.writeToDatabase(); %>
            </form>
        </div>
    </body>
</html>
