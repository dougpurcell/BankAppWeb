<%-- 
    Document   : update
    Created on : Oct 17, 2020, 10:37:43 AM
    Author     : griff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Amounts</title>
    </head>
    <body>
        <jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
        <jsp:setProperty name="bankapp" property="checkingAmount" param="checkingAmount" />
        <jsp:setProperty name="bankapp" property="savingsAmount" param="savingsAmount" />
    </body>
</html>
