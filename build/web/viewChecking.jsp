<%-- 
    Document   : viewChecking
    Created on : Oct 17, 2020, 11:22 am
    Author     : griff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking Amount</title>
    </head>
    <body>
        <jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
        <jsp:setProperty name="bankapp" property="checkingAmount" param="checkingAmount" /> 
        <jsp:getProperty name="bankapp" property="checkingAmount" />
    </body>
</html>
